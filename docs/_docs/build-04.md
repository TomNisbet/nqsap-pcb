---
title: "Build 4"
permalink: /docs/build-04/
excerpt: "NQSAP-PCB computer build 4"
---

[![Fourth set of boards](../../assets/images/boards4-500.jpg "Third set of boards")](../../assets/images/boards4.jpg)

The fourth batch of boards contained the first boards for the Program Counter / Stack
Pointer and the LED Output Display.  The nine boards from the first four builds can be
assembled to form a Turing-complete 8-bit CPU.  One additional build is planned to add
ths DXY Register functionality from the original breadboard NQSAP computer.

## Program Counter and Stack Pointer

[![Program Counter and Stack Pointer](../../assets/images/pc-sp-build.jpg "stack pointer"){:width="400px"}](../../assets/images/stack pointer-build.jpg)

The next expansion added a [stack pointer](../stack-pointer/) and its associated JSR, RTS,
push, and pull instructions.  The hardware is a pair of 4-bit up/down counters wired to
the bus through a 74LS245 transceiver.



### Output Register

Despite the simple design, the [Output Register](../output-register/) boards
had one clumsy mistake.  Two enable pins on the 74HCT138 were left unconnected.  A simple
patch wire was added to ground these pins and then the board worked as expected.

## Results

[![Fourth set running](../../assets/images/build4.gif "fourth set of boards")](../../assets/images/build4.gif)

This shows the NQSAP-PCB with all of the boards from the first four builds. The new PC/SP
board is in the upper right and the new Output Register is upper left.  The Arduino Loader
is not active and the system is running a simple program that loads a sequence of values
into the A register.
