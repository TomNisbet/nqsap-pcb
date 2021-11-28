---
title: "NQSAP Instructions by Opcode"
permalink: /docs/in-by-opcode/
excerpt: "NQSAP Computer Instruction set by opcode"
---

## NQSAP Instructions by Opcode

|      |  x0  |  x1  |  x2  |  x3  |  x4  |  x5  |  x6  |  x7  |  x8  |  x9  |  xa  |  xb  |  xc  |  xd  |  xe  |  xf  |
|:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |:---: |
|**0x**|[IP_NOP](../in-details#nop)|[**AA_INA**](../in-details#ina)|[**AB_INC**](../in-details#inc)|[**AX_INC**](../in-details#inc)|      |[**IP_INX**](../in-details#inx)|[**IP_INY**](../in-details#iny)|      |[**AA_NOT**](../in-details#not)|      |      |      |      |      |      |      |
|**1x**|[IP_OUT](../in-details#out)|[IM_LDA](../in-details#lda)|[AB_LDA](../in-details#lda)|[AX_LDA](../in-details#lda)|[AY_LDA](../in-details#lda)|[IX_LDA](../in-details#lda)|[IY_LDA](../in-details#lda)|      |      |[IM_LDX](../in-details#ldx)|[AB_LDX](../in-details#ldx)|[IP_TAX](../in-details#tax)|[AY_LDX](../in-details#ldx)|[IP_TSX](../in-details#tsx)|      |      |
|**2x**|      |      |[AB_STA](../in-details#sta)|[AX_STA](../in-details#sta)|[AY_STA](../in-details#sta)|[IX_STA](../in-details#sta)|[IY_STA](../in-details#sta)|      |      |      |[AB_STX](../in-details#stx)|[IP_TXA](../in-details#txa)|[AY_STX](../in-details#stx)|[IP_TXS](../in-details#txs)|      |      |
|**3x**|[**IP_CLC**](../in-details#clc)|[**IP_SEC**](../in-details#sec)|[**IP_CLV**](../in-details#clv)|      |      |      |      |      |      |[IM_LDY](../in-details#ldy)|[AB_LDY](../in-details#ldy)|[AX_LDY](../in-details#ldy)|[IP_TAY](../in-details#tay)|      |      |      |
|**4x**|      |      |      |      |      |      |      |      |      |      |[AB_STY](../in-details#sty)|[AX_STY](../in-details#sty)|[IP_TYA](../in-details#tya)|      |      |      |
|**5x**|      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |
|**6x**|[**IM_CPX**](../in-details#cpx)|[**IM_SBC**](../in-details#sbc)|[**AB_SBC**](../in-details#sbc)|[**AX_SBC**](../in-details#sbc)|[**AY_SBC**](../in-details#sbc)|[**IX_SBC**](../in-details#sbc)|[**IY_SBC**](../in-details#sbc)|[**AB_CPX**](../in-details#cpx)|[IP_PHA](../in-details#pha)|[**IM_EOR**](../in-details#eor)|[**AB_EOR**](../in-details#eor)|[**AX_EOR**](../in-details#eor)|[**AY_EOR**](../in-details#eor)|[**IX_EOR**](../in-details#eor)|[**IY_EOR**](../in-details#eor)|      |
|**7x**|[**IM_CPY**](../in-details#cpy)|[**IM_CMP**](../in-details#cmp)|[**AB_CMP**](../in-details#cmp)|[**AX_CMP**](../in-details#cmp)|[**AY_CMP**](../in-details#cmp)|[**IX_CMP**](../in-details#cmp)|[**IY_CMP**](../in-details#cmp)|[**AB_CPY**](../in-details#cpy)|      |      |      |      |      |      |      |      |
|**8x**|      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |
|**9x**|[IP_PHP](../in-details#php)|[**IM_ADC**](../in-details#adc)|[**AB_ADC**](../in-details#adc)|[**AX_ADC**](../in-details#adc)|[**AY_ADC**](../in-details#adc)|[**IX_ADC**](../in-details#adc)|[**IY_ADC**](../in-details#adc)|      |      |      |      |      |      |      |      |      |
|**ax**|[IP_RTS](../in-details#rts)|      |[AB_JSR](../in-details#jsr)|      |      |      |      |      |      |      |      |      |      |      |      |      |
|**bx**|[IN_JMP](../in-details#jmp)|      |[AB_JMP](../in-details#jmp)|      |      |      |      |      |[**AB_BIT**](../in-details#bit)|[**IM_AND**](../in-details#and)|[**AB_AND**](../in-details#and)|[**AX_AND**](../in-details#and)|[**AY_AND**](../in-details#and)|[**IX_AND**](../in-details#and)|[**IY_AND**](../in-details#and)|      |
|**cx**|[**AA_ASL**](../in-details#asl)|      |[**AB_ASL**](../in-details#asl)|[**AX_ASL**](../in-details#asl)|[**AA_ROL**](../in-details#rol)|      |[**AB_ROL**](../in-details#rol)|[**AX_ROL**](../in-details#rol)|[RE_BCS](../in-details#bcs)|[RE_BCC](../in-details#bcc)|[RE_BEQ](../in-details#beq)|[RE_BNE](../in-details#bne)|[RE_BVS](../in-details#bvs)|[RE_BVC](../in-details#bvc)|[RE_BMI](../in-details#bmi)|[RE_BPL](../in-details#bpl)|
|**dx**|[AA_LSR](../in-details#lsr)|      |[AB_LSR](../in-details#lsr)|[AX_LSR](../in-details#lsr)|[AA_ROR](../in-details#ror)|      |[AB_ROR](../in-details#ror)|[AX_ROR](../in-details#ror)|[AB_JCS](../in-details#jcs)|[AB_JCC](../in-details#jcc)|[AB_JEQ](../in-details#jeq)|[AB_JNE](../in-details#jne)|[AB_JVS](../in-details#jvs)|[AB_JVC](../in-details#jvc)|[AB_JMI](../in-details#jmi)|[AB_JPL](../in-details#jpl)|
|**ex**|      |      |      |      |      |      |      |      |[IP_PLA](../in-details#pla)|[**IM_ORA**](../in-details#ora)|[**AB_ORA**](../in-details#ora)|[**AX_ORA**](../in-details#ora)|[**AY_ORA**](../in-details#ora)|[**IX_ORA**](../in-details#ora)|[**IY_ORA**](../in-details#ora)|      |
|**fx**|[IP_PLP](../in-details#plp)|[**AA_DEA**](../in-details#dea)|[**AB_DEC**](../in-details#dec)|[**AX_DEC**](../in-details#dec)|      |[**IP_DEX**](../in-details#dex)|[**IP_DEY**](../in-details#dey)|      |      |      |      |      |      |      |      |      |


*this file was generated by nqsap-instructions.py at 27-Nov-2021 19:58:42*
