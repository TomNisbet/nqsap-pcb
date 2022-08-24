---
title: "Build 5"
permalink: /docs/build-05/
excerpt: "NQSAP-PCB computer build 5"
---

[![Fifth set of boards](../../assets/images/boards5-500.jpg "Fifth set of boards")](../../assets/images/boards5.jpg)

The fifth batch of boards contained the first boards for the Index Adder and the XY
registers.  Updated versions of the PC/SP board and the Output register were also included
to address minor errors.  A new ALU board was also done to add more status LEDs.

The eleven boards from the five builds can be assembled to form a Turing-complete 8-bit
CPU with many of the instructions and addressing modes of a 6502 processor.

## X and Y Register and Index Adder

[![X and Y registers](../../assets/images/dxy-registers-500.jpg "XY registers and index adder")](../../assets/images/dxy-registers.jpg)

The [XY Registers and Index Adder](../dxy-registers/) boards passed

## Program Counter and Stack Pointer

The swapped count enable pins were fixed on the [Program Counter](../program-counter-stack-pointer/)
and the module now works without the need for repair wires.

### Output Register

The missing enable pins on the [Output Register](../output-register/) boards were fixed
and the new boards worked as expected.

## Results

[![Fifth set running](../../assets/images/build5.gif "fifth set of boards")](../../assets/images/build5.gif)

This shows the NQSAP-PCB with all of the boards from the first five builds. A fourth
backplane was added to hold the new XY and Index Adder modules.  This now leaves a module
slot empty - another opportunity!

The Arduino Loader is not active and the system is running a simple program that counts
and saves and restores values from the stack.
