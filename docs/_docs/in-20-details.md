---
title: "NQSAP Instructions"
permalink: /docs/in-details/
excerpt: "Instruction set for the NQSAP Computer"
---

|           |           |           |           |           |           |           |           |
|:---:      |:---:      |:---:      |:---:      |:---:      |:---:      |:---:      |:---:      |
|[ADC](#adc)|[AND](#and)|[ASL](#asl)|[BCC](#bcc)|[BCS](#bcs)|[BEQ](#beq)|[BIT](#bit)|[BMI](#bmi)|
|[BNE](#bne)|[BPL](#bpl)|[BVC](#bvc)|[BVS](#bvs)|[CLC](#clc)|[CLV](#clv)|[CMP](#cmp)|[CPX](#cpx)|
|[CPY](#cpy)|[DEA](#dea)|[DEC](#dec)|[DEX](#dex)|[DEY](#dey)|[EOR](#eor)|[INA](#ina)|[INC](#inc)|
|[INX](#inx)|[INY](#iny)|[JCC](#jcc)|[JCS](#jcs)|[JEQ](#jeq)|[JMI](#jmi)|[JMP](#jmp)|[JNE](#jne)|
|[JPL](#jpl)|[JSR](#jsr)|[JVC](#jvc)|[JVS](#jvs)|[LDA](#lda)|[LDX](#ldx)|[LDY](#ldy)|[LSR](#lsr)|
|[NOP](#nop)|[NOT](#not)|[ORA](#ora)|[OUT](#out)|[PHA](#pha)|[PHP](#php)|[PLA](#pla)|[PLP](#plp)|
|[ROL](#rol)|[ROR](#ror)|[RTS](#rts)|[SBC](#sbc)|[SEC](#sec)|[STA](#sta)|[STX](#stx)|[STY](#sty)|
|[TAX](#tax)|[TAY](#tay)|[TSX](#tsx)|[TXA](#txa)|[TXS](#txs)|[TYA](#tya)|

## ADC

Add with Carry

**Flags:** CZVN

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x91|2|5|
|AB - Absolute|0x92|2|6|
|AX - Absolute+X|0x93|2|7|
|AY - Absolute+Y|0x94|2|7|
|IX - Indexed Indirect (X)|0x95|2|8|
|IY - Indirect Indexed (Y)|0x96|2|8|

## AND

Logical AND

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0xb9|2|5|
|AB - Absolute|0xba|2|6|
|AX - Absolute+X|0xbb|2|7|
|AY - Absolute+Y|0xbc|2|7|
|IX - Indexed Indirect (X)|0xbd|2|8|
|IY - Indirect Indexed (Y)|0xbe|2|8|

## ASL

Arithmetic Shift Left

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0xc0|1|4|
|AB - Absolute|0xc2|1|8|
|AX - Absolute+X|0xc3|1|9|

## BCC

Branch if Carry Clear

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xc9|2|8|

## BCS

Branch if Carry Set

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xc8|2|8|

## BEQ

Branch if Equal

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xca|2|8|

## BIT

Bit Test

**Flags:** -Z--

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xb8|2|5|

## BMI

Branch if Minus

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xce|2|8|

## BNE

Branch if Not Equal

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xcb|2|8|

## BPL

Branch if Positive

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xcf|2|8|

## BVC

Branch if Overflow Clear

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xcd|2|8|

## BVS

Branch if Overflow Set

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|RE - Relative|0xcc|2|8|

## CLC

Clear Carry

**Flags:** C---

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x30|1|3|

## CLV

Clear Overflow

**Flags:** --V-

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x32|1|3|

## CMP

Compare A

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x71|2|5|
|AB - Absolute|0x72|2|6|
|AX - Absolute+X|0x73|2|7|
|AY - Absolute+Y|0x74|2|7|
|IX - Indexed Indirect (X)|0x75|2|8|
|IY - Indirect Indexed (Y)|0x76|2|8|

## CPX

Compare X

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x60|2|7|
|AB - Absolute|0x67|2|8|

## CPY

Compare Y

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x70|2|7|
|AB - Absolute|0x77|2|8|

## DEA

Decrement A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0xf1|1|3|

## DEC

Decrement Memory

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xf2|2|7|
|AX - Absolute+X|0xf3|1|8|

## DEX

Decrement X

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0xf5|1|6|

## DEY

Decrement Y

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0xf6|1|6|

## EOR

Exclusive OR

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x69|2|5|
|AB - Absolute|0x6a|2|6|
|AX - Absolute+X|0x6b|2|7|
|AY - Absolute+Y|0x6c|2|7|
|IX - Indexed Indirect (X)|0x6d|2|8|
|IY - Indirect Indexed (Y)|0x6e|2|8|

## INA

Increment A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0x01|1|3|

## INC

Increment Memory

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0x02|2|7|
|AX - Absolute+X|0x03|2|8|

## INX

Increment X

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x05|1|6|

## INY

Increment Y

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x06|1|6|

## JCC

Jump if Carry Clear

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xd9|2|4|

## JCS

Jump if Carry Set

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xd8|2|4|

## JEQ

Jump if Equal

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xda|2|4|

## JMI

Jump if Minus

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xde|2|4|

## JMP

Jump

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xb2|2|4|
|IN - Indirect|0xb0|2|5|

## JNE

Jump if Not Equal

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xdb|2|4|

## JPL

Jump if Positive

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xdf|2|4|

## JSR

Jump to Subroutine

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xa2|2|7|

## JVC

Jump if Overflow Clear

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xdd|2|4|

## JVS

Jump if Overflow Set

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0xdc|2|4|

## LDA

Load A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x11|2|4|
|AB - Absolute|0x12|2|5|
|AX - Absolute+X|0x13|2|6|
|AY - Absolute+Y|0x14|2|6|
|IX - Indexed Indirect (X)|0x15|2|7|
|IY - Indirect Indexed (Y)|0x16|2|7|

## LDX

Load X

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x19|2|4|
|AB - Absolute|0x1a|2|5|
|AY - Absolute+Y|0x1c|2|6|

## LDY

Load Y

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x39|2|4|
|AB - Absolute|0x3a|2|5|
|AX - Absolute+X|0x3b|2|6|

## LSR

Logical Shift Right

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0xd0|1|4|
|AB - Absolute|0xd2|2|6|
|AX - Absolute+X|0xd3|2|7|

## NOP

No Operation

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x00|1|3|

## NOT

Bitwise NOT A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0x08|1|3|

## ORA

Logical Inclusive OR

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0xe9|2|5|
|AB - Absolute|0xea|2|6|
|AX - Absolute+X|0xeb|2|7|
|AY - Absolute+Y|0xec|2|7|
|IX - Indexed Indirect (X)|0xed|2|8|
|IY - Indirect Indexed (Y)|0xee|2|8|

## OUT

Output A

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x10|1|3|

## PHA

Push A

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x68|1|4|

## PHP

Push Processor Status

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x90|1|4|

## PLA

Pull A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0xe8|1|5|

## PLP

Pull Processor Status

**Flags:** CZVN

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0xf0|1|5|

## ROL

Rotate Left

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0xc4|1|4|
|AB - Absolute|0xc6|2|8|
|AX - Absolute+X|0xc7|2|9|

## ROR

Rotate Right

**Flags:** CZ-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AA - Accumulator|0xd4|1|4|
|AB - Absolute|0xd6|2|6|
|AX - Absolute+X|0xd7|2|7|

## RTS

Return from Subroutine

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0xa0|1|5|

## SBC

Subtract with Carry

**Flags:** CZVN

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IM - Immediate|0x61|2|5|
|AB - Absolute|0x62|2|6|
|AX - Absolute+X|0x63|2|7|
|AY - Absolute+Y|0x64|2|7|
|IX - Indexed Indirect (X)|0x65|2|8|
|IY - Indirect Indexed (Y)|0x66|2|8|

## SEC

Set Carry

**Flags:** C---

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x31|1|3|

## STA

Store A

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0x22|2|5|
|AX - Absolute+X|0x23|2|6|
|AY - Absolute+Y|0x24|2|6|
|IX - Indexed Indirect (X)|0x25|2|7|
|IY - Indirect Indexed (Y)|0x26|2|7|

## STX

Store X

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0x2a|2|5|
|AY - Absolute+Y|0x2c|2|6|

## STY

Store Y

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|AB - Absolute|0x4a|2|5|
|AX - Absolute+X|0x4b|2|6|

## TAX

Transfer A to X

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x1b|1|3|

## TAY

Transfer A to Y

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x3c|1|3|

## TSX

Transfer SP to X

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x1d|1|3|

## TXA

Transfer X to A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x2b|1|3|

## TXS

Transfer X to SP

**Flags:** ----

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x2d|1|3|

## TYA

Transfer Y to A

**Flags:** -Z-N

|Mode|Opcode|Bytes|Cycles|
:--- |:---: |:---:|:---: |
|IP - Implicit|0x4c|1|3|


*this file was generated by nqsap-instructions.py at 27-Nov-2021 10:53:19*
