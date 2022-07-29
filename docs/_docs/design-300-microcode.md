---
title: "Microcode ROMs"
permalink: /docs/microcode/
excerpt: "Microcode ROMs for the NQSAP-PCB computer"
---

[![Microcode ROMs](../../assets/images/microcode-board-500.jpg "Microcode ROMs")](../../assets/images/microcode-board.jpg)

The microcode ROMs drive the 24 control signals for the NQSAP-PCB computer.  This board
contains LEDs for all control signals.

With an 8-bit Instruction Register and a 4-bit Ring Counter, the NQSAP
can support 256 unique instructions with 16 microcode steps each.  This consumes 12 of the 15 available address pins on the ROMs.  The
chip select uses 2 more pins, and 1 address pin is unused.


[![Microcode ROMs schematic](../../assets/images/microcode-schematic.png "Microcode ROMs schematic"){:width="720px"}](../../assets/images/microcode-schematic.png)

The microcode is stored in three 28C256 32Kx8 EEPROMs, giving 24 control signals.  The
signals can be driven by the ROMs or by the Arduino Loader/Debugger.  When the Arduino
is active, the OE signal of the ROMs is disabled.  The LEDs always show the state of the
control lines, whether they are driven by the ROMs or by the Loader.
