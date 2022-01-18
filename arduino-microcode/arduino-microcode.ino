#include "Arduino.h"

static const char * MY_VERSION = "1.0";

// IO lines for the EEPROM device control
// Pins D2..D9 are used for the data bus.
#define WE              A0
#define CE              A1
#define OE              A2
#define ADDR_CLK_HI     A3
#define ADDR_CLK_LO     A4
#define ADDR_DATA       A5

#define RED_LED         13


void burnMicrocodeRoms();
void disableSoftwareWriteProtect();
byte readByte(uint32_t address);
bool burnByte(byte value, uint32_t address);
bool burnBlock(byte data[], uint32_t len, uint32_t address);
bool waitForWriteCycleEnd(byte lastValue);
void setByte(byte value, uint32_t address);
void setAddress(uint32_t address);
void setAddressRegister(uint8_t clkPin, byte addr);
bool writeData(byte data[], uint32_t len, uint32_t address);
void setDataBusMode(uint8_t mode);
byte readDataBus();
void writeDataBus(byte data);

// Set the status of the device control pins
static void enableChip()       { digitalWrite(CE, LOW); }
static void disableChip()      { digitalWrite(CE, HIGH);}
static void enableOutput()     { digitalWrite(OE, LOW); }
static void disableOutput()    { digitalWrite(OE, HIGH);}
static void enableWrite()      { digitalWrite(WE, LOW); }
static void disableWrite()     { digitalWrite(WE, HIGH);}


void setup() {
    // The address control pins are always outputs.
    pinMode(ADDR_DATA, OUTPUT);
    pinMode(ADDR_CLK_LO, OUTPUT);
    pinMode(ADDR_CLK_HI, OUTPUT);
    digitalWrite(ADDR_DATA, LOW);
    digitalWrite(ADDR_CLK_LO, LOW);
    digitalWrite(ADDR_CLK_HI, LOW);
    DDRB |= 0x1c; // Set D10..D12 as outputs

    // To save time, the setAddress only writes the hi byte if it has changed.
    // The value used to detect the change is initialized to a non-zero value,
    // so set an initial address to avoid the the case where the first address
    // written is the 'magic' initial address.
    setAddress(0x0000);

    // Define the data bus as input initially so that it does not put out a
    // signal that could collide with output on the data pins of the EEPROM.
    setDataBusMode(INPUT);

    // Define the EEPROM control pins as output, making sure they are all
    // in the disabled state.
    digitalWrite(OE, HIGH);
    pinMode(OE, OUTPUT);
    digitalWrite(CE, HIGH);
    pinMode(CE, OUTPUT);
    digitalWrite(WE, HIGH);
    pinMode(WE, OUTPUT);

    pinMode(RED_LED, OUTPUT);

    Serial.begin(115200);
    Serial.print("\nBurning NQSAP-PCB microcode version ");
    Serial.println(MY_VERSION);
    disableSoftwareWriteProtect();
    delay(100);
    burnMicrocodeRoms();
    Serial.println(F("burn complete"));
}

void loop() {
    digitalWrite(RED_LED, HIGH);
    delay(500);
    digitalWrite(RED_LED, LOW);
    delay(500);
}

void fail() {
    Serial.println(F("Write FAILED"));
    while (1) {
      digitalWrite(RED_LED, HIGH);
      delay(200);
      digitalWrite(RED_LED, LOW);
      delay(200);
      digitalWrite(RED_LED, HIGH);
      delay(200);
      digitalWrite(RED_LED, LOW);
      delay(200);
      digitalWrite(RED_LED, HIGH);
      delay(200);
      digitalWrite(RED_LED, LOW);
      delay(600);
    }
}

// Get rid of Arduino macro definitions that conflict with control signal names
#undef PI

//               ROM2    ROM1    ROM0
//             +------++------++------+
// ROM2        WWWWRRRR7654321076543210
#define W3   0b100000000000000000000000L  // 1 Write bit 3
#define W2   0b010000000000000000000000L  // 1 Write bit 2
#define W1   0b001000000000000000000000L  // 1 Write bit 1
#define W0   0b000100000000000000000000L  // 1 Write bit 0
#define R3   0b000010000000000000000000L  // 8 Read bit 3
#define R2   0b000001000000000000000000L  // 8 Read bit 2
#define R1   0b000000100000000000000000L  // 8 Read bit 1
#define R0   0b000000010000000000000000L  // 8 Read bit 0

// ROM1
#define FN   0b000000001000000000000000L  // 80 load Negative flag
#define FV   0b000000000100000000000000L  // 40 load oVerflow flag
#define FZ   0b000000000010000000000000L  // 20 load Zero flag
#define FC   0b000000000001000000000000L  // 10 load Carry flag
#define FB   0b000000000000100000000000L  // 08 use bus values to load Flags
#define SCE  0b000000000000010000000000L  // 04 SP Count Enable
#define C1   0b000000000000001000000000L  // 02 Carry source select 1
#define C0   0b000000000000000100000000L  // 01 Carry source select 0

// ROM0
#define CS   0b000000000000000010000000L  // 80 Carry flag force Set
#define CC   0b000000000000000001000000L  // 40 Carry flag force Clear
#define M1   0b000000000000000000100000L  // 20 Memory select 1
#define M0   0b000000000000000000010000L  // 10 Memory select 0
#define LF   0b000000000000000000001000L  // 08 ALU Force subtraction
#define JE   0b000000000000000000000100L  // 04 conditional Jump Enable
#define N    0b000000000000000000000010L  // 02 Next Instruction (clear RC)
#define PI   0b000000000000000000000001L  // 01 PC Increment


// Microinstruction bit aliases
#define RPI   RP | PI       // Read PC and post increment
#define FA    RPI | WM      // Fetch argument (operand) step 1
#define SD    SCE | C0      // Stack Pointer decrement
#define SI    SCE | C1      // Stack Pointer increment
#define RDZ   RD | C0       // Read D+zero (read D)
#define RDX   RD            // Read D+X
#define RDY   RD | C1       // Read D+Y
#define CL    0             // 0 - Carry source ALU
#define CI    C0            // 1 - Carry source ALU inverted
#define CH    C1            // 2 - Carry source shift right (B lsb)


