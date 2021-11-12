---
title: "Loader / Debugger"
permalink: /docs/clock/
excerpt: "System clock for the NQSAP-PCB computer"
---

[![System clock](../../assets/images/loader-board.png "System clock"){:width="500px"}](../../assets/images/loader-board.png)

Version 2.0 of the Loader module adds the system clock and master reset circuits to the
board.  There was space on the board and it makes sense to co-locate these functions to
reduce the number of signals that need to be on the control bus.  The
[clock module page]() has the


[![System clock](../../assets/images/loader-schematic.png "System clock"){:width="720px"}](../../assets/images/loader-schematic.png)

The Loader uses three 74HCT595 8-bit shift registers to drive the twenty-four microcode
ROM control outputs. The output enable of these registers is tied to the Loader's ACTIVE
signal and the output enable of the microcode ROMs is the inverted ACTIVE signal, ensuring
that only one source will be outputting a signal at any time. The Loader uses four Arduino
outputs to drive the inputs of the shift registers.  

## Clock implementation

The clock uses an NE556 dual-timer for the astable and one-shot clock pulses.  An S-R latch
is used for the run-stop switch debounce, rather than using a third timer as in the Ben
Eater design.  This could have been constructed from a pair of 2-input NAND or 2-input NOR
gates, but there was already a spare pair of 3-input gates available, so those were used
instead.
