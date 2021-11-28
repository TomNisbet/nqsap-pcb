---
title: "NQSAP and 6502 Instructions"
permalink: /docs/in-summary/
excerpt: "Instruction set summary for the NQSAP Computer"
---

## 6502 Compatibility

The NQSAP has a 6502-inspired architecture and instruction set.  The instructions and
registers are similar, but the opcodes of the NQSAP do not map to the same values as
a 6502.  This means that the NQSAP and 6502 are somewhat compatible at the assembly
language source level, but the object code they use is completely different.

The major difference in the two implementations is that the NQSAP is an 8-bit only machine
with no 16-bit addressing modes.  This means that the absolute addressing modes and the
zero-page addressing modes are the same because all memory is in page zero.  For
simplicity of the documentation, the instructions are listed as using absolute,
absolute+X, and absolute+Y modes instead of the zero-page modes.

Two other features of the 6502 are also not implemented: decimal mode and interrupts.
This removes a few instructions from the complete set.

One interesting difference between the two implementations is the branch instructions.
On the 6502, these use fewer cycles than an unconditional jump instruction because they
only need to specify a single byte offset instead of a two byte absolute or relative
address.  On the NQSAP, the branch instructions are expensive because they need to save
and restore one of the index registers in order to calculate relative addresses.  A set
of conditional jump instructions was added that mimics all of the conditional branches
but uses absolute addressing instead of relative addressing.  These jumps use only four
cycles instead of the eight needed for a conditional branch.

## Instructions Common to 6502 and NQSAP