#define WR   W0             // 1 Write RAM
#define WM   W1             // 2 Write MAR (Memory Address)
#define WX3  W1|W0          // 3
#define WX4  W2             // 4
#define WX5  W2|W0          // 5
#define WS   W2|W1          // 6 Write SP
#define WP   W2|W1|W0       // 7 Write PC (Jump)
#define WA   W3             // 8 Write A
#define WB   W3|W0          // 9 Write B
#define WO   W3|W1          // A Write Output
#define WX   W3|W1|W0       // B Write X
#define WY   W3|W2          // C Write Y
#define WD   W3|W2|W0       // D Write D (Adder)
#define WXE  W3|W2|W1       // E
#define WI   W3|W2|W1|W0    // F Write IR

#define RR   R0             // 1 Read RAM
#define RX2  R1             // 2
#define RX3  R1|R0          // 3
#define RX4  R2             // 4
#define RX5  R2|R0          // 5
#define RS   R2|R1          // 6 Read SP
#define RP   R2|R1|R0       // 7 Read PC
#define RA   R3             // 8 Read A
#define RB   R3|R0          // 9 Read B
#define RH   R3|R1          // A Read H (sHift register (ALU B)
#define RX   R3|R1|R0       // B Read X
#define RY   R3|R2          // C Read Y
#define RD   R3|R2|R0       // D Read D
#define RL   R3|R2|R1       // E Read L (ALU result)
#define RF   R3|R2|R1|R0    // Read Flags

#define FF    FC|FZ|FV|FN   // Set all flags
#define FCZN  FC|FV|FN      // Set C,V,N flags
#define FZN   FZ|FN         // Set Z,N flags

// Note that the carry clear (CC) and carry set (CS) signals force a value of the
// carry flag for use by the ALU and H register.  The ALU uses negative logic for the
// flag, so clear=1 and set=0. There is an inverter before the ALU carry input, so the CC
// signal will present a one to the H register, but will present a zero to the ALU.

#define CMP   RL|FCZN|CS    // compare operation reads ALU into flags register during sub
#define ASL   RL|FCZN|CI|CC // use the ALU A+A op, set CZN flags, set carry from ALU, clr ALU carry in
#define ROL   RL|FCZN|CI    // use the ALU A+A op, set CZN flags, set carry from ALU, carry in to ALU
#define LSR   RH|FCZN|CH|CC // use H right shifter, set CZN flags, set carry from H, clr H carry in
#define ROR   RH|FCZN|CH    // use H right shifter, set CZN flags, set carry from H, carry in to H
#define DCR   RL|FZN|CC     // use ALU A-1 op, set ZN flags, clr ALU carry in
#define INC   RL|FZN|CS     // Use ALU A+1 op, set ZN flags, set ALU carry in


// Instruction opcodes.  Those marked with an asterisk use the ALU and thus must have
// specific opcodes that match the bits that are hardwired from the IR to the ALU control.
enum {
    IP_NOP = 0x00,  //   no operation
    AA_INA = 0x01,  // * increment A
    AB_INC = 0x02,  // * increment memory
    AX_INC = 0x03,  // * increment memory
    IP_INX = 0x05,  // * increment X
    IP_INY = 0x06,  // * increment Y
    AA_NOT = 0x08,  // * NOT A
    IP_OUT = 0x10,  //   output A
    IM_LDA = 0x11,  //   load immediate to A
    AB_LDA = 0x12,  //   load A from memory
    AX_LDA = 0x13,  //   load A from memory
    AY_LDA = 0x14,  //   load A from memory
    IX_LDA = 0x15,  //   load A from memory
    IY_LDA = 0x16,  //   load A from memory
    IM_LDX = 0x19,  //   load immediate to X
    AB_LDX = 0x1a,  //   load X from memory
    IP_TAX = 0x1b,  //   transfer A to X
    AY_LDX = 0x1c,  //   load X from memory
    IP_TSX = 0x1d,  //   transfer SP to X
    AB_STA = 0x22,  //   store A to memory
    AX_STA = 0x23,  //   store A to memory
    AY_STA = 0x24,  //   store A to memory
    IX_STA = 0x25,  //   store A to memory
    IY_STA = 0x26,  //   store A to memory
    AB_STX = 0x2a,  //   store X to memory
    IP_TXA = 0x2b,  //   transfer X to A
    AY_STX = 0x2c,  //   store X to memory
    IP_TXS = 0x2d,  //   transfer X to SP
    IP_CLC = 0x30,  // * clear carry flag
    IP_SEC = 0x31,  // * set carry flag
    IP_CLV = 0x32,  // * clear overflow flag
    IM_LDY = 0x39,  //   load immediate to Y
    AB_LDY = 0x3a,  //   load Y from memory
    AX_LDY = 0x3b,  //   load Y from memory
    IP_TAY = 0x3c,  //   transfer A to Y
    AB_STY = 0x4a,  //   store Y to memory
    AX_STY = 0x4b,  //   store Y to memory
    IP_TYA = 0x4c,  //   transfer Y to A
    IM_CPX = 0x60,  // * compare X immediate
    IM_SBC = 0x61,  // * subtract with carry
    AB_SBC = 0x62,  // * subtract with carry memory
    AX_SBC = 0x63,  // * subtract with carry memory
    AY_SBC = 0x64,  // * subtract with carry memory
    IX_SBC = 0x65,  // * subtract with carry memory
    IY_SBC = 0x66,  // * subtract with carry memory
    AB_CPX = 0x67,  // * compare X
    IP_PHA = 0x68,  //   push A
    IM_EOR = 0x69,  // * exlcusive OR A
    AB_EOR = 0x6a,  // * exlcusive OR A
    AX_EOR = 0x6b,  // * exlcusive OR A
    AY_EOR = 0x6c,  // * exlcusive OR A
    IX_EOR = 0x6d,  // * exlcusive OR A
    IY_EOR = 0x6e,  // * exlcusive OR A
    IM_CPY = 0x70,  // * compare Y immediate
    IM_CMP = 0x71,  // * compare A immediate
    AB_CMP = 0x72,  // * compare A
    AX_CMP = 0x73,  // * compare A
    AY_CMP = 0x74,  // * compare A
    IX_CMP = 0x75,  // * compare A
    IY_CMP = 0x76,  // * compare A
    AB_CPY = 0x77,  // * compare Y
    IP_PHP = 0x90,  //   push PS
    IM_ADC = 0x91,  // * add with carry A
    AB_ADC = 0x92,  // * add with carry memory
    AX_ADC = 0x93,  // * add with carry memory
    AY_ADC = 0x94,  // * add with carry memory
    IX_ADC = 0x95,  // * add with carry memory
    IY_ADC = 0x96,  // * add with carry memory
    IP_RTS = 0xa0,  //   return from subroutine
    AB_JSR = 0xa2,  //   jump to subroutine
    IN_JMP = 0xb0,  //   jump
    AB_JMP = 0xb2,  //   jump
    AB_BIT = 0xb8,  // * bit test A with memory
    IM_AND = 0xb9,  // * AND A
    AB_AND = 0xba,  // * AND A
    AX_AND = 0xbb,  // * AND A
    AY_AND = 0xbc,  // * AND A
    IX_AND = 0xbd,  // * AND A
    IY_AND = 0xbe,  // * AND A
    AA_ASL = 0xc0,  // * arithmetic shift left A
    AB_ASL = 0xc2,  // * arithmetic shift left memory
    AX_ASL = 0xc3,  // * arithmetic shift left memory
    AA_ROL = 0xc4,  // * rotate left thru carry
    AB_ROL = 0xc6,  // * rotate left thru carry memory
    AX_ROL = 0xc7,  // * rotate left thru carry memory
    RE_BCS = 0xc8,  //   branch if carry set
    RE_BCC = 0xc9,  //   branch if carry clear
    RE_BEQ = 0xca,  //   branch if equal (zero set)
    RE_BNE = 0xcb,  //   branch if not equal (zero clear)
    RE_BVS = 0xcc,  //   branch if overflow set
    RE_BVC = 0xcd,  //   branch if overflow clear
    RE_BMI = 0xce,  //   branch if plus (negative set)
    RE_BPL = 0xcf,  //   branch if plus (negative clear)
    AA_LSR = 0xd0,  //   logical shift right A
    AB_LSR = 0xd2,  //   logical shift right memory
    AX_LSR = 0xd3,  //   logical shift right memory
    AA_ROR = 0xd4,  //   rotate right thru carry
    AB_ROR = 0xd6,  //   rotate right thru carry memory
    AX_ROR = 0xd7,  //   rotate right thru carry memory
    AB_JCS = 0xd8,  //   jump if carry set
    AB_JCC = 0xd9,  //   jump if carry clear
    AB_JEQ = 0xda,  //   jump if equal (zero set)
    AB_JNE = 0xdb,  //   jump if not equal (zero clear)
    AB_JVS = 0xdc,  //   jump if overflow set
    AB_JVC = 0xdd,  //   jump if overflow clear
    AB_JMI = 0xde,  //   jump if plus (negative set)
    AB_JPL = 0xdf,  //   jump if plus (negative clear)
    IP_PLA = 0xe8,  //   pull A
    IM_ORA = 0xe9,  // * OR A
    AB_ORA = 0xea,  // * OR A
    AX_ORA = 0xeb,  // * OR A
    AY_ORA = 0xec,  // * OR A
    IX_ORA = 0xed,  // * OR A
    IY_ORA = 0xee,  // * OR A
    IP_PLP = 0xf0,  //   pull PS
    AA_DEA = 0xf1,  // * decrement A
    AB_DEC = 0xf2,  // * decrement memory
    AX_DEC = 0xf3,  // * decrement memory
    IP_DEX = 0xf5,  // * decrement X
    IP_DEY = 0xf6   // * decrement Y
};


