#include "Configure.h"

enum {
    DELAY_LEDS = 80
};

// Pin assignments are specific to Arduino Nano.  Some direct port manipulation is done
// that may not be compatible with other Arduino models.

// USB reserves pins 0..1
// Data bus is pins 2..9
enum {
    PGM  = 10,   // OUTPUT - puts the host in PROGRAM mode
    LD2  = A0,   // OUTPUT - CLK the R2 register (register selects)
    SER  = A1,   // OUTPUT - Serial data to the R0/R1/R2 registers
    RCLK = A2,   // OUTPUT - output the values of all shift registers to the pins
    LD0  = A3,   // OUTPUT - CLK the R0 and R1 registers as 16 bits (control signals)
    RST  = A4,   // OUTPUT - drives the host RST line
    CLK  = A5    // OUTPUT - drives the host CLK line
};

// TODO - update to use the faster direct hw control for 74595 shift registers
enum {
    PC_LD2  = 0x01,
    PC_SER  = 0x02,
    PC_RCLK = 0x04,
    PC_LD0  = 0x08,
    PC_RST  = 0x10,
    PC_CLK  = 0x20
};

enum {
    // ALU mode and select bits to place in the instruction register
    ALU_INC = 0x00, // A plus 1
    ALU_SUB = 0x60, // A minus B
    ALU_ADD = 0x90, // A plus B
    ALU_SHL = 0xc0, // A + A
    ALU_DEC = 0xf0, // A minus 1
    ALU_NOT = 0x08, // not A
    ALU_XOR = 0x68, // A xor B
    ALU_B   = 0xa8, // B
    ALU_AND = 0xb8, // A and B
    ALU_OR  = 0xe8, // A or B

    ALU_MODE = 0x08 // Arithmetic if clear, logical if set
};
bool isAluArithmetic(uint8_t op) { return (op & ALU_MODE) == 0; }

const uint8_t aluUnaryOperations[] = {
    ALU_INC,
    ALU_SHL,
    ALU_DEC,
    ALU_NOT,
    ALU_B
};
const char * aluUnaryNames[] = {
    "INC", "SHL", "DEC", "NOT", "B"
};
const uint8_t aluBinaryOperations[] = {
    ALU_SUB,
    ALU_ADD,
    ALU_XOR,
    ALU_AND,
    ALU_OR
};
const char * aluBinaryNames[] = {
    "SUB", "ADD", "XOR", "AND", "OR"
};

enum {
    CTL_FN = 0x8000, // load Negative flag
    CTL_FV = 0x4000, // load oVerflow flag
    CTL_FZ = 0x2000, // load Zero flag
    CTL_FC = 0x1000, // load Carry flag
    CTL_FB = 0x0800, // flag source from bus
    CTL_SE = 0x0400, // stack pointer count enable
    CTL_C1 = 0x0200, // carry select 0
    CTL_C0 = 0x0100, // carry select 1
    CTL_CS = 0x0080, // carry flag force set
    CTL_CC = 0x0040, // carry flag force clear
    CTL_M1 = 0x0020, // memory select 1
    CTL_M0 = 0x0010, // memory select 0
    CTL_LF = 0x0008, // ALU force select line
    CTL_JE = 0x0004, // conditional jump enable
    CTL_N  = 0x0002, // next instruction (clear ring counter)
    CTL_PI = 0x0001, // program counter increment

    CTL_DY = CTL_C0,    // C0 and C1 also used to select source for the DXY Adder
    CTL_DZ = CTL_C1,
    CTL_SP_DN = CTL_C0, // C0 and C1 also used to control SP count direction
    CTL_SP_UP = CTL_C1,

    CTL_ALL_FLAGS = CTL_FN | CTL_FV | CTL_FZ | CTL_FC,

    CTL_C_ALU = 0,              // carry source ALU
    CTL_C_ALU_INV = CTL_C0,     // carry source ALU inverted
    CTL_C_SHIFT = CTL_C1,       // carry source Shift Register
    CTL_C_MASK = CTL_C0|CTL_C1, // all carry source bits

    CTL_NONE = 0x0000,
    CTL_ALL = 0xffff
};

