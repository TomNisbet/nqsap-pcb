/**
**/

#include "Configure.h"
#include "CmdStatus.h"
#include "XModem.h"


static const char * MY_VERSION = "5.1";


// Global status
CmdStatus cmdStatus;

// Global loader hardware interface
LoaderHw hw(32 * 1024L);

// Global XModem driver
XModem xmodem(hw, cmdStatus);

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
    RE_BMI = 0xce,  //   branch if minus (negative set)
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
    AB_JMI = 0xde,  //   jump if minus (negative set)
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
    IP_DEY = 0xf6,  // * decrement Y

    IP_TAS = 0xff   // temporary instruction to load the SP because X is not implemented yet for TXS
};


static const uint8_t pgmChase[] = {
    // blinky light effect using the Y Register LEDs as a chaser light.  This illustrates
    // the AX (absolute+X) addressing mode.
    IM_LDA, 0,
// LOOP
    IM_AND, 0x0f,
    IP_OUT,
    IP_TAX,
    AX_LDY, 0x10,       // Get a value from the bit table and show it on the Y LEDs
    IP_TXS,             // Give the SP LEDs something to do too
    AA_INA,
    AB_JMP, 0x02,       // JMP LOOP
    IP_NOP, IP_NOP, IP_NOP, IP_NOP,
    // Table of sixteen values to display a walking bit pattern
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80,
    0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01, 0x00
};

static const uint8_t pgmShift[] = {
    IM_LDA, 0x03,
    AA_ASL,
    AA_ASL,
    AA_ASL,
    AA_ASL,
    AA_ASL,
    AA_ASL,
    AA_LSR,
    AA_LSR,
    AA_LSR,
    AA_LSR,
    AA_LSR,
    AA_LSR,
    AB_JMP, 0x02
};

static const uint8_t pgmSimple[] = {
    // Program to test build 2 HW with no ALU
    IM_LDA, 1,
    IM_LDA, 2,
    IM_LDA, 4,
    IM_LDA, 8,
    IM_LDA, 16,
    IM_LDA, 32,
    IM_LDA, 64,
    IM_LDA, 128,
    IP_NOP,
    IM_LDA, 64,
    IM_LDA, 32,
    IM_LDA, 16,
    IM_LDA, 8,
    IM_LDA, 4,
    IM_LDA, 2,
    IM_LDA, 1,
    IP_NOP,
    AB_JMP, 2     // JMP back to LOOP
};

static const uint8_t pgmCount3[] = {
    // Count by 3
    IM_LDA, 10,   // start at 10
// LOOP
    IM_ADC, 3,    // ADD 3 to A
    IP_OUT,       // OUT (A to display)
    AB_JMP, 2     // JMP back to LOOP
};

static const uint8_t pgmJumpTest[] = {
    IM_LDA, 0,
    IP_CLC,
// 3
    IM_ADC, 1,     // Count by ones until negative
    IP_OUT,
    AB_JPL, 3,
// 8
    IP_CLC,
    IM_ADC, 3,  // Count by threes until zero
    IP_OUT,
    AB_JNE, 8,
    IP_CLC,
// 14
    IM_ADC, 5,  // Count by fives until carry set
    AB_JCC, 14,
    IP_OUT,
    IM_LDA, 0,
    IP_CLV,
// 22
    IP_CLC,
    IM_ADC, 7,  // Count by sevens until overflow set
    IP_OUT,
    AB_JVC, 22,
    AB_JMP, 0
};

static const uint8_t pgmStack[] = {
    // Count by fives to the output register, but then decrement a few times and display
    // the result before resuming the count.  Demonstrates the JSR/RTS as well as the
    // PHA/PLA stack operations.
    IM_LDX, 0x80,
    IP_TXS,
    IM_LDA, 0,
// LOOP
    IP_CLC,
    IM_ADC, 5,    // ADD 5 to A
    AB_JSR, 16,   // OUT (A to display)
    IP_TAY,
    AB_JMP, 5,    // JMP back to LOOP
    IP_NOP,IP_NOP,IP_NOP,
// 16
    IP_PHA,
    IP_OUT,
    AA_DEA,
    IP_OUT,
    AA_DEA,
    IP_OUT,
    IP_PLA,
    IP_RTS
};

