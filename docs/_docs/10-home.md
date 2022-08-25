---
title: "NQSAP-PCB 8-bit TTL Computer"
permalink: /
excerpt: "NQSAP-PCB: PCB version of the Not Quite Simple As Possible computer"
---

[![NQSAP-PCB TTL computer](../../assets/images/build5-500.jpg "NQSAP-PCB")](../../assets/images/build5.jpg)
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