// Flag bits as they are read and written to the bus.  Also used as arguments to writeFlags.
enum {
  FB_N    = 0x80,
  FB_V    = 0x40,
  FB_Z    = 0x02,
  FB_C    = 0x01,
  FB_NONE = 0x00,
  FB_ALL  = 0xc3
};

enum {
    REG_NONE= 0x00,    // No register selected
    REG_MEM = 0x01, // r/w
    REG_MAR = 0x02, // write-only
    REG_SP  = 0x06, // r/w
    REG_PC =  0x07, // r/w
    REG_A =   0x08, // r/w
    REG_B =   0x09, // r/w
    REG_H =   0x0a, // read-only
    REG_OUT = 0x0a, // write-only
    REG_X =   0x0b, // r/w
    REG_Y =   0x0c, // r/w
    REG_D =   0x0d, // r/w
    REG_ALU = 0x0e, // read-only
    REG_IR =  0x0f, // write-only
    REG_FLG = 0x0f  // read-only
};


static uint8_t valSelects = 0;

static const char * registerNames[] = {
    "none", "MEM", "MAR", "03", "04",  "05",  "SP",  "PC",
    "A",    "B",   "OUT", "X",  "Y",   "D",   "OUT", "ALU"
};
static const unsigned woRegisters[] = { REG_MAR, REG_IR, REG_OUT };
static const unsigned rwRegisters[] = { REG_D, REG_X, REG_Y, REG_SP, REG_PC, REG_A, REG_B };
static unsigned numWoRegisters() { return sizeof(woRegisters) / sizeof(*woRegisters); }
static unsigned numRwRegisters() { return sizeof(rwRegisters) / sizeof(*rwRegisters); }

#if 0
static void waitForUser(const char * s = 0) {
    if (s) {
        Serial.println(s);
    }
    while (Serial.read() == -1) {}
}
#endif

static void controlBitsOffOn(uint16_t clearBits, uint16_t setBits);
static void selectRegister();

LoaderHw::LoaderHw(uint32_t size)
    : mSize(size), mEnabled(false)
{}


void LoaderHw::begin() {
    // The loader's data bus is connected directly to the host bus.  Define the
    // data bus as input initially so that it does not put out a signal that
    // could collide with host outputs on the bus.
    // Care must be taken to ensure that the bus is never left in the OUTPUT
    // mode when control is handed back to the host computer.
    setDataBusMode(INPUT);

    // External pull-up resistors are present on RST and PGM.  An external pull-down is on
    // CLK.  This allows the system to function as normal if the arduino is not present,
    // although without a way to load programs there isn't a lot that the system will do.
    digitalWrite(LD0, LOW);     // Normally LOW, pulse HIGH to clock the R0/R1 registers
    pinMode(LD0, OUTPUT);
    digitalWrite(SER, LOW);     // Serial data to the shift registers
    pinMode(SER, OUTPUT);
    digitalWrite(RCLK, LOW);    // Normally LOW, pulse HIGH to put shift register data on the pins
    pinMode(RCLK, OUTPUT);
    digitalWrite(LD2, LOW);     // Normally LOW, pulse HIGH to clock the R2 register
    pinMode(LD2, OUTPUT);
    digitalWrite(PGM, HIGH);    // PGM is active LOW
    pinMode(PGM, OUTPUT);
    digitalWrite(RST, HIGH);    // RST is active LOW
    pinMode(RST, OUTPUT);
    digitalWrite(CLK, LOW);     // Normally LOW.  Pulse high-low to generate a clock
    pinMode(CLK, OUTPUT);
    disable();
}

void LoaderHw::disable() {
  // Make sure the loader data bus and register selects are not putting out a signal and
  // then return control to the host.
  setDataBusMode(INPUT);
  digitalWrite(PGM, HIGH);
  mEnabled = false;
}

void LoaderHw::enable() {
    if (!mEnabled) {
        setDataBusMode(INPUT);
        digitalWrite(PGM, LOW);
        valSelects = 0;
        selectRegister();
        controlBitsOffOn(CTL_ALL, CTL_NONE);
        mEnabled = true;
        delay(1);
    }
}

// Generate one pulse on the host clock
void LoaderHw::clkPulse() {
    delayMicroseconds(1);
    digitalWrite(CLK, HIGH);
    delayMicroseconds(1);
    digitalWrite(CLK, LOW);
    delayMicroseconds(1);
}