// SSSSMxxx - Mapping of ALU control bits to opcode bits
enum {
    // The ALU operation is determined by the Mode bit (Arithmetic/Logic), the Select
    // bits, and the CARRY-IN bit. The Mode bit and the four Select bits of the ALU are
    // connected directly to the Instruction Register so that 5 additional microcode ROM
    // bits are not consumed. This means that, other than the CARRY-IN bit, all ALU
    // instructions can have identical microcode.  The bits below match the wiring of the
    // IR to the ALU and therefore also match the upper 5 bits of the 8-bit instruction
    // opcode. The CARRY-IN flag is not wired to the Instruction Register, so it is not
    // encoded as part of the instruction.
    ALU_S3 =              0b10000000,
    ALU_S2 =              0b01000000,
    ALU_S1 =              0b00100000,
    ALU_S0 =              0b00010000,
    ALU_M =               0b00001000
};

// Many of the combinations of control bits in the ALU do not map to useful operations, so
// this is a small subset of the complete 74181 ALU operation set.  Note that some ALU
// operations are unary operations or ALU operations that might be used by the underlying
// microcode, but are not useful as standalone instructions.  For example, the all-zeroes
// or all-ones operations are used by the microcode to clear and set flag registers.

enum {
    ALU_INC = 0,                                          // 00 A plus 1
    ALU_NOT =                                     ALU_M,  // 08 not A
    ALU_ZRO =                   ALU_S1 | ALU_S0,          // 30 all zero (-1 with carry)
    ALU_SUB =          ALU_S2 | ALU_S1,                   // 60 A minus B
    ALU_XOR =          ALU_S2 | ALU_S1          | ALU_M,  // 68 A xor B
    ALU_ADD = ALU_S3                   | ALU_S0,          // 90 A plus B
    ALU_B   = ALU_S3          | ALU_S1          | ALU_M,  // a8 returns B
    ALU_ASL = ALU_S3 | ALU_S2,                            // c0 A + A
    ALU_AND = ALU_S3          | ALU_S1 | ALU_S0 | ALU_M,  // b8 A and B
    ALU_OR  = ALU_S3 | ALU_S2 | ALU_S1          | ALU_M,  // e8 A or B
    ALU_DEC = ALU_S3 | ALU_S2 | ALU_S1 | ALU_S0           // f0 A minus 1
};


// Bits 7..3 of the Instruction Register are hard-wired to the ALU's S4..S0 and M bits.
// This dictates that all instructions that use a particular ALU operation are grouped
// together with the same values in the highest five bits of their opcodes.  This also
// means that only eight different instructions are possible that use any given ALU
// operation.
//
// Although it isn't reqired, many of the other instructions also follow the top-5 bit
// grouping, so that all of the STA instructions appear together, for example.
//
// By convention, the lowest three bits of the instruction are used to indicte the
// addressing mode for ALU instructions.
//
// The instructionGroupDefinitions table is used to create multiple versions of each
// instruction with different argument processing. For example, "ADD A to immediate value"
// and  "ADD A to value from memory indexed by X".  All of the two-argument ALU operations
// with  the same addressing mode, like ADD immediate and XOR immediate, share the same
// microcode.  This code is generated programmatically based on a selected argument
// addressing mode.
//
// The lowest three bits of the Instruction Register, and thus the opcode, are hard-wired
// to the flag-select bits of the jump control register.  This means that the conditional
// jump instructions all share the same microcode and their differents are determined by
// the opcode itself.