static const uint8_t pgmPattern[] = {
    // Memory test pattern - not an executable program
    'A',  'B',  'C',  'D',  'E',  'F',  'G',  'H',
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80,
    0x7f, 0xbf, 0xdf, 0xef, 0xf7, 0xfb, 0xfd, 0xfe,
    0x00, 0xff, 0x55, 0xaa, '0',  '1',  '2',  '3'
};

struct program_t {
    const uint8_t * data;
    size_t          len;
};
static const program_t programs[] = {
    pgmStack,       sizeof(pgmStack),
    pgmSimple,      sizeof(pgmSimple),
    pgmChase,       sizeof(pgmChase),
    pgmShift,       sizeof(pgmShift),
    pgmCount3,      sizeof(pgmCount3),
    pgmJumpTest,    sizeof(pgmJumpTest),
    pgmPattern,     sizeof(pgmPattern)
};


/*****************************************************************************/
/*****************************************************************************/

/**
 * CLI parse functions
 */
const char hex[] = "0123456789abcdef";

void setup() {
    Serial.begin(115200);
    hw.begin();

    // burn the first sample program and return control to the host.  This lets the loader
    // (and then the host) run with no user interaction at power up.
    burnProgram(0, 0x00);
    hw.disable();
}

void loop() {
    processCommand();
}

char waitChar() {
    while (!Serial.available()) {}
    return Serial.read();
}

// Read a line of data from the serial connection.
char * readLine(char * buffer, int len) {
    for (int ix = 0; (ix < len); ix++) {
         buffer[ix] = 0;
    }

    // read serial data until linebreak or buffer is full
    char c = ' ';
    int ix = 0;
    do {
        c = waitChar();
        if (c == '\\') {
            // Do a cYcle command without waiting for newline character.
            buffer[0] = '\\';
            ix = 2;
            break;
        } else if (c == '\b') {
            // Backspace, forget last character.
            if (ix > 0) {
                --ix;
            }
        } else {
            buffer[ix++] = c;
        }
        Serial.write(c);
    } while ((c != '\n') && (ix < len));

    buffer[ix - 1] = '\0';
    return buffer;
}


/************************************************************
* convert a single hex character [0-9a-fA-F] to its value
* @param char c single character (digit)
* @return byte value of the digit (0-15)
************************************************************/
byte hexDigit(char c) {
    if ((c >= '0') && (c <= '9')) {
        return c - '0';
    } else if ((c >= 'a') && (c <= 'f')) {
        return c - 'a' + 10;
    } else if ((c >= 'A') && (c <= 'F')) {
        return c - 'A' + 10;
    } else {
        return 0xff;
    }
}

/************************************************************
* Convert a hex string to a uint32_t value.
* Skips leading spaces and terminates on the first non-hex
* character.  Leading zeroes are not required.
*
* No error checking is performed - if no hex is found then
* defaultValue is returned.  Similarly, a hex string of more than
* 8 digits will return the value of the last 8 digits.
* @param pointer to string with the hex value of the word (modified)
* @return unsigned int represented by the digits
************************************************************/
uint32_t getHex32(char *& pData, uint32_t defaultValue=0) {
    uint32_t u32 = 0;

    while (isspace(*pData)) {
        ++pData;
    }

    if (isxdigit(*pData)) {
        while (isxdigit(*pData)) {
            u32 = (u32 << 4) | hexDigit(*pData++);
        }
    } else {
        u32 = defaultValue;
    }

    return u32;
}


