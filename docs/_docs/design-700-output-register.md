---
title: "Output Register"
permalink: /docs/output-register/
excerpt: "Output register and display of the NQSAP computer"
---

[![Output register and display](../../assets/images/output-register-board-500.jpg "output register")](../../assets/images/output-register-board.jpg)

The NQSAP uses a different approach to the output display than the Ben Eater SAP-1.
Instead of driving an LED display with a sequencer and an EEPROM, an ATmega328 is used.
The Atmega replaces not only the EEPROM and counter hardware, but it also takes care of
the buffering, eliminating the 74ls173 registers.

The board includes its own address decoding hardware, so it has no dependencies on other boards and requires no interconnet. There is a space to populate an AVR connector to
flash new code onto the ATmega328P.

The output register can be jumpered to display its result in one of three modes:

* hex (00 to ff)
* signed decimal (-128 to 127)
* unsigned decimal (0 to 255)

[![Output Register Schematic](../../assets/images/output-register-schematic.png "output register"){:width="400px"}](../../assets/images/output-register-schematic.png)

The output register hardware is exteremely minimal due to the use of segment multiplexing
instead of digit multiplexing.  The removes the need for transistors or other drivers so
that the complete hardware consists of just the Atmege328, the display, and four
resistors.

Because the design is useful outside of the NQSAP-PCB, the Output Register is documented
in its own repository.  The
[minimal-hardware 7 segment display](https://github.com/TomNisbet/minimal-hardware-7-segment-display)
repository has complete details, including source code.

It is a bit of a cheat for a TTL computer build to use a microcontroller that has vastly
more power than the entire resulting computer.  But the 328 version was an interesting
design exercise and it can be argued that the display is really more of a peripheral than
an integrated part of the computer.

## Bill of Materials

* ATmega328P microcontroller
* 74HCT138 3-to-8 decoder
* 4-digit, 7-segment LED display