// There is one workaround for the eight instruction per ALU function limitation. The LF
// signal forces the S0 bit of the ALU to logic one, allowing eight additional
// instructions for some operations.  This is used to allow the SBC and CMP instructions
// to all use the ALU A-B function.
//

enum { GEN_COPY, GEN_ALU, GEN_BRANCH, GEN_JUMP };
struct InstructionGroupDefinition {
    uint8_t  gen;       // How are instructions generated
    uint32_t mcode;     // Additional microcode bits for flags
} instructionGroupDefinitions[] = {
    { GEN_COPY,   0       },   // 00 ALU increment operations
    { GEN_COPY,   0       },   // 08 ALU invert operations
    { GEN_COPY,   0       },   // 10 copy from template
    { GEN_COPY,   0       },   // 18 copy from template
    { GEN_COPY,   0       },   // 20 copy from template
    { GEN_COPY,   0       },   // 28 copy from template
    { GEN_COPY,   0       },   // 30 ALU zeros or ones to set and clear flags
    { GEN_COPY,   0       },   // 38 copy from template
    { GEN_COPY,   0       },   // 40 copy from template
    { GEN_COPY,   0       },   // 48 copy from template
    { GEN_COPY,   0       },   // 50 copy from template
    { GEN_COPY,   0       },   // 58 copy from template
    { GEN_ALU,    FF      },   // 60 SUB
    { GEN_ALU,    FZN     },   // 68 XOR
    { GEN_COPY,   0       },   // 70 ALU sub used for compare instructions
    { GEN_COPY,   0       },   // 78 copy from template
    { GEN_COPY,   0       },   // 80 copy from template
    { GEN_COPY,   0       },   // 88 copy from template
    { GEN_ALU,    FF      },   // 90 ADD
    { GEN_COPY,   0       },   // 98 copy from template
    { GEN_COPY,   0       },   // a0 copy from template
    { GEN_COPY,   0       },   // a8 copy from template
    { GEN_COPY,   0       },   // b0 copy from template
    { GEN_ALU,    FZN     },   // b8 AND
    { GEN_COPY,   0       },   // c0 ALU A+A for left shift instructions
    { GEN_BRANCH, 0       },   // c8 Conditional Branch
    { GEN_COPY,   0       },   // d0 copy from template
    { GEN_JUMP,   0       },   // d8 Conitional Jump
    { GEN_COPY,   0       },   // e0 copy from template
    { GEN_ALU,    FZN     },   // e8 OR
    { GEN_COPY,   0       },   // f0 copy from template
    { GEN_COPY,   0       }    // f8 copy from template
};


// ROM addressing 32K = 15 address bits
// rruiiii iiiissss
// rr                4 ROM chips possible (32 bit microinstruction word)
//   u               1 unused bit
//    iiii iiii      256 instructions
//             ssss  16 steps (max) per instruction
//
// To simplify microcode ROM burning and management, the microcode for all four chips is
// burned into every chip and the ROMs have the uppermost two address bits hardwired to
// determine which part of the microcode a chip is providing.  This means that all chips
// can be burned identically and that any chip can be installed in any slot.
//
// Rather than leaving parts of the EEPROM blank, duplicate copies of the microcode are
// burned for all of the values of the unused bits.

enum {
    NUM_ROMS = 4,
    NUM_FLAG_COMBOS = 2,
    NUM_INSTRUCTIONS = 256,
    NUM_STEPS = 16,
    NUM_TEMPLATE_STEPS = 8, // 2 hard-coded fetch steps plus 8 template steps

    GROUP_MASK = 0xf8,
    GROUP_SHIFT = 3
};

// Instruction addressing modes
enum {
    ADDR_MODE_00 = 0x00,    // No ALU instructions
    ADDR_MODE_IM = 0x01,    // #20 immediate value
    ADDR_MODE_AB = 0x02,    // $20 absolute memory location
    ADDR_MODE_AX = 0x03,    // $20,X absolute memory location + X
    ADDR_MODE_AY = 0x04,    // $20,Y absolute memory location + Y
    ADDR_MODE_IX = 0x05,    // ($20,X) indexed indirect memory location + X
    ADDR_MODE_IY = 0x06,    // ($20),Y indirect indexed memory location + Y
    ADDR_MODE_07 = 0x07,    // No ALU instructions

    ADDR_MODE_MASK = 0x07   // lowest 3 bits of opcode are the address mode
};

typedef uint32_t microcode_t;
typedef microcode_t template_t[256][NUM_TEMPLATE_STEPS];