void printByte(byte b) {
    char line[3];

    line[0] = hex[b >> 4];
    line[1] = hex[b & 0x0f];
    line[2] = '\0';

    Serial.print(line);
}


void printWord(word w) {
    char line[5];

    line[0] = hex[(w >> 12) & 0x0f];
    line[1] = hex[(w >>  8) & 0x0f];
    line[2] = hex[(w >>  4) & 0x0f];
    line[3] = hex[(w)       & 0x0f];
    line[4] = '\0';

    Serial.print(line);
}


/*
* Prints a 32 bit value as a hex.
*
* Note that no values over 4 digits are used in
* this application, so only 4 digits are printed.*/
void printHex32(uint32_t u32) {
    char line[6];

    line[0] = hex[(u32 >> 12) & 0x0f];
    line[1] = hex[(u32 >>  8) & 0x0f];
    line[2] = hex[(u32 >>  4) & 0x0f];
    line[3] = hex[(u32)       & 0x0f];
    line[4] = '\0';

    Serial.print(line);
}


// If the user presses a key then pause until they press another.  Return true if
// Ctrl-C is pressed.
bool checkForBreak() {
    if (Serial.available()) {
        if (Serial.read() == 0x03) {
            return true;
        }
        while (!Serial.available())
        {}
        if (Serial.read() == 0x03) {
            return true;
        }
    }

    return false;
}


/*****************************************************************************/
/*****************************************************************************/
/**
 * Command implementations
 */


/**
* Read data from the device and dump it in hex and ascii.
**/
void dumpBlock(uint32_t start, uint32_t end) {
    char line[81];
//  01234567891 234567892 234567893 234567894 234567895 234567896 234567897 23456789
//  01234: 01 23 45 67  89 ab cf ef  01 23 45 67  89 ab cd ef  1.2.3.4. 5.6.7.8.
    int count = 0;

    memset(line, ' ', sizeof(line));

    char * pHex = line;
    char * pChar = line + 59;
    for (uint32_t addr = start; (addr <= end); addr++) {
        if (count == 0) {
            //print out the address at the beginning of the line
            pHex = line;
            pChar = line + 59;
            *pHex++ = hex[(addr >> 16) & 0x0f];
            *pHex++ = hex[(addr >> 12) & 0x0f];
            *pHex++ = hex[(addr >>  8) & 0x0f];
            *pHex++ = hex[(addr >>  4) & 0x0f];
            *pHex++ = hex[(addr)       & 0x0f];
            *pHex++ = ':';
            *pHex++ = ' ';
        }

        byte data = hw.readByte(addr);
        *pHex++ = hex[data >> 4];
        *pHex++ = hex[data & 0x0f];
        *pHex++ = ' ';
        *pChar++ = ((data < 32) | (data >= 127)) ? '.' : data;

        if ((count & 3) == 3) {
            *pHex++ = ' ';
        }
        if ((count & 7) == 7) {
            *pChar++ = ' ';
        }
        if ((++count >= 16) || (addr == end)) {
            *pChar = '\0';
            Serial.println(line);
            if (checkForBreak()) {
                return;
            }
            memset(line, ' ', sizeof(line));
            count = 0;
        }
    }

    if (count) {
        Serial.println();
    }
}

/**
* Print an address and value and then prompt the user for input.  If two hex characters
* are entered then the value is stored in memory at the current address the the process
* is repeated for the next address.  The loop stops when a non-hex character is entered.
**/
void examine(uint32_t addr) {
    uint8_t val;
    uint8_t x;
    char c;
    while (1) {
        val = 0;
        printWord(addr);
        Serial.print(':');
        printByte(hw.readByte(addr));
        Serial.print(' ');
        Serial.flush();
        c = waitChar();
        if ((c == '\n') || (c == '\r')) {
            // The Arduino IDE serial monitor requires a newline so read and ignore
            // newlineif it is seen.
            Serial.println();
            continue;
        }
        x = hexDigit(c);
        if (x == 0xff) {
            break;
        }
        val = x << 4;
        x = hexDigit(waitChar());
        if (x == 0xff) {
            break;
        }
        hw.writeData(&val, 1, addr++);
        Serial.println();
    }
    Serial.println();
}

