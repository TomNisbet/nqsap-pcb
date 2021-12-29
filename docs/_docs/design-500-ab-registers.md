---
title: "A/B and Shift Registers"
permalink: /docs/ab-registers/
excerpt: "A, B and Shift registers for the NQSAP-PCB computer"
---

[![A-B Registers](../../assets/images/ab-registers-board-500.jpg "A-B Registers")](../../assets/images/ab-registers-board.jpg)

The A and B registers are 8-bit registers that provide the inputs to the ALU.  The A
register acts as an accumulator and general-purpose register that is accessible from
instructions available to the user.

The B register is only used as an operand register for the ALU operations.  It is not
accessible as a general-purpose register and there are no instructions to directly read or
write its contents.  The microcode may also use this register as temporarly storage for
non-ALU instructins.

The sHift register (register H), is a read-only register that returns the contents of the
B register shifted one position to the right.  The LSB of B shifts into the Carry flag.
The MSB of H is populated by the carry flag for the ROR (rotate right) instruction and is
hard-coded to zero for the LSR (logical shift right) instruction.


[![A-B registers schematic](../../assets/images/ab-registers-schematic.png "A-B registers schematic"){:width="720px"}](../../assets/images/ab-registers-schematic.png)

The A and B registers are each implemented using a 74HCT377 register and a 74HCT245 8-bit
bus transceiver. The H register is implemented using a second 74HCT245 wired to the B
register outputs, but offset by one bit.  The B7 bit is the H6 bit, B6 is H5 and so on.

The A/B Register module also has a pair of 74HCT138 3-to-8 decoders for read and write
register decoding.  These selects are used for the A/B/H registers on board and remaining
selects are presented on the module interconnect headers for use by the ALU and Flags
modules.
