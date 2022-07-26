---
title: "Build 4"
permalink: /docs/build-04/
excerpt: "NQSAP-PCB computer build 4"
---

[![Fourth set of boards](../../assets/images/boards4-500.jpg "Third set of boards")](../../assets/images/boards4.jpg)

The fourth batch of boards contained the first boards for the Program Counter / Stack
Pointer and the LED Output Display.  The nine boards from the first four builds can be
assembled to form a Turing-complete 8-bit CPU.  One additional build is planned to add
the DXY Register functionality from the original breadboard NQSAP computer.

## Program Counter and Stack Pointer

[![Program Counter and Stack Pointer](../../assets/images/pc-sp-board-500.jpg "program counter / stack pointer")](../../assets/images/pc-sp-board.jpg)

The [Program Counter and Stack Pointer](../program-counter-stack-pointer/) boards passed
the register load test, but would not count correctly.  The Program Increment (PI) signal
was mistakenly wired to the high counter and the carry out from that counter was wired to
the carry in of the low counter.  After a few wires to swap the signals between the two
chips, the PC passed all tests.



### Output Register

Despite the simple design, the [Output Register](../output-register/) boards
had one clumsy mistake.  Two enable pins on the 74HCT138 were left unconnected.  A simple
patch wire was added to ground these pins and then the board worked as expected.

## Results

[![Fourth set running](../../assets/images/build4.gif "fourth set of boards")](../../assets/images/build4.gif)

This shows the NQSAP-PCB with all of the boards from the first four builds. The new PC/SP
board is in the upper right and the new Output Register is upper left.  The Arduino Loader
is not active and the system is running a simple program that counts and saves and
restores values from the stack.
