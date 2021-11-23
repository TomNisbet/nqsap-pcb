---
title: "System Clock"
permalink: /docs/clock/
excerpt: "System clock for the NQSAP-PCB computer"
---

[![System clock](../../assets/images/loader-board-500.jpg "System clock")](../../assets/images/loader-board.jpg)

The system clock and master reset circuits are co-located with the Loader/Debugger module.
board.  There was space on the board and it makes sense to co-locate these functions to
reduce the number of signals that need to be on the control bus.

[![System clock](../../assets/images/clock-schematic.png "System clock"){:width="720px"}](../../assets/images/clock-schematic.png)

## Clock implementation

The clock uses an NE556 dual-timer for the astable and one-shot clock pulses.  An S-R
latch is used for the run-stop switch debounce, rather than using a third timer as in the
Ben Eater design.  This could have been constructed from a pair of 2-input NAND or 2-input
NOR gates, but there was already a spare pair of 3-input gates available, so those were
used instead.