// Generate one exteremely long pulse on the host clock to allow probing of the rising
// and falling edge
void LoaderHw::longPulse() {
    clkPulse();
//    delay(500);
//    digitalWrite(CLK, HIGH);
//    delay(1000);
//    digitalWrite(CLK, LOW);
}

// Generate one reset pulse to the host
void LoaderHw::reset() {
    digitalWrite(RST, LOW);
    delayMicroseconds(4);
    digitalWrite(RST, HIGH);
    delay(1);
}

void LoaderHw::clearAll() {
    writeFlags(0);
    for (int ix = 1; (ix < 16); ix++) {
        writeRegister(ix, 0);
    }
    writeControls(0);
    selectReadRegister(REG_NONE);
    selectWriteRegister(REG_NONE);
}

// Return a name for a given register number
const char * LoaderHw::registerName(int registerNumber)
{
    return registerNames[registerNumber];
}

uint8_t LoaderHw::readRegister(uint8_t reg) {
    selectReadRegister(reg);
    delayMicroseconds(3);
    uint8_t data = readDataBus();
    delayMicroseconds(1);
    return data;
}

void LoaderHw::writeRegister(uint8_t reg, uint8_t data) {
    selectWriteRegister(reg);
    setDataBusMode(OUTPUT);
    writeDataBus(data);
    clkPulse();
    setDataBusMode(INPUT);
}

void LoaderHw::transferRegister(uint8_t wReg, uint8_t rReg) {
    selectReadRegister(rReg);
    selectWriteRegister(wReg);
    clkPulse();
}

// Write a block of data to the memory.
bool LoaderHw::writeData(const byte data[], uint32_t len, uint32_t address) {
    bool status = true;

    for (uint32_t ix = 0; (ix < len); ix++) {
        if (burnByte(data[ix], address + ix) == false) {
            status = false;
            break;
        }
    }
    return status;
}

// Read a byte from a given address
byte LoaderHw::readByte(uint32_t address) {
    byte data = 0;

    setAddress(address);
    setDataBusMode(INPUT);
    selectReadRegister(REG_MEM);
    selectWriteRegister(0);
    delayMicroseconds(1);
    data = readDataBus();
    delayMicroseconds(1);

    return data;
}

void LoaderHw::writeControls(uint16_t data) {
    enable();
    controlBitsOffOn(CTL_ALL, data);
}

bool LoaderHw::testHardware() {
    unsigned ix;

    enable();
    clearAll();

    for (uint8_t bit = 0x80; bit; bit >>= 1) {
        valSelects = bit;
        selectRegister();
        delay(DELAY_LEDS);
    }
    valSelects = 0;
    selectRegister();
    delay(DELAY_LEDS);

    for (uint16_t bit = 0x8000; bit; bit >>= 1) {
        controlBitsOffOn(CTL_ALL, bit);
        delay(DELAY_LEDS);
    }
    controlBitsOffOn(CTL_ALL, CTL_NONE);
    delay(DELAY_LEDS);
    controlBitsOffOn(CTL_ALL, CTL_N|CTL_DZ);

    for (ix = 0; (ix < numWoRegisters()); ix++) {
        if (!testRegister(woRegisters[ix], false)) {
            return false;
        }
    }

    for (ix = 0; (ix < numRwRegisters()); ix++) {
        unsigned reg = rwRegisters[ix];
        if (reg == REG_X)        controlBitsOffOn(CTL_DY|CTL_DZ, CTL_NONE);
        else if (reg == REG_Y)   controlBitsOffOn(CTL_DZ, CTL_DY);
        else                     controlBitsOffOn(CTL_DY, CTL_DZ);
        if (!testRegister(reg, true)) {
            return false;
        }
    }
    controlBitsOffOn(CTL_DY, CTL_DZ);

    bool ret = testFlags();
    if (ret) ret = testAdder();
    if (ret) ret = testCounters(11);
    if (ret) ret = testShifter();
    if (ret) ret = testMemory();
    if (ret) ret = testAlu();

    if (ret) {
        // Leave the registers as-is if a test failed, otherwise clear all registers.
        clearAll();
    }
    return ret;
}


////////////////////////////////////////////////
// BEGIN PRIVATE METHODS
//
////////////////////////////////////////////////

