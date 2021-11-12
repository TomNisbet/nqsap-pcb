---
title: "Build 1"
permalink: /docs/build-01/
excerpt: "NQSAP-PCB computer build 1"
---

## May 2020 - Initial Build

[![Initial build](../../assets/images/boards1.gif "initial NQSAP-PCB build"){:width="400px"}](../../assets/images/boards1.gif)

The first picture of the NQSAP shows the [system clock](../clock/),
[A/B registers](../registers/), and the [ALU](../alu/).  The bus was built and
integrated much earlier in the build than the Ben Eater process and this helped with test
and debug.

Also pictured is a [data test board](../getting-started/#data-test-board) that allows a
value from DIP switches to be placed on the bus.  A button was later added to replace the
jumper wire that enabled bus output.

### PC, IR, and Loader

[![PC, IR, and Loader](../../assets/images/pc-ir-loader.jpg "Program Counter, Instruction Register and Loader"){:width="400px"}](../../assets/images/pc-ir-loader.jpg)

The Program Counter, Instruction Register, and [Loader/Monitor](../loader/) were added
next.  As with other parts of the build, initial assembly used jumper wires and ribbon
cables to prove out the design before committing to cutting and placing the permanent
interconnect wires.  Parts of the ALU are still in this state with their cleanup to come
later.

The ribbon in the center left of the board connects to the spot for the Arduino Nano that
implements the Loader/Monitor.
