#ifndef INCLUDE_LOADER_HW
#define INCLUDE_LOADER_HW

#include "Arduino.h"

/*****************************************************************************/
/*****************************************************************************/
/**
 * LoaderHw class
 *
 * Provides the device-specific interface to read and write registers and RAM.
 */


class LoaderHw
{
  public:
    LoaderHw(uint32_t size);
    void begin();
    void enable();
    void disable();
    bool isActive() { return mEnabled; }
    void clkPulse();
    void longPulse();
    void reset();
    void clearAll();
    const char * registerName(int registerNumber);
    uint8_t readRegister(uint8_t reg);
    void writeRegister(uint8_t reg, uint8_t data);
    void transferRegister(uint8_t wReg, uint8_t rReg);
    bool writeData(const byte data[], uint32_t len, uint32_t address);
    byte readByte(uint32_t address);
    void writeControls(uint16_t data);
    bool testHardware();

  protected:
    uint32_t mSize;                 // Size of the RAM, in bytes
    bool mEnabled;

    bool burnByte(byte value, uint32_t address);
    bool valueTest(uint8_t writeVal, uint8_t readVal, const char * s="");
    bool testRegister(unsigned reg, bool isRw);
    bool jumpTest(uint8_t f, uint8_t jmp);
    bool testFlags();
    bool testStack();
    bool shiftTest(uint8_t val, uint8_t carry);
    bool testShifter();
    bool testMemory();
    bool testAlu();
    bool testAluOperation(uint8_t op, const char * opName, uint8_t a, uint8_t b, uint8_t carry);
    uint16_t aluCompute(uint8_t op, uint8_t a, uint8_t b, uint8_t carry);
    uint16_t localCompute(uint8_t op, uint8_t a, uint8_t b, uint8_t carry);
    bool testAdder();
    bool testAdderOperation(uint8_t a, uint8_t b);
    void writeFlags(uint8_t flags);

    void selectWriteRegister(uint8_t reg);
    void selectReadRegister(uint8_t reg);
    void setDataBusMode(uint8_t mode);
    void setAddress(uint32_t address);
    byte readDataBus();
    void writeDataBus(byte data);
};

#endif  // #define INCLUDE_LOADER_HW