// Burn a byte to the memory and verify that it was written.
bool LoaderHw::burnByte(byte value, uint32_t address) {
    enable();
    setAddress(address);
    setDataBusMode(OUTPUT);
    selectWriteRegister(REG_MEM);
    writeDataBus(value);
    clkPulse();
    selectWriteRegister(REG_NONE);
    setDataBusMode(INPUT);
    delayMicroseconds(1);

    return true;
}


bool LoaderHw::valueTest(uint8_t writeVal, uint8_t readVal, const char * s) {
    if (readVal != writeVal) {
        Serial.print(F("failed"));
        Serial.print(s);
        Serial.print(F(", read="));
        Serial.print(readVal, HEX);
        Serial.print(F(", expected="));
        Serial.println(writeVal, HEX);
        return false;
    }
    return true;
}

static const uint8_t patterns[] = {
    0x00, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80,
    0x00, 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff,
    0xff, 0xfe, 0xfd, 0xfb, 0xf7, 0xef, 0xdf, 0xbf, 0xff,
    0xff, 0x7f, 0x3f, 0x1f, 0x0f, 0x07, 0x03, 0x01, 0x00,
    0xaa, 0x55, 0xaa, 0x55, 0xcc, 0x33, 0xcc, 0x33, 0x00
};

bool LoaderHw::testRegister(unsigned reg, bool isRw) {
    Serial.print(F("Testing "));
    Serial.print(registerNames[reg]);
    Serial.print(": ");

    for (unsigned ix = 0; (ix < sizeof(patterns)); ix++) {
        writeRegister(reg, patterns[ix]);
        delayMicroseconds(2);
        selectWriteRegister(0);
        uint8_t readVal = readRegister(reg);
        delay(DELAY_LEDS);
        if (isRw && !valueTest(patterns[ix], readVal))  return false;
    }

    Serial.println(F("pass"));
    selectReadRegister(REG_NONE);
    selectWriteRegister(REG_NONE);
    return true;
}

// Test the conditional jump by loading a value into the PC and a different value into
// the SP.  Read the SP onto the bus and then test the PC after a clock cycle with the
// JE signal asserted.  If the PC takes the SP value, then a conditional jump happened.
bool LoaderHw::jumpTest(uint8_t f, uint8_t jmp) {
    enum { JUMP_YES = 0x0f, JUMP_NO = 0xf0 };

    writeRegister(REG_IR, jmp);
    writeRegister(REG_SP, JUMP_YES);
    writeRegister(REG_PC, JUMP_NO);
    selectWriteRegister(REG_NONE);
    controlBitsOffOn(CTL_NONE, CTL_JE);
    selectReadRegister(REG_SP);
    clkPulse();
    uint8_t pc = readRegister(REG_PC);
    bool jumped = false;
    if (pc == JUMP_YES) jumped = true;
    else if (pc != JUMP_NO) {
        Serial.print(F("failed, invalid PC value="));
        Serial.println(pc, HEX);
    }

    // The lower three bits of the IR select the jump condition.  They follow the same
    // order as the flag bits on the bus, alternating between flag set and not set.  The
    // conditions, starting from zero, are: [CS, CC, ZS, ZC, VS, VC, NS, NC].  With this
    // order, the LSB of the IR determines jump on set or clear and the next two bits
    // determine the flag that is being checked.
    uint8_t bit = 1 << (jmp >> 1);
    bool shouldJump = ((jmp & 1)==0) == ((f & bit)==bit);
    if (jumped != shouldJump) {
        char s[60];
        Serial.print(F("failed conditional jump, jumped="));
        sprintf(s, "%d, flags=%02x, jmp type=%d", jumped, f, jmp);
        Serial.println(s);
        return false;
    }

    controlBitsOffOn(CTL_JE, CTL_NONE);
    return true;
}

bool LoaderHw::testFlags() {
    Serial.print(F("Testing flags: "));
    for (uint8_t ix = 0; (ix < 16); ix++) {
        uint8_t flags = ((ix & 0x0c) << 4) | (ix & 0x03);
        writeFlags(flags);
        uint8_t readVal = readRegister(REG_FLG);
        selectReadRegister(REG_NONE);
        delay(DELAY_LEDS);
        if (readVal != flags) {
            char s[60];
            sprintf(s, "failed, read=%02x, expected=%02x", readVal, flags);
            Serial.println(s);
            return false;
        }
        for (uint8_t jmp = 0; (jmp < 8); jmp++) {
            if (!jumpTest(ix, jmp))  return false;
        }
    }
    writeFlags(FB_NONE);
    Serial.println(F("pass"));
    return true;
}

