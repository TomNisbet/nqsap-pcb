---
title: "Instruction Register and Ring Counter"
permalink: /docs/ir-rc/
excerpt: "Instruction Register and Ring Counter for the NQSAP-PCB computer"
---

[![Instruction Register and Ring Counter](../../assets/images/ir-rc-board-500.jpg "Instruction Register and Ring Counter")](../../assets/images/ir-rc-board.jpg)

The Instruction Register (IR) and Ring Counter (RC) provide a 12-bit address for the microcode ROMs.

## Ring Counter
This is really a binary microinstruction counter but it has two attached 3-to-8 decoders
that give output that looks like a ring counter.  This output is only used for the LED
display that indicates the step - the input to the ROMs will be the 4-bit binary output of
the counter. Still, the ring counter terminology is used to match the Ben Eater builds.


[![Instruction Register and Ring Counter schematic](../../assets/images/ir-rc-schematic.png "Instruction Register and Ring Counter schematic"){:width="720px"}](../../assets/images/ir-rc-schematic.png)

## Instruction Register

The Instruction Register is double buffered to reduce [glitches when the EEPROM address
lines change](../eeprom-glitch).  In the non-buffered design, the EEPROM outputs will be
in an unknown state for about 100ns when the Ring Counter address changes on every falling
edge of the system clock.  In addition, the outputs will also glitch on the rising edge of
the clock at instruction step T1 when the IR is loaded with the new opcode.  The double
buffer adds a second register following the IR register that loads at T1.  This register
loads the contents of the IR and presents them to the ROM address lines on every falling
edge.  As a result, the EEPROM address lines only ever change on a falling clock edge,
allowing logic that combines ROM signals with a positive clock signal.