/**
 * Fill a block of RAM data with a single value.
 *
 * @param start - start address
 * @param end - end address
 * @param val - data byte to write to all addresses
 */
void fillBlock(uint32_t start, uint32_t end, byte val) {
    enum { BLOCK_SIZE = 32 };
    byte block[BLOCK_SIZE];

    for (int ix = 0; ix < BLOCK_SIZE; ix++) {
        block[ix] = val;
    }

    for (uint32_t addr = start; (addr <= end); addr += BLOCK_SIZE) {
        uint32_t writeLen = ((end - addr + 1) < BLOCK_SIZE) ? (end - addr + 1) : uint32_t(BLOCK_SIZE);
        if (!hw.writeData(block, writeLen, addr)) {
            cmdStatus.error("Write failed");
            return;
        }
    }
}


void burnProgram(unsigned pgmIx, uint32_t start) {
    char s[50];
    if (pgmIx < (sizeof(programs) / sizeof(*programs))) {
        const uint8_t * pgmData = programs[pgmIx].data;
        size_t pgmLen = programs[pgmIx].len;
        sprintf(s, "Burning program %u at %04x len=%u", pgmIx, unsigned(start), pgmLen);
        Serial.println(s);
        hw.enable();
        bool status = hw.writeData(pgmData, pgmLen, start);
        if (!status) {
            cmdStatus.error("Write failed");
            return;
        }

        for (unsigned ix = 0; (ix < pgmLen); ix++) {
            byte val = hw.readByte(start + ix);
            if (val != pgmData[ix]) {
                cmdStatus.error("Verify failed");
                cmdStatus.setValueHex(0, "addr", start + ix);
                cmdStatus.setValueHex(1, "read", val);
                cmdStatus.setValueHex(2, "expected", pgmData[ix]);
                return;
            }
        }
        hw.reset();
        cmdStatus.info("Write verification test successful");
    }
}

void insertBytes(char * pCursor)
{
    uint32_t val;
    uint32_t start;
    unsigned byteCtr = 0;

    enum { BLOCK_SIZE = 32 };
    byte data[BLOCK_SIZE];

    //first value returned is the starting address
    start = getHex32(pCursor, 0);
    while (((val = getHex32(pCursor, 0xffff)) != 0xffff) && (byteCtr < BLOCK_SIZE)) {
        data[byteCtr++] = byte(val);
    }

    if (byteCtr > 0) {
        if (!hw.writeData(data, byteCtr, start)) {
            cmdStatus.error("Write failed");
            return;
        }
    } else {
        cmdStatus.error("Missing address or data");
        return;
    }
    delay(100);

    for (unsigned ix = 0; ix < byteCtr ; ix++) {
        byte val = hw.readByte(start + ix);
        if (val != data[ix]) {
            cmdStatus.error("Verify failed");
            cmdStatus.setValueHex(0, "addr", start + ix);
            cmdStatus.setValueHex(1, "read", val);
            cmdStatus.setValueHex(2, "expected", data[ix]);
            return;
        }
    }
    cmdStatus.info(" successful");
}

void printRegisterNames() {
    for (int num = 0; (num < 16); num++) {
        Serial.print("  ");
        Serial.print(num, HEX);
        Serial.print(" - ");
        Serial.println(hw.registerName(num));
    }

}

enum {
    // CLI Commands
    CMD_INVALID,
    CMD_CTRL,
    CMD_DUMP,
    CMD_FILL,
    CMD_INSERT,
    CMD_GET,
    CMD_NAMES,
    CMD_PUT,
    CMD_READ,
    CMD_QUIT,
    CMD_TEST,
    CMD_WRITE,
    CMD_EXAMINE,
    CMD_CYCLE,
    CMD_ZAP,
    CMD_DOLLAR,
    CMD_ASSIGN,
    CMD_CLOCK,
    CMD_LAST_STATUS
};


