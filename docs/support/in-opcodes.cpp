// Opcode comments - aid in verification of microcode tables
    // 00 IP_NOP   3
    // 01 AA_INA * 3
    // 02 AB_INC * 7
    // 03 AX_INC * 8
    // 04
    // 05 IP_INX * 6
    // 06 IP_INY * 6
    // 07
    // 08 AA_NOT * 3
    // 09
    // 0a
    // 0b
    // 0c
    // 0d
    // 0e
    // 0f
    // 10 IP_OUT   3
    // 11 IM_LDA   4
    // 12 AB_LDA   5
    // 13 AX_LDA   6
    // 14 AY_LDA   6
    // 15 IX_LDA   7
    // 16 IY_LDA   7
    // 17
    // 18
    // 19 IM_LDX   4
    // 1a AB_LDX   5
    // 1b IP_TAX   3
    // 1c AY_LDX   6
    // 1d IP_TSX   3
    // 1e
    // 1f
    // 20
    // 21
    // 22 AB_STA   5
    // 23 AX_STA   6
    // 24 AY_STA   6
    // 25 IX_STA   7
    // 26 IY_STA   7
    // 27
    // 28
    // 29
    // 2a AB_STX   5
    // 2b IP_TXA   3
    // 2c AY_STX   6
    // 2d IP_TXS   3
    // 2e
    // 2f
    // 30 IP_CLC * 3
    // 31 IP_SEC * 3
    // 32 IP_CLV * 3
    // 33
    // 34
    // 35
    // 36
    // 37
    // 38
    // 39 IM_LDY   4
    // 3a AB_LDY   5
    // 3b AX_LDY   6
    // 3c IP_TAY   3
    // 3d
    // 3e
    // 3f
    // 40
    // 41
    // 42
    // 43
    // 44
    // 45
    // 46
    // 47
    // 48
    // 49
    // 4a AB_STY   5
    // 4b AX_STY   6
    // 4c IP_TYA   3
    // 4d
    // 4e
    // 4f
    // 50
    // 51
    // 52
    // 53
    // 54
    // 55
    // 56
    // 57
    // 58
    // 59
    // 5a
    // 5b
    // 5c
    // 5d
    // 5e
    // 5f
    // 60 IM_CPX * 7
    // 61 IM_SBC * 5
    // 62 AB_SBC * 6
    // 63 AX_SBC * 7
    // 64 AY_SBC * 7
    // 65 IX_SBC * 8
    // 66 IY_SBC * 8
    // 67 AB_CPX * 8
    // 68 IP_PHA   4
    // 69 IM_EOR * 5
    // 6a AB_EOR * 6
    // 6b AX_EOR * 7
    // 6c AY_EOR * 7
    // 6d IX_EOR * 8
    // 6e IY_EOR * 8
    // 6f
    // 70 IM_CPY * 7
    // 71 IM_CMP * 5
    // 72 AB_CMP * 6
    // 73 AX_CMP * 7
    // 74 AY_CMP * 7
    // 75 IX_CMP * 8
    // 76 IY_CMP * 8
    // 77 AB_CPY * 8
    // 78
    // 79
    // 7a
    // 7b
    // 7c
    // 7d
    // 7e
    // 7f
    // 80
    // 81
    // 82
    // 83
    // 84
    // 85
    // 86
    // 87
    // 88
    // 89
    // 8a
    // 8b
    // 8c
    // 8d
    // 8e
    // 8f
    // 90 IP_PHP   4
    // 91 IM_ADC * 5
    // 92 AB_ADC * 6
    // 93 AX_ADC * 7
    // 94 AY_ADC * 7
    // 95 IX_ADC * 8
    // 96 IY_ADC * 8
    // 97
    // 98
    // 99
    // 9a
    // 9b
    // 9c
    // 9d
    // 9e
    // 9f
    // a0 IP_RTS   5
    // a1
    // a2 AB_JSR   7
    // a3
    // a4
    // a5
    // a6
    // a7
    // a8
    // a9
    // aa
    // ab
    // ac
    // ad
    // ae
    // af
    // b0 IN_JMP   5
    // b1
    // b2 AB_JMP   4
    // b3
    // b4
    // b5
    // b6
    // b7
    // b8 AB_BIT * 5
    // b9 IM_AND * 5
    // ba AB_AND * 6
    // bb AX_AND * 7
    // bc AY_AND * 7
    // bd IX_AND * 8
    // be IY_AND * 8
    // bf
    // c0 AA_ASL * 4
    // c1
    // c2 AB_ASL * 8
    // c3 AX_ASL * 9
    // c4 AA_ROL * 4
    // c5
    // c6 AB_ROL * 8
    // c7 AX_ROL * 9
    // c8 RE_BCS   8
    // c9 RE_BCC   8
    // ca RE_BEQ   8
    // cb RE_BNE   8
    // cc RE_BVS   8
    // cd RE_BVC   8
    // ce RE_BMI   8
    // cf RE_BPL   8
    // d0 AA_LSR   4
    // d1
    // d2 AB_LSR   6
    // d3 AX_LSR   7
    // d4 AA_ROR   4
    // d5
    // d6 AB_ROR   6
    // d7 AX_ROR   7
    // d8 AB_JCS   4
    // d9 AB_JCC   4
    // da AB_JEQ   4
    // db AB_JNE   4
    // dc AB_JVS   4
    // dd AB_JVC   4
    // de AB_JMI   4
    // df AB_JPL   4
    // e0
    // e1
    // e2
    // e3
    // e4
    // e5
    // e6
    // e7
    // e8 IP_PLA   5
    // e9 IM_ORA * 5
    // ea AB_ORA * 6
    // eb AX_ORA * 7
    // ec AY_ORA * 7
    // ed IX_ORA * 8
    // ee IY_ORA * 8
    // ef
    // f0 IP_PLP   5
    // f1 AA_DEA * 3
    // f2 AB_DEC * 7
    // f3 AX_DEC * 8
    // f4
    // f5 IP_DEX * 6
    // f6 IP_DEY * 6
    // f7
    // f8
    // f9
    // fa
    // fb
    // fc
    // fd
    // fe
    // ff
};