// Note that steps zero and one of all instructions are hard-coded to the instruction
// fetch, so this table contains steps 2..9.  No instructions currently have more than ten
// steps.  If a small number of new instructions are added that need additional steps, it
// would probably be better to just build those few instructions manually in the
// buildInstruction code instead of increasing this table to add more steps.
const template_t template0 PROGMEM = {
//  2           3           4           5           6           7           8           9
  { N,          0,          0,          0,          0,          0,          0,          0    }, // 00 IP_NOP   3
  { INC|WA|N,   0,          0,          0,          0,          0,          0,          0    }, // 01 AA_INA * 3
  { FA,         RR|WM,      RA|WB,      RR|WA,      INC|WR,     RB|WA|N,    0,          0    }, // 02 AB_INC * 7
  { FA,         RR|WD,      RDX|WM,     RA|WB,      RR|WA,      INC|WR,     RB|WA|N,    0    }, // 03 AX_INC * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 04
  { RA|WB,      RX|WA,      INC|WX,     RB|WA|N,    0,          0,          0,          0    }, // 05 IP_INX * 6
  { RA|WB,      RY|WA,      INC|WY,     RB|WA|N,    0,          0,          0,          0    }, // 06 IP_INY * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 07
  { RL|WA|N,    0,          0,          0,          0,          0,          0,          0    }, // 08 AA_NOT * 3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 09
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 0a
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 0b
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 0c
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 0d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 0e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 0f
  { RA|WO|N,    0,          0,          0,          0,          0,          0,          0    }, // 10 IP_OUT   3
  { FA,         RR|WA|N,    0,          0,          0,          0,          0,          0    }, // 11 IM_LDA   4
  { FA,         RR|WM,      RR|WA|N,    0,          0,          0,          0,          0    }, // 12 AB_LDA   5
  { FA,         RR|WD,      RDX|WM,     RR|WA|N,    0,          0,          0,          0    }, // 13 AX_LDA   6
  { FA,         RR|WD,      RDY|WM,     RR|WA|N,    0,          0,          0,          0    }, // 14 AY_LDA   6
  { FA,         RR|WD,      RDX|WM,     RR|WM,      RR|WA|N,    0,          0,          0    }, // 15 IX_LDA   7
  { FA,         RR|WM,      RR|WD,      RDY|WM,     RR|WA|N,    0,          0,          0    }, // 16 IY_LDA   7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 17
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 18
  { FA,         RR|WX|N,    0,          0,          0,          0,          0,          0    }, // 19 IM_LDX   4
  { FA,         RR|WM,      RR|WX|N,    0,          0,          0,          0,          0    }, // 1a AB_LDX   5
  { RA|WX|N,    0,          0,          0,          0,          0,          0,          0    }, // 1b IP_TAX   3
  { FA,         RR|WD,      RDY|WM,     RR|WX|N,    0,          0,          0,          0    }, // 1c AY_LDX   6
  { RS|WX|N,    0,          0,          0,          0,          0,          0,          0    }, // 1d IP_TSX   3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 1e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 1f
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 20
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 21
  { FA,         RR|WM,      RA|WR|N,    0,          0,          0,          0,          0    }, // 22 AB_STA   5
  { FA,         RR|WD,      RDX|WM,     RA|WR|N,    0,          0,          0,          0    }, // 23 AX_STA   6
  { FA,         RR|WD,      RDY|WM,     RA|WR|N,    0,          0,          0,          0    }, // 24 AY_STA   6
  { FA,         RR|WD,      RDX|WM,     RR|WM,      RA|WR|N,    0,          0,          0    }, // 25 IX_STA   7
  { FA,         RR|WM,      RR|WD,      RDY|WM,     RA|WR|N,    0,          0,          0    }, // 26 IY_STA   7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 27
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 28
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 29
  { FA,         RR|WM,      RX|WR|N,    0,          0,          0,          0,          0    }, // 2a AB_STX   5
  { RX|WA|N,    0,          0,          0,          0,          0,          0,          0    }, // 2b IP_TXA   3
  { FA,         RR|WD,      RDY|WM,     RR|WX|N,    0,          0,          0,          0    }, // 2c AY_STX   6
  { RX|WS|N,    0,          0,          0,          0,          0,          0,          0    }, // 2d IP_TXS   3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 2e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 2f
  { RL|FB|FC|CS|N, 0,       0,          0,          0,          0,          0,          0    }, // 30 IP_CLC * 3
  { RL|FB|FC|CC|N, 0,       0,          0,          0,          0,          0,          0    }, // 31 IP_SEC * 3
  { RL|FB|FV|CS|N, 0,       0,          0,          0,          0,          0,          0    }, // 32 IP_CLV * 3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 33
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 34
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 35
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 36
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 37
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 38
  { FA,         RR|WY|N,    0,          0,          0,          0,          0,          0    }, // 39 IM_LDY   4
  { FA,         RR|WM,      RR|WY|N,    0,          0,          0,          0,          0    }, // 3a AB_LDY   5
  { FA,         RR|WD,      RDX|WM,     RR|WY|N,    0,          0,          0,          0    }, // 3b AX_LDY   6
  { RA|WY|N,    0,          0,          0,          0,          0,          0,          0    }, // 3c IP_TAY   3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 3d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 3e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 3f
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 40
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 41
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 42
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 43
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 44
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 45
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 46
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 47
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 48
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 49
  { FA,         RR|WM,      RY|WR|N,    0,          0,          0,          0,          0    }, // 4a AB_STY   5
  { FA,         RR|WD,      RDX|WM,     RY|WR|N,    0,          0,          0,          0    }, // 4b AX_STY   6
  { RY|WA|N,    0,          0,          0,          0,          0,          0,          0    }, // 4c IP_TYA   3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 4d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 4e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 4f
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 50
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 51
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 52
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 53
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 54
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 55
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 56
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 57
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 58
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 59
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 5a
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 5b
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 5c
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 5d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 5e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 5f
  { FA,         RR|WB,      RA|WD,      RX|WA,      CMP,        RD|WA|N,    0,          0    }, // 60 IM_CPX * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 61 IM_SBC * 5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 62 AB_SBC * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 63 AX_SBC * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 64 AY_SBC * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 65 IX_SBC * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 66 IY_SBC * 8
  { FA,         RR|WM,      RR|WB,      RA|WD,      RX|WA,      CMP,        RD|WA|N,    0    }, // 67 AB_CPX * 8
  { RS|WM,      RA|WR|SI|N, 0,          0,          0,          0,          0,          0    }, // 68 IP_PHA   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 69 IM_EOR * 5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 6a AB_EOR * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 6b AX_EOR * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 6c AY_EOR * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 6d IX_EOR * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 6e IY_EOR * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 6f
  { FA,         RR|WB,      RA|WD,      RY|WA,      CMP,        RD|WA|N,    0,          0    }, // 70 IM_CPY * 7
  { FA,         RR|WB,      CMP|N,      0,          0,          0,          0,          0    }, // 71 IM_CMP * 5
  { FA,         RR|WM,      RR|WB,      CMP|N,      0,          0,          0,          0    }, // 72 AB_CMP * 6
  { FA,         RR|WD,      RDX|WM,     RR|WB,      CMP|N,      0,          0,          0    }, // 73 AX_CMP * 7
  { FA,         RR|WD,      RDY|WM,     RR|WB,      CMP|N,      0,          0,          0    }, // 74 AY_CMP * 7
  { FA,         RR|WD,      RDX|WM,     RR|WM,      RR|WB,      CMP|N,      0,          0    }, // 75 IX_CMP * 8
  { FA,         RR|WM,      RR|WD,      RDY|WM,     RR|WB,      CMP|N,      0,          0    }, // 76 IY_CMP * 8
  { FA,         RR|WM,      RR|WB,      RA|WD,      RY|WA,      CMP,        RD|WA|N,    0    }, // 77 AB_CPY * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 78
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 79
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 7a
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 7b
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 7c
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 7d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 7e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 7f
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 80
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 81
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 82
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 83
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 84
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 85
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 86
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 87
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 88
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 89
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 8a
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 8b
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 8c
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 8d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 8e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 8f
  { RS|WM,      RF|WR|SI|N, 0,          0,          0,          0,          0,          0    }, // 90 IP_PHP   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 91 IM_ADC * 5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 92 AB_ADC * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 93 AX_ADC * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 94 AY_ADC * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 95 IX_ADC * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 96 IY_ADC * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 97
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 98
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 99
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 9a
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 9b
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 9c
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 9d
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 9e
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // 9f
  { SD,         RS|WM,      RR|WP|N,    0,          0,          0,          0,          0    }, // a0 IP_RTS   5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a1
  { FA,         RR|WB,      RS|WM,      WR|RP|SI,   RB|WP|N,    0,          0,          0    }, // a2 AB_JSR   7
  { N,          0,          0,          0,          0,          0,          0,          0    }, // a3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // a9
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // aa
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ab
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ac
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ad
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ae
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // af
  { FA,         RR|WM,      RR|WP|N,    0,          0,          0,          0,          0    }, // b0 IN_JMP   5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // b1
  { FA,         RR|WP|N,    0,          0,          0,          0,          0,          0    }, // b2 AB_JMP   4
  { N,          0,          0,          0,          0,          0,          0,          0    }, // b3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // b4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // b5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // b6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // b7
  { FA,         RR|WB,      FZN|N,      0,          0,          0,          0,          0    }, // b8 AB_BIT * 5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // b9 IM_AND * 5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ba AB_AND * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // bb AX_AND * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // bc AY_AND * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // bd IX_AND * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // be IY_AND * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // bf
  { RA|WB,      ASL|WA|N,   0,          0,          0,          0,          0,          0    }, // c0 AA_ASL * 4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // c1
  { FA,         RR|WM,      RA|WB,      RR|WA,      ASL|WR,     RB|WA|N,    0,          0    }, // c2 AB_ASL * 8
  { FA,         RR|WD,      RDX|WM,     RA|WB,      RR|WA,      ASL|WR,     RB|WA|N,    0    }, // c3 AX_ASL * 9
  { RA|WB,      ROL|WA|N,   0,          0,          0,          0,          0,          0    }, // c4 AA_ROL * 4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // c5
  { FA,         RR|WM,      RA|WB,      RR|WA,      ROL|WR,     RB|WA|N,    0,          0    }, // c6 AB_ROL * 8
  { FA,         RR|WD,      RDX|WM,     RA|WB,      RR|WA,      ROL|WR,     RB|WA|N,    0    }, // c7 AX_ROL * 9
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // c8 RE_BCS   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // c9 RE_BCC   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ca RE_BEQ   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // cb RE_BNE   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // cc RE_BVS   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // cd RE_BVC   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ce RE_BMI   8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // cf RE_BPL   8
  { RA|WB,      LSR|WA|N,   0,          0,          0,          0,          0,          0    }, // d0 AA_LSR   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // d1
  { FA,         RR|WM,      RR|WB,      LSR|WR|N,   0,          0,          0,          0    }, // d2 AB_LSR   6
  { FA,         RR|WD,      RDX|WM,     RR|WB,      LSR|WR|N,   0,          0,          0    }, // d3 AX_LSR   7
  { RA|WB,      ROR|WA|N,   0,          0,          0,          0,          0,          0    }, // d4 AA_ROR   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // d5
  { FA,         RR|WM,      RR|WB,      ROR|WR|N,   0,          0,          0,          0    }, // d6 AB_ROR   6
  { FA,         RR|WD,      RDX|WM,     RR|WB,      ROR|WR|N,   0,          0,          0    }, // d7 AX_ROR   7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // d8 AB_JCS   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // d9 AB_JCC   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // da AB_JEQ   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // db AB_JNE   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // dc AB_JVS   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // dd AB_JVC   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // de AB_JMI   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // df AB_JPL   4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e0
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e1
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e2
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e3
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e4
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e7
  { SD,         RS|WM,      RR|WA|N,    0,          0,          0,          0,          0    }, // e8 IP_PLA   5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // e9 IM_ORA * 5
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ea AB_ORA * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // eb AX_ORA * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ec AY_ORA * 7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ed IX_ORA * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ee IY_ORA * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // ef
  { SD,         RS|WM,      RR|FB|FF|N, 0,          0,          0,          0,          0    }, // f0 IP_PLP   5
  { DCR|WA|N,   0,          0,          0,          0,          0,          0,          0    }, // f1 AA_DEA * 3
  { FA,         RR|WM,      RA|WB,      RR|WA,      DCR|WR,     RB|WA|N,    0,          0    }, // f2 AB_DEC * 7
  { FA,         RR|WD,      RDX|WM,     RA|WB,      RR|WA,      DCR|WR,     RB|WA|N,    0    }, // f3 AX_DEC * 8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // f4
  { RA|WB,      RX|WA,      DCR|WX,     RB|WA|N,    0,          0,          0,          0    }, // f5 IP_DEX * 6
  { RA|WB,      RY|WA,      DCR|WY,     RB|WA|N,    0,          0,          0,          0    }, // f6 IP_DEY * 6
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // f7
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // f8
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // f9
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // fa
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // fb
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // fc
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // fd
  { 0,          0,          0,          0,          0,          0,          0,          0    }, // fe
  { 0,          0,          0,          0,          0,          0,          0,          0    }  // ff
};