/*
G5 - get r5 into $ and print
P6 2f- put value 2f into r6 - can use $ for value
=2 4 - transfer r2 from r4 (dest first, like P command)
$ - print last value
$ 3c - set value of $ to 3c
Y - cYcle clock - for example, if IR has an ALU op will change values
The G,P,T commands will leave the RW selects set for additional Y cmds
Dssss eeee dump memory
Fssss eeee vv fill memory
Xssss eXamine memory will step through and can change values see gwmon
T - test memory, alu, and all registers.  R/W registers will verify a set of values. R/O registers will do the light show. Some R/O are implicitly tested.
*/
byte parseCommand(char c)
{
    byte cmd = CMD_INVALID;

    // Convert the command to lowercase.
    if ((c >= 'A') && (c <= 'Z')) {
        c |= 0x20;
    }

    switch (c) {
        case 'c':  cmd = CMD_CTRL;      break;
        case 'd':  cmd = CMD_DUMP;      break;
        case 'f':  cmd = CMD_FILL;      break;
        case 'g':  cmd = CMD_GET;       break;
        case 'i':  cmd = CMD_INSERT;    break;
        case 'n':  cmd = CMD_NAMES;     break;
        case 'p':  cmd = CMD_PUT;       break;
        case 'r':  cmd = CMD_READ;      break;
        case 'q':  cmd = CMD_QUIT;      break;
        case 't':  cmd = CMD_TEST;      break;
        case 'w':  cmd = CMD_WRITE;     break;
        case 'x':  cmd = CMD_EXAMINE;   break;
        case 'y':  cmd = CMD_CYCLE;     break;
        case 'z':  cmd = CMD_ZAP;       break;
        case '$':  cmd = CMD_DOLLAR;    break;
        case '=':  cmd = CMD_ASSIGN;    break;
        case '/':  cmd = CMD_LAST_STATUS;break;
        case '\\': cmd = CMD_CLOCK;     break;
        default:   cmd = CMD_INVALID;   break;
    }

    return cmd;
}


