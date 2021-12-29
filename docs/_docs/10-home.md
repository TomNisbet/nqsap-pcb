---
title: "NQSAP-PCB 8-bit TTL Computer"
permalink: /
excerpt: "NQSAP-PCB: PCB version of the Not Quite Simple As Possible computer"
---
[![NQSAP-PCB](assets/images/build3-500.jpg "initial NQSAP-PCB build")](assets/images/build-3.jpg)

The Not Quite Simple As Possible Computer - PCB version

NQSAP-PCB is the second iteration of the
[NQSAP breadboard TTL computer](https://tomnisbet.github.io/nqsap/).

Highlights of the design are:

* [Arduino-based loader/debugger](docs/loader/) to load programs and run interactive diagnostics
* 8-bit addressing extends the size of memory and number of opcodes
* 74LS181 ALU provides arithmetic and logic operations including add, subtract, AND, OR,
 and XOR
* 3-to-8 decoders for register selection simplifies wiring and reduces the number of
  microcode bits needed while also protecting against inadvertent bus collisions
* Hardware-based conditional jumps