// A buffer to hold the microinstruction words (steps) for an instruction that have been
// built from a template or from the ALU building code.
microcode_t code[NUM_STEPS];

// A buffer to hold an 8-bit slice of the microinstruction words for an instruction to
// burn into a section of ROM.  This buffer allows the use of the block write capability
// of the 28C256 chips, which results in a speed up of the ROM burn times.  The buffer
// allows one write operation (per ROM chip) for each instruction rather than one burn for
// each microinstruction step.
uint8_t burnBuffer[NUM_STEPS];


// Convert the individual address components into a 15-bit address for the ROM.
uint16_t makeAddress(uint16_t rom, uint16_t flags=0, uint16_t instr=0, uint16_t step=0) {
    uint16_t addr =  (rom << 13) | (flags << 12) | (instr << 4) | step;
//    char b[50];
//    sprintf(b, "a=x%04x  r=%d f=%d i=%u s=%u", addr, rom, flags, instr, step);
//    Serial.println(b);
    return addr;
}


#define F1    RP | WM | PI  // Instruction fetch step 1: instruction address from PC to MAR
#define F2    RR | WI       // Instruction fetch step 2: instruction from RAM to IR
void buildInstruction(uint8_t opcode) {
    // Initialize the code buffer from a template.
    code[0] = F1;            // Fetch instruction from memory
    code[1] = F2;            // Opcode into IR (sets ALU mode and S bits)
    memcpy_P(code + 2, template0[opcode], NUM_TEMPLATE_STEPS);
    code[10] = code[11] = code[12] = code[13] = code[14] = code[15] = 0;

    // For each ALU instruction in the group being processed, generate a set of steps to
    // fetch the operand into B and then store the ALU result back into A. The mode and
    // select lines on the ALU chips are wired to the instruction register, so all
    // two-operand ALU instructions for an address mode use the same microcode.
    uint8_t group = (opcode & GROUP_MASK) >> GROUP_SHIFT;
    uint8_t addrMode = opcode & ADDR_MODE_MASK;
    uint8_t gen = instructionGroupDefinitions[group].gen;
    microcode_t mc = instructionGroupDefinitions[group].mcode;
    if (gen == GEN_JUMP) {
        code[2] = RPI | WM;
        code[3] = RR | JE | N;
        code[4] = code[5] = code[6] = code[7] = 0;
    } else if (gen == GEN_BRANCH) {
        code[2] = RPI | WM;
        code[3] = RR | WD;           // offset to adder D
        code[4] = RX | WB;           // save X
        code[5] = RP | WX;
        code[6] = RDX | JE;          // PC + offset (X + D) to PC - jump if JMP set
        code[7] = RB | WX | N;       // restore previous X
    } else if (gen == GEN_ALU) {
        code[5] = code[6] = code[7] = 0;
        switch (addrMode) {
        case ADDR_MODE_IM: // Get B operand from immediate value
            code[2] = RPI | WM;      // Get next address from PC
            code[3] = RR | WB;       // Read operand into B (immediate data)
            code[4] = RL|WA|mc|N;    // Write ALU result into A and flags
            break;
        case ADDR_MODE_AB: // Get B operand from specified memory location
            code[2] = RPI | WM;      // Get next address from PC
            code[3] = RR | WM;       // Read address of operand into MAR
            code[4] = RR | WB;       // Read operand into B
            code[5] = RL|WA|mc|N;    // Write ALU result into A and flags
            break;
        case ADDR_MODE_AX: // Absolute+X
            code[2] = RPI | WM;      // Get next address from PC
            code[3] = RR | WD;       // Read address of operand into D
            code[4] = RDX | WM;      // Read addr+X from adder into MAR
            code[5] = RR | WB;       // Read operand into B
            code[6] = RL|WA|mc|N;    // Write ALU result into A and flags
            break;
        case ADDR_MODE_AY: // Absolute+Y
            code[2] = RPI | WM;      // Get next address from PC
            code[3] = RR | WD;       // Read address of operand into D
            code[4] = RDY | WM;      // Read addr+Y from adder into MAR
            code[5] = RR | WB;       // Read operand into B
            code[6] = RL|WA|mc|N;    // Write ALU result into A and flags
            break;
        case ADDR_MODE_IX: // Indexed Indirect X
            code[2] = RPI | WM;      // Get next address from PC
            code[3] = RR | WD;       // Read address of operand into D
            code[4] = RDX | WM;      // Read addr+X from adder into MAR
            code[5] = RR | WM;       // Read pointer into MAR
            code[6] = RR | WB;       // Read operand into B
            code[7] = RL|WA|mc|N;    // Write ALU result into A and flags
            break;
        case ADDR_MODE_IY: // Indirect Indexed Y
            code[2] = RPI | WM;      // Get next address from PC
            code[3] = RR | WM;       // Read pointer into MAR
            code[4] = RR | WD;       // Read address of operand into D
            code[5] = RDY | WM;      // Read addr+Y from adder into MAR
            code[6] = RR | WB;       // Read operand into B
            code[7] = RL|WA|mc|N;    // Write ALU result into A and flags
            break;
        }
    }
}