void processCommand() {
    char line[60];
    char buff[50];
    uint32_t a1, a2, a3;
    byte lastVal = 0;
    uint32_t numBytes;
    uint32_t noArg = uint32_t(-1);
    int argc = 0;

    Serial.print("\n>");
    Serial.flush();
    readLine(line, sizeof(line));
    Serial.println();
    byte cmd = parseCommand(line[0]);
    char * pCursor = line+1;
    if ((a1 = getHex32(pCursor, noArg)) != noArg) { ++argc; }
    if ((a2 = getHex32(pCursor, noArg)) != noArg) { ++argc; }
    if ((a3 = getHex32(pCursor, noArg)) != noArg) { ++argc; }

    if ((cmd != CMD_LAST_STATUS) && (cmd != CMD_INVALID)) {
        cmdStatus.clear();
    }

    switch (cmd) {
    case CMD_CTRL:
        hw.writeControls(uint16_t(a1));
        break;

    case CMD_DUMP:
        if (argc < 2) { a2 = a1 + 255; }
        dumpBlock(a1, a2);
        break;

    case CMD_GET:
        lastVal = hw.readRegister(a1);
        Serial.println(lastVal, HEX);
        break;

    case CMD_PUT:
        // Note that this command will not work with the Output Register because it uses
        // a latch instead of a clock pulse to store its data.  This command will
        // briefly put a value on the bus (and into the output register), but immediately
        // after the clock pulse, the loader will release the bus and the default zero
        // value will show on the Output Register.  The Assign command will work correctly
        // with Output because it leaves the read register on the bus upon completion.
        hw.writeRegister(a1, a2);
        break;

    case CMD_INSERT:
        insertBytes(line + 1);
        break;

    case CMD_EXAMINE:
        if (argc < 1) { a1 = 0; }
        examine(a1);
        break;

    case CMD_ASSIGN:
        hw.transferRegister(a1, a2);
        break;

    case CMD_FILL:
        if (argc < 2) { a2 = a1 + 255; }
        fillBlock(a1, a2, byte(a3));
        break;

    case CMD_QUIT:
        hw.disable();
        Serial.println(F("Loader disabled, control returned to host."));
        break;

    case CMD_READ:
        if (argc < 2) { a2 = a1 + 255; }
        Serial.println(F("Set the terminal to receive XMODEM CRC"));
        if (xmodem.SendFile(a1, uint32_t(a2) - a1 + 1)) {
            cmdStatus.info("Send complete.");
            cmdStatus.setValueDec(0, "NumBytes", uint32_t(a2) - a1 + 1);
        }
        break;

    case CMD_WRITE:
        Serial.println(F("Send the image file using XMODEM CRC"));
        numBytes = xmodem.ReceiveFile(a1);
        if (numBytes) {
            cmdStatus.info("Success writing to RAM.");
            cmdStatus.setValueDec(0, "NumBytes", numBytes);
        } else {
            xmodem.Cancel();
        }
        break;

    case CMD_TEST:
        if (hw.testHardware()) {
            Serial.println(F("Hardware test passed"));
        } else {
            Serial.println(F("Hardware test failed"));
        }
        break;

    case CMD_CYCLE:
        if (argc < 1) { a1 = 1; }
        for (unsigned ix = 0; (ix < a1); ix++) {
            hw.clkPulse();
            delay(2);
        }
        break;

    case CMD_CLOCK:
        hw.longPulse();
        break;

    case CMD_NAMES:
        printRegisterNames();
        break;

    case CMD_DOLLAR:
        sprintf(buff, "%u (0x%02x)", lastVal, lastVal);
        Serial.println(buff);
        break;

    case CMD_ZAP:
        if (argc < 2) { a2 = 0; }
        burnProgram(a1, a2);
        break;

    case CMD_LAST_STATUS:
        Serial.println(F("Status of last command:"));
        break;

    default:
        Serial.print(F("NQSAP-PCB Loader "));
        Serial.println(MY_VERSION);
        Serial.println(F("RAM commands:"));
        Serial.println(F("  Dss ee    - Dump bytes from RAM to terminal"));
        Serial.println(F("  Fss ee dd - Fill block of RAM with fixed value"));
        Serial.println(F("  Iss dd .. - Insert one or more values into RAM"));
        Serial.println(F("  Rss ee    - Read from RAM and save to XMODEM CRC file"));
        Serial.println(F("  Wss       - Write to RAM from XMODEM CRC file"));
        Serial.println(F("  Xss       - eXamine (and optionally modify) RAM"));

        Serial.println(F("\nRegister and hardware commands:"));
        Serial.println(F("  Gr        - Get (read) and print register value"));
        Serial.println(F("  Pr dd     - Put (write) value to register"));
        Serial.println(F("  =r1 r2    - Assign (r1=r2) copy value from register r2 to r1"));
        Serial.println(F("  Y[cc]     - cYcle host hardware clock (with optional repeat count)"));

        Serial.println(F("\nMisc commands:"));
        Serial.println(F("  T         - Test host hardware"));
        Serial.println(F("  N         - Print register numbers and names"));
        Serial.println(F("  Zpp ss    - Zap (burn) and verify a 32 byte test pattern"));
        Serial.println(F("  Q         - Quit loader mode and return control to host"));
        break;
    }

    if (!cmdStatus.isClear() || (cmd == CMD_LAST_STATUS)) {
        Serial.println();
        cmdStatus.printStatus();
    }
}
