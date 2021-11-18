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