void burnCodeBuffer(uint16_t flags, uint8_t opcode) {
    // Slice the a 32-bit instruction control words of an instruction into individual
    // 8-bit chunks and burn them into the appropriate position in the ROM.
    for (uint16_t rom = 0; (rom < NUM_ROMS); rom++) {
        uint16_t shift = rom << 3;  // Shift 8 bits for each ROM position
        for (int step = 0; step < NUM_STEPS; step++) {
            burnBuffer[step] = uint8_t(code[step] >> shift);
        }
        if (!writeData(burnBuffer, sizeof(burnBuffer), makeAddress(rom, flags, opcode))) {
            fail();
        }
    }
}

void burnMicrocodeRoms() {
    for (uint16_t opcode = 0; (opcode < 256); opcode++) {
        if ((opcode & 0x0f) == 0) {
            Serial.print(F("Burning "));
            Serial.println(opcode, HEX);
        }
        buildInstruction(opcode);
        for (int flags = 0; (flags < NUM_FLAG_COMBOS); flags++) {
            burnCodeBuffer(flags, opcode);
        }
    }
}



const uint32_t mSize = 32 * 1024L;      // Size of the device, in bytes
const unsigned int mBlockSize = 64;     // Block size for page writes, zero if N/A
const unsigned int mMaxWriteTime = 10;  // Max time (in ms) to wait for write cycle to complete

// Write the special six-byte code to turn off Software Data Protection.
void disableSoftwareWriteProtect() {
    disableOutput();
    disableWrite();
    enableChip();
    setDataBusMode(OUTPUT);

    setByte(0xaa, 0x5555);
    setByte(0x55, 0x2aaa);
    setByte(0x80, 0x5555);
    setByte(0xaa, 0x5555);
    setByte(0x55, 0x2aaa);
    setByte(0x20, 0x5555);

    setDataBusMode(INPUT);
    disableChip();
}

// Read a byte from a given address
byte readByte(uint32_t address) {
    byte data = 0;
    setAddress(address);
    setDataBusMode(INPUT);
    disableOutput();
    disableWrite();
    enableChip();
    enableOutput();
    data = readDataBus();
    disableOutput();
    disableChip();
    return data;
}


// Burn a byte to the chip and verify that it was written.
bool burnByte(byte value, uint32_t address) {
    bool status = false;

    disableOutput();
    disableWrite();

    setAddress(address);
    setDataBusMode(OUTPUT);
    writeDataBus(value);

    enableChip();
    delayMicroseconds(3);
    enableWrite();
    delayMicroseconds(3);
    disableWrite();

    status = waitForWriteCycleEnd(value);

    disableChip();

    if (!status) {
        Serial.print(F("burn address="));
        Serial.println(address, HEX);
    }
    return status;
}


