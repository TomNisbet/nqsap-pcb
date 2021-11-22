---
title: "RAM and MAR"
permalink: /docs/ram-mar/
excerpt: "RAM and Memory Address Register (MAR) for the NQSAP-PCB computer"
---

[![RAM and MAR](../../assets/images/ram-mar-board.png "RAM and MAR"){:width="500px"}](../../assets/images/ram-mar-board.png)

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
256 bytes of memory.  Two additional address lines from the microcode can segment the RAM
into separate areas for program, data, and stack storage to allow for a total of 1K of
storage.

This Harvard-like architecture would mean that the NQSAP would not support self-modifying
code because the load and store operations would not be able to access program storage.
It also means that the Loader would not be able to initialize data in the memory area
unless it is able to access another control signal to select memory areas.
