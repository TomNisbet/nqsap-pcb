---
title: "Flags and Conditional Jumps"
permalink: /docs/flags/
excerpt: "Building the flags and conditional jump logic of the NQSAP computer"
---

[![Flags Design](../../assets/images/flags-board-500.jpg "flags and jump logic")](../../assets/images/flags-board.jpg)

The processor status flags and conditional jump logic is the most complex part of the
NQSAP computer.  It consumes a large number of the available
[microcode ROM outputs](#control-rom-summary).

The flags and conditional jump design has the following features:
* Four flags that match the behavior of the 6502's Carry, Zero, oVerflow, and Negative flags
* Hardware-controlled conditional jump instructions require no ROM address lines
* An instruction's microcode can alter any or all of the flags independently
* Flags can be read or written to the bus, allowing save and restore of the processor status

## Differences from SAP-1

The Ben Eater SAP-1 supports two flags, Zero and Carry, using a single 74HCT173 register to
store the values.  This means that any instruction that alters flags needs to provide a
value for both flags.  The conditional jump logic of SAP-1 design is implemented in
microcode by wiring the status flag register outputs to address lines of the microcode
ROMs.  

The NQSAP design addresses the following SAP-1 limitations:
* Flags cannot be set independently
* Limited number of ROM address lines available to expand to more flags
* Changing flag values causes the control ROM outputs to briefly glitch to unknown values

## Hardware overview

[![Flags Schematic](../../assets/images/flags-schematic.png "flags and jump logic"){:width="400px"}](../../assets/images/flags-schematic.png)

The left side of the schematic contains logic to calculate values input to the flags based
on the ALU and other sources.  The 74HCT157 selector in the center allows the flags to be
loaded from the calculation hardware or loaded from the value on the bus.  The flag values
are stored in the pair of 74HCT74 flip flops in the center of the drawing. On the right
side of the schematic, the outputs of the flags go to a 74HCT245 that allows them to be
placed on the bus.  The outputs also go to a 74HCT151 8-to-1 selector that controls the
conditional jump.

The NQSAP-PCB data bus is used as an input for flag calculations on the left side of the
drawing, a direct input to the flag registers in the center, and an output source for the
flags on the right.

The star of this design is the 74HCT151 8-to-1 selector.  It is used to replace conditional
logic for the Carry and oVerflow flag calculations and also to select a flag source for
the conditional jump.

## Flag registers

Each of the four flags is stored in its own D flip flop rather than a single register chip
for all flags.  This is implemented as a pair of 74HCT74 dual D flip flops.  Each flag has
its own Flag Load (FC,FZ,FV,FN) signal from the Control ROMs that is ANDed with the master
clock (CLK) to load new data into a flag register.  This allows selective updating of
only the flags that are appropriate for each instruction.  For example, the Add with Carry
(ADC) instruction sets all four flags, but the Increment Memory (INC) sets only the Zero
and Negative flags.

The outputs of the flag registers go to the conditional jump circuit and also to a
74HCT245 8-bit transceiver that is connected to the bus.  This allows the all of the flag
bits to be read as a single byte of processor status on the bus.  This capability is used
by the Push Processor Status (PSP) instruction to save flag values to memory.

The inputs to the flag registers are connected to a 74HCT157 quad 2-to-1 selector.  This
selects from either the bus or the individual flag calculation hardware as the source when
loading new values into the flags.  The Pull Processor Status (PLP) instruction uses the
bus read capability to restore previously saved values of the flags.

## Setting and clearing

The Reset inputs of the flag registers are tied to the master reset (RST) signal so that
the flags are all cleared at reset.  The Set inputs are not used.

The CLC, CLV, and SEC instructions clear or set individual flags.  This requires no
additional hardware or ROM control signals.  The NQSAP's ALU has modes that will output
all-ones or all-zeros to the bus, regardless of the ALU inputs.  The flag registers can be
loaded from the bus, so putting zeroes on the bus and then selectively loading individual
flags allows instructions to clear flags.  Similarly, flags are set using the ALU all-ones
and loading from the bus.

## Conditional jump

The conditional jump determination is done in hardware, with a circuit that drives the
LOAD enable of the Program Counter (PC).  Unlike the SAP-1, the flag values are not
connected to address lines in the Control ROM and the microcode cannot execute differently
dependent on flag values.  The choice was made to allow for more flags, because ROM
address lines are in short supply.  The other benefit is reduced
[EEPROM output glitching](../eeprom-glitch) because changes in flags don't cause a new
address to be set on the microcode ROM in the middle of an instruction execution.

The inverted and non-inverted values of the four flags are fed into the inputs of a
74HCT151 8-to-1 selector.  Because the flip flops provide both Q and not-Q outputs, the
selector can choose to jump on a flag set or flag clear value with no additional inverters
or gates needed.  The active-low JMP output of the selector drives the LOAD line of the
PC.  The enable line of the selector is controlled by the Conditional Jump Enable (JE)
signal from the microcode ROM.  If the JE signal is not asserted then the values at the
selector inputs are ignored and the PC LOAD is not enabled.

Before going to the PC LOAD input, the output of the conditional jump selector is NORed
with the Write PC (WP) signal from the register selectors.  This allows the control ROM to
do an unconditional jump and it also allows the Loader to do self-tests on the PC.

The three select inputs that determine the flag for the conditional jump are tied to the
three least significant output bits of the Instruction Register (IR).  This encodes the
flag selection into the opcode of the conditional jump instructions and does not require
any additional control lines from the Control ROM.  It also simplifies the microcode
because all of the conditional jump instructions will have identical microcode.  This is
similar to the operation selection for the ALU, which uses the upper five bits of the
opcode to select an ALU function so that ALU instructions with the same addressing mode
shared common microcode.

Note that the Instruction Register bits for the conditional jump select are provided by
the ALU module over the module interconnect lines.

All conditional jump instructions are coded as unconditional jumps in the ROM with the JE
signal asserted.  If the selected flag (or the selected inverted flag) is not HIGH, the
jump steps are executed but the LOAD line will not go active and the instruction will have
no effect.  

The downside to this is that a jump not taken will effectively be a long NOP instruction,
using more cycles than other approaches might need.  It might be possible for the
conditional jump logic to drive the Next Instruction (N) signal instead of the PC LOAD
signal, allowing a flag condition to terminate a jump instruction early.

## Flag calculations

The Negative flag is simply the MSB of the data bus.  Because it is wired to the bus
instead of the ALU output, the Negative flag can be updated on non-ALU  operations such as
register to register transfers or shift register instructions.

The Zero flag uses a 74HCT688 8-bit comparator to test for zero.  This saves a chip over
the AND/OR circuit used in the Ben Eater SAP-1 computer but is functionally equivalent.
One other difference from the SAP-1 is that the zero test, like the negative test, is
performed on the value on the bus instead of the output value of the ALU.

The oVerflow flag is calculated using a 74HCT151 8-to-1 selector as described in
[74181 with V_Flag](http://6502.org/users/dieter/v_flag/v_4.htm) on 6502.org.  The MSB of
the ALU operands in H and B, as well as the MSB of the ALU result, are used as inputs.
Two of the ALU operation select lines are used to differentiate between addition and
subtraction.

The Carry flag has several inputs that can set it.  For arithmetic operations, it uses the
carry output or the inverted carry output of the 74HCT181 ALU chip.  For shift right
operations, it is set by the LSB of the B register.  A 74HCT151 chooses from the
different inputs as selected by the C0 and C1 bits from the control ROMs.

Any or all of the flags can also be loaded from the bus.  This allows for a "pull flags"
instruction to restore the set of flags.  This capability is also leveraged for the
individual flag set and clear instructions, like CLC, CLV, and SEC.  The ALU chip has an
operation that puts all ones on the bus and another that puts out all zeroes.  By putting
the ALU in one of these modes and enabling individual flag load lines, a flag can be set
or cleared by the microcode.

## Carry Flag usage by the ALU and H Register

In addition to its use in the conditional jump instructions, the Carry flag output is also
used as an input to the ALU (L) and the sHift (H) Register.  Depending on the operation,
the carry supplied to the ALU and H registers can be either a hard-coded one or zero, the
value of the Carry flag, or the inverted value of the Carry flag.  The inversion is needed
because the Carry flag uses positive logic, with a one indicating a carry is present, but
the ALU uses negative logic, where a zero indicates that a carry should be used in the
operation being performed.  

Two control signals from the ROM are used to force the carry flag output HIGH or LOW or
just pass it through unchanged.  The initial design used three different types of gates,
but applying De Morgan to the AND gate simplified the design to just two NOR gates.  The
two versions of the circuit are shown below.

[![Carry Flag Output](../../assets/images/flags-carry-output.png "carry flag output logic"){:width="600px"}](../../assets/images/flags-carry-output.png)

The table below shows the usage of the carry flag for each instruction.

| Operation|Register|Input to Register|Input to Carry Flag|
|:---:     |:---:   |:---:            |:---:              |
| ADC      | ALU    | ~C              | ~ALU-carry-out    |
| ASL      | H      | 0               | ~ALU-carry-out    |
| DEC      | ALU    | 1               | flag not changed  |
| INC      | ALU    | 0               | flag not changed  |
| LSR      | H      | 0               | B-Q<sub>0</sub>   |
| ROL      | H      | C               | ~ALU-carry-out    |
| ROR      | H      | C               | B-Q<sub>0</sub>   |
| SBC      | ALU    | ~C              | ~ALU-carry-out    |
|====

The input to the Carry flag is described in the [Flag Calculations](#flag-calculations)
section.  

The output of the Carry flag to the ALU and H register is controlled by the CC and CS
lines from the Control ROM.  These two lines can force a clear or set value or just pass
through the current value of the Carry flag.  Note that the ALU uses negative logic for
the carry flag, so the inverted value of the Carry flag is used.  The inverter is placed
after the CC and CS logic, so asserting CS will present a LOW to the ALU and CC will
present a HIGH to the ALU.

## Control ROM summary

The table below shows the Control ROM lines related to flags.

|Signal|Description             |
|:---: |:---                    |
| FC   | write Carry flag       |
| FZ   | write Zero flag        |
| FV   | write oVerflow flag    |
| FN   | write Negative flag    |
| FB   | load flags from the bus|
| JC   | jump conditional       |
| C0   | carry source select 0  |
| C1   | carry source select 1  |
| LC   | ALU carry input clear  |
| LC   | ALU carry input clear  |
|====

## Bill of materials

* 74HCT02 quad 2-input NOR gate (1)
* 74HCT08 quad 2-input AND gate (1)
* 74HCT75 dual D flip flop (2)
* 74HCT151 8-to-1 selector (1)
* 74HCT157 quad 2-to-1 selector (1)
* 74HCT245 8-bit bus transceiver (1)

## Other References

[Question for all 74ls181 alu people](https://www.reddit.com/r/beneater/comments/kmuuex/question_for_all_74ls181_alu_people)
on reddit led to the design of the oVerflow flag.

[How to add a decremental and incremental circuit to the ALU ?](https://www.reddit.com/r/beneater/comments/jwxke0/how_to_add_a_decremental_and_incremental_circuit/)
on reddit inspired the idea to drive the PC load line from the flags instead of running
the flags through the microcode.

[Opcodes and Flag decoding circuit](https://www.reddit.com/r/beneater/comments/m76ijz/opcodes_and_flag_decoding_circuit/)
on reddit has a different approach to conditional jumps using hardware.  Instead of
driving the LOAD line of the PC, the circuit sits between the Instruction Register and the
ROM and conditionally jams a NOP or JMP instruction to the microcode depending on the
state of the flags.  One interesting part of the design is that the opcodes of the jump
instructions are arranged so that the flag of interest can be determined by bits from the
IR.  NQSAP already did something similar with the ALU select lines, so the concept was
used again for the conditional jump select lines.