bool LoaderHw::testCounters(uint8_t count) {
    Serial.print(F("Testing counters: "));

    for (unsigned ix = 0; (ix < sizeof(patterns)); ix++) {
        uint8_t writeVal = patterns[ix];
        writeRegister(REG_PC, writeVal);
        delayMicroseconds(2);
        writeRegister(REG_SP, writeVal);
        delayMicroseconds(2);
        selectWriteRegister(0);
        uint8_t readVal = readRegister(REG_PC);
        readRegister(REG_NONE);
        delay(20);
        if (!valueTest(writeVal, readVal, " PC read"))  return false;
        readVal = readRegister(REG_SP);
        readRegister(REG_NONE);
        if (!valueTest(writeVal, readVal, " SP read"))  return false;
        controlBitsOffOn(CTL_SP_DN, CTL_PI|CTL_SE|CTL_SP_UP);
        for (int jx = 0; (jx < count); jx++) {
            clkPulse();
            delay(3);
        }
        readVal = readRegister(REG_PC);
        if (!valueTest(writeVal + count, readVal, " PC inc"))  return false;
        readVal = readRegister(REG_SP);
        if (!valueTest(writeVal + count, readVal, " SP inc"))  return false;
        controlBitsOffOn(CTL_PI|CTL_SP_UP, CTL_SE|CTL_SP_DN);
        readRegister(REG_NONE);
        for (int jx = 0; (jx <= count); jx++) {
            clkPulse();
            delay(3);
        }
        readVal = readRegister(REG_SP);
        readRegister(REG_NONE);
        if (!valueTest(writeVal - 1, readVal, " SP dec"))  return false;
        controlBitsOffOn(CTL_PI|CTL_SE|CTL_SP_DN|CTL_SP_UP, CTL_NONE);
    }

    Serial.println(F("pass"));
    selectReadRegister(REG_NONE);
    selectWriteRegister(REG_NONE);
    return true;
}

bool LoaderHw::shiftTest(uint8_t val, uint8_t carry) {
    uint8_t expected;

    writeRegister(REG_B, val);
    delayMicroseconds(2);
    selectWriteRegister(0);
    if (carry) {
        expected = 0x80 | (val >> 1);
        controlBitsOffOn(CTL_CC, CTL_CS|CTL_FC|CTL_C_SHIFT);
    } else {
        expected = val >> 1;
        controlBitsOffOn(CTL_CS, CTL_CC|CTL_FC|CTL_C_SHIFT);
    }
    uint8_t readVal = readRegister(REG_H);
    clkPulse();
    uint8_t readFlags = readRegister(REG_FLG);
    delay(DELAY_LEDS);
    // The C flag is the LSB of the flags word and it should be equal to the LSB of val.
    if ((readVal != expected) || ((val^readFlags) & FB_C)) {
        char s[60];
        sprintf(s, "failed, B=%02x, shift=%02x, expected=%02x, cin=%d cout=%d",
                val, readVal, expected, carry, readFlags & FB_C);
        Serial.println(s);
        return false;
    }

    return true;
}

bool LoaderHw::testShifter() {
    Serial.print(F("Testing shifter: "));
    for (unsigned ix = 0; (ix < sizeof(patterns)); ix++) {
        if (!shiftTest(patterns[ix], 0) || !shiftTest(patterns[ix], 1)) {
            return false;
        }
    }
    controlBitsOffOn(CTL_CS|CTL_CC, CTL_NONE);
    Serial.println(F("pass"));
    return true;
}