bool burnBlock(byte data[], uint32_t len, uint32_t address) {
    bool status = false;
    char cb[50];
//    sprintf(cb, "burn %02x at %04x", uint16_t(len), uint16_t(address));
//    Serial.println(cb);
//    Serial.println(address, HEX);
    if (len == 0)  return true;

    disableOutput();
    disableWrite();
    enableChip();

    // Write all of the bytes in the block out to the chip.  The chip will
    // program them all at once as long as they are written fast enough.
    setDataBusMode(OUTPUT);
    for (uint32_t ix = 0; (ix < len); ix++) {
        setAddress(address + ix);
        writeDataBus(data[ix]);

        delayMicroseconds(1);
        enableWrite();
        delayMicroseconds(1);
        disableWrite();
    }

    status = waitForWriteCycleEnd(data[len - 1]);
    disableChip();

    if (!status) {
        Serial.print(F("burnBlock fail at 0x"));
        Serial.println(address, HEX);
        for (uint32_t ix = 0; (ix < len); ix++) {
            uint8_t b = readByte(address+ix);
            if (b != data[ix]) {
                sprintf(cb, "addr=%04x, data=%0x2, readback=%02x", unsigned(address+ix), unsigned(data[ix]), unsigned(b));
                Serial.println(cb);
                break;
            }
        }
    }

    return status;
}


bool waitForWriteCycleEnd(byte lastValue) {
    // Verify programming complete by reading the last value back until it matches the
    // value written twice in a row.  The D7 bit will read the inverse of last written
    // data and the D6 bit will toggle on each read while in programming mode.
    //
    // Note that the max readcount is set to the device's maxReadTime (in uSecs)
    // divided by two because there are two 1 uSec delays in the loop.  In reality,
    // the loop could run for longer because this does not account for the time needed
    // to run all of the loop code.  In actual practice, the loop will terminate much
    // earlier because it will detect the end of the write well before the max time.
    setDataBusMode(INPUT);
    delayMicroseconds(1);
    for (int readCount = mMaxWriteTime * 1000 / 2; (readCount > 0); readCount--) {
        enableChip();
        enableOutput();
        delayMicroseconds(1);
        byte b1 = readDataBus();
        disableOutput();
        disableChip();
        enableChip();
        enableOutput();
        delayMicroseconds(1);
        byte b2 = readDataBus();
        disableOutput();
        disableChip();
        if ((b1 == b2) && (b1 == lastValue)) {
            return true;
        }
    }

    return false;
}


// Set an address and data value and toggle the write control.  This is used
// to write control sequences, like the software write protect.  This is not a
// complete byte write function because it does not set the chip enable or the
// mode of the data bus.
void setByte(byte value, uint32_t address)
{
    setAddress(address);
    writeDataBus(value);

    delayMicroseconds(1);
    enableWrite();
    delayMicroseconds(1);
    disableWrite();
}

// Set a 16 bit address in the two address shift registers.
void setAddress(uint32_t address) {
    static byte lastHi = 0xca;
    byte hi = (address >> 8) & 0xff;
    byte lo = address & 0xff;

    if (hi != lastHi) {
        setAddressRegister(ADDR_CLK_HI, hi);
        lastHi = hi;
    }
    setAddressRegister(ADDR_CLK_LO, lo);
}

// Shift an 8-bit value into one of the address shift registers.  Note that
// the data pins are tied together, selecting the high or low address register
// is a matter of using the correct clock pin to shift the data in.
void setAddressRegister(uint8_t clkPin, byte addr) {
    byte mask = 0;

    if (clkPin == ADDR_CLK_HI) {
        mask = 0x08;
    } else if (clkPin == ADDR_CLK_LO) {
        mask = 0x10;
    }

    // Make sure the clock is low to start.
    PORTC &= ~mask;

    // Shift 8 bits in, starting with the MSB.
    for (int ix = 0; (ix < 8); ix++) {
        // Set the data bit
        if (addr & 0x80) {
            PORTC |= 0x20;
        } else {
            PORTC &= 0xdf;
        }

        // Toggle the clock high then low
        PORTC |= mask;
        delayMicroseconds(3);
        PORTC &= ~mask;
        addr <<= 1;
    }
}

void dump(uint16_t address, byte data[]) {
    char buffer[80];
    sprintf(buffer, "%04x %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x",
    address,
    data[0],data[1],data[2],data[3],
    data[4],data[5],data[6],data[7],
    data[8],data[9],data[10],data[11],
    data[12],data[13],data[14],data[15]);
    Serial.println(buffer);

}
// Write a block of data to the device.  The device supports block writes,
// so the data will be broken into chunks and written using the block mode.
bool writeData(byte data[], uint32_t len, uint32_t address)
{
    /*
    dump(address, data);
    dump(address+0x10, data+0x10);
    dump(address+0x20, data+0x20);
    dump(address+0x30, data+0x30);
    dump(address+0x40, data+0x40);
    dump(address+0x50, data+0x50);
    dump(address+0x60, data+0x60);
    dump(address+0x70, data+0x70);
    */
    bool status = true;

    if (mBlockSize == 0) {
        // Device does not support block writes.
        for (uint32_t ix = 0; (ix < len); ix++) {
            if (burnByte(data[ix], address + ix) == false) {
                status = false;
                break;
            }
        }
    } else {
        uint32_t offset = 0;
        uint32_t chunkSize;
        if (address & (mBlockSize - 1)) {
            // Address does not start on a block boundary.  Adjust the size of
            // the first block to fit within a single block.
            chunkSize = mBlockSize - (address & (mBlockSize - 1));
            chunkSize = (chunkSize > len) ? len : chunkSize;
            if (burnBlock(data, chunkSize, address) == false) {
                return false;
            }
            offset += chunkSize;
            len -= chunkSize;
        }

        // All writes are now aligned to block boundaries, so write full blocks
        // or remaining length, whichever is smaller.
        while (len > 0) {
            chunkSize = (len > mBlockSize) ? mBlockSize : len;
            if (burnBlock(data + offset, chunkSize, address + offset) == false) {
                status = false;
                break;
            }
            offset += chunkSize;
            len -= chunkSize;
        }
    }

    return status;
}

void setDataBusMode(uint8_t mode) {
    // On the Uno and Nano, D2..D9 maps to the upper 6 bits of port D and the
    // lower 2 bits of port B.
    if (mode == OUTPUT) {
        DDRB |= 0x03;
        DDRD |= 0xfc;
    } else {
        DDRB &= 0xfc;
        DDRD &= 0x03;
    }
}

// Read a byte from the data bus.  The caller must set the bus to input_mode
// before calling this or no useful data will be returned.
byte readDataBus() {
    return (PINB << 6) | (PIND >> 2);
}

// Write a byte to the data bus.  The caller must set the bus to output_mode
// before calling this or no data will be written.
void writeDataBus(byte data) {
     PORTB = (PORTB & 0xfc) | (data >> 6);
     PORTD = (PORTD & 0x03) | (data << 2);
}
