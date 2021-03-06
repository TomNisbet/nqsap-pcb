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
};
