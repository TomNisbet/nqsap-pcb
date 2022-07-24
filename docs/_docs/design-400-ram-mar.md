---
title: "RAM and MAR"
permalink: /docs/ram-mar/
excerpt: "RAM and Memory Address Register (MAR) for the NQSAP-PCB computer"
---

[![RAM and MAR](../../assets/images/ram-mar-board-500.jpg "RAM and MAR")](../../assets/images/ram-mar-board.jpg)

The RAM provides 256 bytes of storage for programs and storage.  The Memory Address
Register (MAR) provides the 8-bit address. Two additional address lines from the microcode
can segment the RAM into separate areas for program, data, and stack storage to allow for
a total of 1K of storage.


[![RAM and MAR schematic](../../assets/images/ram-mar-schematic.png "RAM and MAR schematic"){:width="720px"}](../../assets/images/ram-mar-schematic.png)

The RAM is implemented using a 32Kx8 bit static RAM.  Only a small portion of this is
used and the additional address lines are tied to ground.




The MAR is read-only, using a single 74HCT377 register.  The RAM uses a 32Kx8 static RAM
which is extreme overkill, since only 256 of the 32768 bytes are used.  But it is easy to
wire because it does not require a separate bus driver.

The 32K RAM chip is only using eight of the fifteen available address lines to access only
256 bytes of memory.  Two additional address lines from the microcode (M0 and M1) can
segment the RAM into separate areas for program, data, and stack storage to allow for a
total of 1K of storage.  Jumpers are used to connect the M0 and M1 lines to the RAM, so
the use of either of these features is optional.  This allows the RAM to be used as 256,
512, or 1024 bytes with separate or combined data/code and data/stack areas.  Because ROM
control lines are scarse in this design, the use of jumpers also lets the M0 and M1 lines
be used elsewhere to add new functionality.

This use of separate data and code areas would mean that the NQSAP-PCB would not support
self-modifying code because the register load and store operations would not be able to
access program storage.  This is another reason to use jumpers for the M0 and M1 selects.
Combined areas can be used if self-modifying code is desired and separate areas can be
used to maximize RAM for larger programs.

Note that the M0 and M1 jumpers allow for a total of four RAM areas.  In addition to data,
code, and stack, a fourth area could be defined by adding additional instructions in the
microcode.  This could be a second stack with its own push and pull instructions, or a
second data area with new register load and save instructions to access the new block.