bool LoaderHw::testMemory() {
    unsigned numPatterns = sizeof(patterns);
    unsigned addr;

    Serial.print(F("Testing memory: "));
    for (unsigned offset = 0; (offset < numPatterns); offset++) {
        for (addr = 0; (addr < 256); addr++) {
            burnByte(patterns[(offset + addr) % numPatterns], addr);
        }
        for (addr = 0; (addr < 256); addr++) {
            uint8_t readVal = readByte(addr);
            uint8_t expectedVal = patterns[(offset + addr) % numPatterns];
            if (readVal != expectedVal) {
                char s[60];
                sprintf(s, "failed at %02x, read=%02x, expected=%02x", addr, readVal, expectedVal);
                Serial.println(s);
                return false;
            }
        }
    }

    burnByte(0, 0);  // set MAR back to zero
    selectReadRegister(REG_NONE);
    selectWriteRegister(REG_NONE);
    Serial.println(F("pass"));
    return true;
}


bool LoaderHw::testAlu() {
    unsigned numPatterns = sizeof(patterns);
    unsigned numOperations = sizeof(aluUnaryOperations);
    uint8_t op;

    Serial.print(F("Testing ALU unary operations: "));
    for (unsigned opIndex = 0; (opIndex < numOperations); opIndex++) {
        for (unsigned aIndex = 0; (aIndex < numPatterns); aIndex++) {
            op = aluUnaryOperations[opIndex];
            if (!testAluOperation(op, aluUnaryNames[opIndex], patterns[aIndex], patterns[aIndex], 0)) {
                return false;
            }
            if (isAluArithmetic(op) && !testAluOperation(op, aluUnaryNames[opIndex], patterns[aIndex], patterns[aIndex], 1)) {
                return false;
            }
        }
    }
    Serial.println(F("pass"));

    numOperations = sizeof(aluBinaryOperations);
    Serial.print(F("Testing ALU binary operations: "));
    for (unsigned opIndex = 0; (opIndex < numOperations); opIndex++) {
        for (unsigned aIndex = 0; (aIndex < numPatterns); aIndex++) {
            for (unsigned bIndex = 0; (bIndex < numPatterns); bIndex++) {
			    op = aluBinaryOperations[opIndex];
                if (!testAluOperation(op, aluBinaryNames[opIndex], patterns[aIndex], patterns[bIndex], 0)) {
                    return false;
                }
                if (isAluArithmetic(op) && !testAluOperation(op, aluBinaryNames[opIndex], patterns[aIndex], patterns[bIndex], 1)) {
                    return false;
                }
            }
        }
    }
    Serial.println(F("pass"));
    return true;
}

bool LoaderHw::testAluOperation(uint8_t op, const char * opName, uint8_t a, uint8_t b, uint8_t carry) {
    char s[60];
    uint16_t readVal = aluCompute(op, a, b, carry);
    uint16_t expectedVal = localCompute(op, a, b, carry);
    if (readVal != expectedVal) {
        sprintf(s, "failed on %s with a=%02x b=%02x, c=%d, result=%02x, expected=%02x", opName, a, b, carry, readVal, expectedVal);
        Serial.println(s);
        return false;
    }
    return true;
}

uint16_t LoaderHw::aluCompute(uint8_t op, uint8_t a, uint8_t b, uint8_t carry) {
    controlBitsOffOn(CTL_CS|CTL_CC|CTL_C_MASK|CTL_ALL_FLAGS, CTL_NONE);
    writeRegister(REG_IR, op);
    writeRegister(REG_A, a);
    writeRegister(REG_B, b);
    writeFlags(0);
    uint16_t carrySelect = CTL_C_ALU_INV;
    if ((op == ALU_DEC) || (op == ALU_SUB)) {
        carrySelect = CTL_C_ALU;
    }
    uint16_t setFlags = CTL_FZ;
    if (isAluArithmetic(op)) {
        // Set N and C for arithmetic operations
        setFlags |= CTL_FN|CTL_FC;
    }
    if ((op == ALU_ADD) || (op == ALU_SUB)) {
        // Set V only for addition and subtraction
        setFlags |= CTL_FV;
    }
    if (carry) {
        // Set C0 to select Carry Flag source as inverted ALU carry out
        controlBitsOffOn(CTL_ALL_FLAGS|CTL_CC, CTL_CS|carrySelect|setFlags);
    } else {
        controlBitsOffOn(CTL_ALL_FLAGS|CTL_CS, CTL_CC|carrySelect|setFlags);
    }
    uint16_t result = readRegister(REG_ALU);
    clkPulse();  // Load flag registers
    result |= readRegister(REG_FLG) << uint16_t(8);
    return result;
}

