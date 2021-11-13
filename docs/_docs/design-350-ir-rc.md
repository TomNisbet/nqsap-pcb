---
title: "Instruction Register and Ring Counter"
permalink: /docs/ir-rc/
excerpt: "Instruction Register and Ring Counter for the NQSAP-PCB computer"
---

[![Instruction Register and Ring Counter](../../assets/images/ir-rc-board.png "Instruction Register and Ring Counter"){:width="500px"}](../../assets/images/ir-rc-board.png)

The Instruction Register (IR) and Ring Counter (RC) provide a 12-bit address for the microcode ROMs.

## Ring Counter
This is really a binary microinstruction counter but it has two attached 3-to-8 decoders
that give output that looks like a ring counter.  This output is only used for the LED
display that indicates the step - the input to the ROMs will be the 4-bit binary output of
the counter. Still, the ring counter terminology is used to match the Ben Eater builds.


[![Instruction Register and Ring Counter schematic](../../assets/images/ir-rc-schematic.png "Instruction Register and Ring Counter schematic"){:width="720px"}](../../assets/images/ir-rc-schematic.png)

## Instruction Register

double buffered
