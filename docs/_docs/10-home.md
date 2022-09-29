---
title: "NQSAP-PCB 8-bit TTL Computer"
permalink: /
excerpt: "NQSAP-PCB: PCB version of the Not Quite Simple As Possible computer"
---

[![NQSAP-PCB TTL computer](assets/images/build5-500.jpg "NQSAP-PCB")](assets/images/build5.jpg)
The Not Quite Simple As Possible Computer - PCB version

NQSAP-PCB is the second iteration of the
[NQSAP breadboard TTL computer](https://tomnisbet.github.io/nqsap/).

Highlights of the design are:

* Modular [backplane](docs/backplane) and bus connectors, providing flexible arrangement
 of the computing boards to easily modify and extend the computer's functionality.
* [Arduino-based loader/debugger](docs/loader/) with full access to all data and microcode
control lines to load programs and run interactive diagnostics
* [74LS181 ALU](docs/alu) provides arithmetic and logic operations including add,
subtract, AND, OR, and XOR
* Four [flag registers](docs/flags) with hardware-based conditional jumps
* Double-buffered [Instruction Register](docs/ir-rc) to mitigate issues with control EEPROM output glitching
* [Instruction set](docs/in-summary) and addressing modes similar to the 6502.

Most of this design was prototyped in original
[NQSAP breadboard build](https://tomnisbet.github.io/nqsap/). Some of the enhancements
from that original design are:

* Loader design with shift registers now allows access to all microcode control lines
* Microcode ROM count reduced from 4 to 3 by combining some signals
* ALU shift register design replaced with a simple offset register for the right shift
operation
* Maximum number of microcode steps increased from 8 to 16
* RAM can now optionally address four different 256-byte blocks, allowing for separate
program, data, and stack areas.
