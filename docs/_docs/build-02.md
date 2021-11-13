---
title: "Build 2"
permalink: /docs/build-02/
excerpt: "NQSAP-PCB computer build 2"
---

[![Second set](../../assets/images/boards2.gif "second set of boards"){:width="400px"}](../../assets/images/boards2.gif)

The second batch of boards contained a new Loader/Debugger as well as the first boards for
the microcode ROMs, Instruction Register/Ring Counter, and RAM/MAR.

### Loader plus Clock and Reset

### Microcode ROMs

### Instruction Register and Ring Counter

In anticipation of the control ROMs, the [Ring Counter](../ring-counter/) was added
next.  This is really a binary microinstruction counter but it has an attached 3-to-8
decoder that gives output that looks like a ring counter.  This output is only used for
the LED display that indicates the step - the input to the ROMs will be the binary output
of the counter. Still, the ring counter terminology is used to match the Ben Eater builds.

The first picture shows the register select logic and the microcode ROMs.  Only two
ROMs were used in the first build.  ROM2 is dedicated to the register select logic and
ROM0 has miscellaneous housekeeping control signals like reset the ring counter and
increment the program counter.

### RAM and MAR

[![RAM and MAR](../../assets/images/ram-mar-board.png "RAM and Memory Address Register"){:width="400px"}](../../assets/images/ram-mar-board.png)

The MAR is read-only, using a single 74HCT377 register.  The RAM uses a 32Kx8 static RAM
which is extreme overkill, since only 256 of the 32768 bytes are used.  But it is easy to
wire because it does not require a separate bus driver.

The 32K RAM chip is only using eight of the fifteen available address
lines to access only 256 bytes of memory.  Wiring two of the available address lines to
microcode ROM control lines would let the stack use its own dedicated 256 byte memory area
and separate areas could be used for program and data storage as well.

This Harvard-like architecture would mean that the NQSAP would not support self-modifying
code because the load and store operations would not be able to access program storage.
It also means that the Loader would not be able to initialize data in the memory area
unless it is able to access another control signal to select memory areas.