|Name|Description|Flags|Address Modes|
|:---|:---|:---:|:---|
|[ADC](../in-details#adc)|Add with Carry|CZVN|IM,AB,AX,AY,IX,IY|
|[AND](../in-details#and)|Logical AND|-Z-N|IM,AB,AX,AY,IX,IY|
|[ASL](../in-details#asl)|Arithmetic Shift Left|CZ-N|AA,AB,AX|
|[BCC](../in-details#bcc)|Branch if Carry Clear|----|RE|
|[BCS](../in-details#bcs)|Branch if Carry Set|----|RE|
|[BEQ](../in-details#beq)|Branch if Equal|----|RE|
|[BIT](../in-details#bit)|Bit Test|-Z--|AB|
|[BMI](../in-details#bmi)|Branch if Minus|----|RE|
|[BNE](../in-details#bne)|Branch if Not Equal|----|RE|
|[BPL](../in-details#bpl)|Branch if Positive|----|RE|
|[BVC](../in-details#bvc)|Branch if Overflow Clear|----|RE|
|[BVS](../in-details#bvs)|Branch if Overflow Set|----|RE|
|[CLC](../in-details#clc)|Clear Carry|C---|IP|
|[CLV](../in-details#clv)|Clear Overflow|--V-|IP|
|[CMP](../in-details#cmp)|Compare A|CZ-N|IM,AB,AX,AY,IX,IY|
|[CPX](../in-details#cpx)|Compare X|CZ-N|IM,AB|
|[CPY](../in-details#cpy)|Compare Y|CZ-N|IM,AB|
|[DEC](../in-details#dec)|Decrement Memory|-Z-N|AB,AX|
|[DEX](../in-details#dex)|Decrement X|-Z-N|IP|
|[DEY](../in-details#dey)|Decrement Y|-Z-N|IP|
|[EOR](../in-details#eor)|Exclusive OR|-Z-N|IM,AB,AX,AY,IX,IY|
|[INC](../in-details#inc)|Increment Memory|-Z-N|AB,AX|
|[INX](../in-details#inx)|Increment X|-Z-N|IP|
|[INY](../in-details#iny)|Increment Y|-Z-N|IP|
|[JMP](../in-details#jmp)|Jump|----|AB,IN|
|[JSR](../in-details#jsr)|Jump to Subroutine|----|AB|
|[LDA](../in-details#lda)|Load A|-Z-N|IM,AB,AX,AY,IX,IY|
|[LDX](../in-details#ldx)|Load X|-Z-N|IM,AB,AY|
|[LDY](../in-details#ldy)|Load Y|-Z-N|IM,AB,AX|
|[LSR](../in-details#lsr)|Logical Shift Right|CZ-N|AA,AB,AX|
|[NOP](../in-details#nop)|No Operation|----|IP|
|[ORA](../in-details#ora)|Logical Inclusive OR|-Z-N|IM,AB,AX,AY,IX,IY|
|[PHA](../in-details#pha)|Push A|----|IP|
|[PHP](../in-details#php)|Push Processor Status|----|IP|
|[PLA](../in-details#pla)|Pull A|-Z-N|IP|
|[PLP](../in-details#plp)|Pull Processor Status|CZVN|IP|
|[ROL](../in-details#rol)|Rotate Left|CZ-N|AA,AB,AX|
|[ROR](../in-details#ror)|Rotate Right|CZ-N|AA,AB,AX|
|[RTS](../in-details#rts)|Return from Subroutine|----|IP|
|[SBC](../in-details#sbc)|Subtract with Carry|CZVN|IM,AB,AX,AY,IX,IY|
|[SEC](../in-details#sec)|Set Carry|C---|IP|
|[STA](../in-details#sta)|Store A|----|AB,AX,AY,IX,IY|
|[STX](../in-details#stx)|Store X|----|AB,AY|
|[STY](../in-details#sty)|Store Y|----|AB,AX|
|[TAX](../in-details#tax)|Transfer A to X|-Z-N|IP|
|[TAY](../in-details#tay)|Transfer A to Y|-Z-N|IP|
|[TSX](../in-details#tsx)|Transfer SP to X|-Z-N|IP|
|[TXA](../in-details#txa)|Transfer X to A|-Z-N|IP|
|[TXS](../in-details#txs)|Transfer X to SP|----|IP|
|[TYA](../in-details#tya)|Transfer Y to A|-Z-N|IP|


## 6502 Instructions Not Implemented in NQSAP

|Name|Description|Flags|Address Modes|
|:---|:---|:---:|:---|
|[BRK](../in-details#brk)<sub>1</sub>|Force Interrupt|----||
|[CLD](../in-details#cld)<sub>2</sub>|Clear Decimal Mode|----||
|[CLI](../in-details#cli)<sub>1</sub>|Clear Interrupt Disable|----||
|[RTI](../in-details#rti)<sub>1</sub>|Return from Interrupt|----||
|[SED](../in-details#sed)<sub>2</sub>|Set Decimal Mode|----||
|[SEI](../in-details#sei)<sub>1</sub>|Set interrupt Disable|----||

**Notes:**
1. No support for interrupts
1. No support for decimal mode

## NQSAP Extensions

|Name|Description|Flags|Address Modes|
|:---|:---|:---:|:---|
|[DEA](../in-details#dea)|Decrement A|-Z-N|AA|
|[INA](../in-details#ina)|Increment A|-Z-N|AA|
|[JCC](../in-details#jcc)|Jump if Carry Clear|----|AB|
|[JCS](../in-details#jcs)|Jump if Carry Set|----|AB|
|[JEQ](../in-details#jeq)|Jump if Equal|----|AB|
|[JMI](../in-details#jmi)|Jump if Minus|----|AB|
|[JNE](../in-details#jne)|Jump if Not Equal|----|AB|
|[JPL](../in-details#jpl)|Jump if Positive|----|AB|
|[JVC](../in-details#jvc)|Jump if Overflow Clear|----|AB|
|[JVS](../in-details#jvs)|Jump if Overflow Set|----|AB|
|[NOT](../in-details#not)|Bitwise NOT A|-Z-N|AA|
|[OUT](../in-details#out)|Output A|----|IP|


*this file was generated by nqsap-instructions.py at 27-Nov-2021 19:58:42*
