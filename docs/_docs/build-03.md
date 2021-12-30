---
title: "Build 3"
permalink: /docs/build-03x/
excerpt: "NQSAP-PCB computer build 3"
---

[![Third set of boards](../../assets/images/boards3-500.jpg "Third set of boards")](../../assets/images/boards3.jpg)

The third batch of boards contained an updated A/B Register module, an updated IR/RC
module, and the first boards for the ALU and Flags modules. The ALU and flags to round out
the functionality and allow for programs that actually perform calculations and do
conditional jumps.

### Instruction Register and Ring Counter

The updated v1.1 [IR-RC](../ir-rc/) board fixes two minor problems from the initial board.
The T-EXT LED is now correctly wired so that it lights to indicate that the Ring Counter
is executing the extended microcode steps 8 to 15.

The new board also adds a hex inverter to invert The CLK and N control signals for its
use. The inverted CLK was originaly created by the Loader module and passed through the
Microcode module on the interconnect bus.

### A/B Registers

The original [A and B Registers](../ab-registers/) functioned as designed, but a v2.0
board was designed for this build to add new functionality.  The new version adds a shift
register (register H) output from the B register.  When selected, this read-only register
outputs the contents of the B register shifted one place to the right.  The LSB of B is
shifted into the Carry flag.  The MSB of the H register is the current contents of the
Carry flag, although it can also be forced to zero using the CC bit from the microcode.
This register is used for the LSR and ROR instructions.  Note that left shift instructions
(ASL and ROL) don't require a shift register because they can be produced by the ALU's A+A
operation.

The new A/B Register module also swapped out the hard-to-find SOP-16 74HCT138s for
standard DIP-16 packages.

The v2.0 board worked as designed with no changes required. The Loader's self test code
was updated to add a new test for the shift register.

### ALU

The [ALU board](../alu/) functioned as designed with no errors found.  This board also
contains the flag detection circuits for the Zero, Carry, and oVeflow flags.  

On thing that was overlooked for this board was the addition of LEDs to indicate status.
At a minimum, it should have a READ indicator when the ALU results are being output to the
bus.  Indicators for the flag detection would be helpful as well.  By themselves, these
missing features probably don't warrant a new spin of the board, but should be added if a
new version is built for any other reason.

### Flags and Jump Control

The [Flags board](../flags/) functioned as designed with no errors found.  This
functionality was never fully working on the original breadboard NQSAP, so it was a nice
surprise that it didn't need any follow-up debugging for the PCB version.

The Flags board also contains logic to produce the conditional jump signal for the
Program Counter.  The Loader's self test code was updated with several new tests:
* load and store of the flags to the bus
* program counter conditional jump for all flag value combinations
* flag register values as the result of all ALU operations

Like the ALU module, the Flags module should have had additional LED indicators.  At a
minumum, a READ signal should be present to show when the flag bits are being read to the
bus.

## Results

[![Third set self test](../../assets/images/build3.gif "third set of boards"){:width="400px"}](../../assets/images/build3.gif)

This shows the NQSAP-PCB with the ALU and Flags boards from the third build, as well as a
prototyped Program Counter (upper right) and a proof-pf-concept Stack Pointer (upper
left). The Arduino Loader is not active and the system is running a simple program that
loads a sequence of values into the A register.