uint16_t LoaderHw::localCompute(uint8_t op, uint8_t a, uint8_t b, uint8_t carry) {
    uint16_t ret = 0;
    uint16_t flags = 0;

    switch (op) {
    case ALU_INC: ret = a + carry;            break;
    case ALU_SUB: ret = a - b - 1 + carry;    break;
    case ALU_ADD: ret = a + b + carry;        break;
    case ALU_SHL: ret = a + a + carry;        break;
    case ALU_DEC: ret = a - 1 + carry;        break;
    case ALU_NOT: ret = ~a;                   break;
    case ALU_XOR: ret = a ^ b;                break;
    case ALU_B:   ret = b;                    break;
    case ALU_AND: ret = a & b;                break;
    case ALU_OR:  ret = a | b;                break;
    }

    if (isAluArithmetic(op)) {
        // Trim the signed result to 8 bits and leave 9th intact as the carry flag bit.
        ret &= 0x1ff;
        if (ret & 0x80) {
            // Calculate the Negative flag for arithmetic operations.
            flags |= FB_N;
        }
    } else {
        // Just keep the bottom 8 bits for logical operations.
        ret &= 0xff;
    }

    // Calculate the Zero flag for all operations.
    if ((ret & 0xff) == 0) {
        flags |= FB_Z;
    }

    // Set oVerflag only for addition and subtraction
    if ((op == ALU_ADD) && ((a^ret) & (b^ret) & 0x80)) {
        // For addition, set V if A and B both have a different sign than the result. This
        // implies that A and B have the same sign.
        flags |= FB_V;
    } else if ((op == ALU_SUB) && ((a^b) & (a^ret) & 0x80)) {
        // For subtraction, set V if A and B both have a different sign from each other
        // and A has a different sign than the result.
        flags |= FB_V;
    }

    // Put the flags in the upper 8 bits.  Note that the Carry bit is the LSB of the flags,
    // so it was already in the correct position as the 9th bit of an arithmetic result.
    return ret | (flags << 8);
}

bool LoaderHw::testAdder() {
    unsigned numPatterns = sizeof(patterns);

    Serial.print(F("Testing DXY adder: "));
    for (unsigned aIndex = 0; (aIndex < numPatterns); aIndex++) {
        delay(DELAY_LEDS);
        for (unsigned bIndex = 0; (bIndex < numPatterns); bIndex++) {
            if (!testAdderOperation(patterns[aIndex], patterns[bIndex])) {
                return false;
            }
        }
    }
    Serial.println(F("pass"));
    return true;
}


bool LoaderHw::testAdderOperation(uint8_t a, uint8_t b) {
    controlBitsOffOn(CTL_DY|CTL_DZ, CTL_NONE);
    writeRegister(REG_X, a);
    writeRegister(REG_Y, 0);
    writeRegister(REG_D, b);
    writeRegister(REG_Y, 0);
    writeRegister(REG_NONE, 0); // don't want the next CLK to write the D register
    uint8_t readVal = readRegister(REG_D);
    uint8_t expectedVal = a + b;
    if (readVal != expectedVal) {
        char s[60];
        sprintf(s, "FAILED to add - X=%02x D=%02x, result=%02x, expected=%02x", a, b, readVal, expectedVal);
        Serial.println(s);
        return false;
    }

    // Test that the Adder result can be transfered back to Y without corruption
    transferRegister(REG_Y, REG_D);
    selectWriteRegister(REG_NONE);
    readVal = readRegister(REG_Y);
    if (readVal != expectedVal) {
        char s[60];
        sprintf(s, "FAILED to transfer - Y=%02x D=%02x, result=%02x, expected=%02x", a, b, readVal, expectedVal);
        Serial.println(s);
        return false;
    }

    return true;
}

void LoaderHw::writeFlags(uint8_t flags) {
    selectWriteRegister(REG_NONE);
    setDataBusMode(OUTPUT);
    writeDataBus(flags);
    controlBitsOffOn(CTL_NONE, CTL_FB|CTL_ALL_FLAGS);
    clkPulse();
    selectWriteRegister(REG_NONE);
    setDataBusMode(INPUT);
    controlBitsOffOn(CTL_FB|CTL_ALL_FLAGS, CTL_NONE);
}

// Set bits in the control register.  Any bits in the clearBits mask will be turned off
// and any bits in the setBits mask will be turned on.  If the same bit is present in the
// clearBits and in the setBits, it will be set.  Any bits that don't appear in either
// mask will remain unchanged.
// Examples:
//   controlBitsOffOn(CTL_ALL, CTL_NONE)      - All bits off
//   controlBitsOffOn(CTL_NONE, ALL)          - All bits on
//   controlBitsOffOn(CTL_NONE, CTL_PI|CTL_N) - PI and N bits on, others unchanged
//   controlBitsOffOn(CTL_ALL, CTL_PI|CTL_N)  - PI and N bits on, others off
static void controlBitsOffOn(uint16_t clearBits, uint16_t setBits) {
    static uint16_t controls = 0;

    controls &= ~clearBits;
    controls |= setBits;
    for (uint16_t bit = 0x8000; (bit); bit >>= 1) {
        if (controls & bit)
            PORTC |= PC_SER;
        else
            PORTC &= ~PC_SER;

        PORTC |= PC_LD0;
        PORTC &= ~PC_LD0;
    }
    PORTC |= PC_RCLK;
    PORTC &= ~PC_RCLK;
/*
    shiftOut(SER, LD0, MSBFIRST, (controls >> 8) & 0xff);
    shiftOut(SER, LD0, MSBFIRST, controls & 0xff);
    digitalWrite(RCLK, HIGH);
    digitalWrite(RCLK, LOW);
*/
}

static void selectRegister() {
    for (uint8_t bit = 0x80; (bit); bit >>= 1) {
        if (valSelects & bit)
            PORTC |= PC_SER;
        else
            PORTC &= ~PC_SER;

        PORTC |= PC_LD2;
        PORTC &= ~PC_LD2;
    }
    PORTC |= PC_RCLK;
    PORTC &= ~PC_RCLK;

//    shiftOut(SER, LD2, MSBFIRST, valSelects);
//    digitalWrite(RCLK, HIGH);
//    digitalWrite(RCLK, LOW);
}

void LoaderHw::selectWriteRegister(uint8_t reg) {
    if (reg != REG_NONE) {
        enable();
    }
    valSelects = (valSelects & 0x0f) | reg << 4;
    selectRegister();
}

void LoaderHw::selectReadRegister(uint8_t reg) {
    if (reg != REG_NONE) {
        // Make sure the loader is not on the bus if a register is selected.
        setDataBusMode(INPUT);
        enable();
    }
    valSelects = (valSelects & 0xf0) | reg;
    selectRegister();
}

// Set the I/O state of the data bus.
// The first two bits of port D are used for serial, so the 8 bits data bus are
// on pins D2..D9.
void LoaderHw::setDataBusMode(uint8_t mode) {
    // On the Uno and Nano, D2..D9 maps to the upper 6 bits of port D and the
    // lower 2 bits of port B.
    if (mode == OUTPUT) {
        // Make sure that none of the host hardware registers are also writing to the bus.
        selectReadRegister(REG_NONE);
        DDRB |= 0x03;
        DDRD |= 0xfc;
    } else {
        DDRB &= 0xfc;
        DDRD &= 0x03;
    }
}

// Set an 8 bit address using the 8 address/data bus and latch it into the MAR
void LoaderHw::setAddress(uint32_t address) {
    // NOTE: Must call selectWriteRegister before setting the bus because the call to
    // selectWriteRegister may call enable and that will reset the bus.
    selectWriteRegister(REG_MAR);
    setDataBusMode(OUTPUT);
    writeDataBus(byte(address & 0xff));
    clkPulse();
    selectWriteRegister(REG_NONE);
    setDataBusMode(INPUT);
}

// Read a byte from the data bus.  The caller must set the bus to input_mode
// before calling this or no useful data will be returned.
byte LoaderHw::readDataBus() {
    return (PINB << 6) | (PIND >> 2);
}

// Write a byte to the data bus.  The caller must set the bus to output_mode
// before calling this or no data will be written.
void LoaderHw::writeDataBus(byte data) {
     PORTB = (PORTB & 0xfc) | (data >> 6);
     PORTD = (PORTD & 0x03) | (data << 2);
}
