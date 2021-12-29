---
title: "Build 3"
permalink: /docs/build-03/
excerpt: "NQSAP-PCB computer build 3"
---

## May 2020 - Initial Build

[![Initial build](../../assets/images/registers-1.jpg "initial NQSAP build"){:width="400px"}](../../assets/images/registers-1.jpg)

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

### Output Register

[![Output Register prototype](../../assets/images/output-register-build.jpg "Output Register prototype"){:width="400px"}](../../assets/images/output-register-build.jpg)[![Output Register](../../assets/images/output-register-build-2.jpg "Output Register"){:width="400px"}](../../assets/images/output-register-build-2.jpg)

The final component added before the control logic is the
[Output Register](../output-register/).  This is a 4-digit LED display that can show an
8-bit result as hex, signed decimal, or unsigned decimal.  The Ben Eater build uses a
ROM and counter to implement the output register, but NQSAP took a different direction
that uses minimal hardware.  The display is driven by an ATmega328 microcontroller that
handles the display drive as well as the data latching.  This minimal-hardware
implementation uses only the controller, display, and four resistors.

Its a bit of a cheat for a TTL computer build to use a microcontroller that has vastly
more power than the entire resulting computer.  But the 328 version was an interesting
design exercise and it can be argued that the display is really more of a peripheral than
an integrated part of the computer.

The first picture above shows the first prototype of the display, complete with the AVR
ISP cable used to program the 328.  The second picture shows the completed output register
in place. The resistors are beneath the LED display and are not visible in the picture.


### Jun 2020 - ROM and Register Selects

[![Control logic and Microcode ROMs](../../assets/images/control-build-1.jpg "control logic and ROMs"){:width="400px"}](../../assets/images/control-build-1.jpg)[![Control logic cleanup](../../assets/images/control-build-2.jpg "control logic cleanup"){:width="400px"}](../../assets/images/control-build-2.jpg)

The first fully-operational version of the NQSAP computer was completed in June. The
addition of the control circuits and microcode ROMs tied all of the existing components
together into a working computer that could perform simple operations.

The first picture shows the register select logic and the microcode ROMs.  Only two
ROMs were used in the first build.  ROM2 is dedicated to the register select logic and
ROM0 has miscellaneous housekeeping control signals like reset the ring counter and
increment the program counter.

In the second picture, the temporary register control wiring from the register selectors
has been replaced with permanent connections.  The Loader has also been upgraded.  The
first version used 1-to-2 multiplexers to allow the Loader to access the RAM and MAR.
These multiplexers were replaced with registers that
[directly controlled the register selectors](../loader/#current-design---expanded-register-selects),
allowing the Loader to read or write to any system register, including the RAM.  With this
change, the Loader/Monitor was able to add many new features, including a self-test of the
NQSAP hardware.

The first instruction set had only a dozen or so instructions.  The later addition of
more registers and addressing mode grew the instruction set to over one hundred unique
opcodes.

## Oct 2020 - Stack Pointer

[![Stack Pointer](../../assets/images/stack-pointer-build.jpg "stack pointer"){:width="400px"}](../../assets/images/stack pointer-build.jpg)

The next expansion added a [stack pointer](../stack-pointer/) and its associated JSR, RTS,
push, and pull instructions.  The hardware is a pair of 4-bit up/down counters wired to
the bus through a 74LS245 transceiver.

The stack pointer was placed in the previously empty area on the left side of the MAR
breadboard.

## Nov 2020 - DXY Index Registers

The next logical extension of the NQSAP was the addition of one or two new user-accessible
registers.  These would be general purpose registers, but they would also be used to add
some new indexed addressing modes.

In the initial build of the NQSAP, the decision was made to use 74LS181 ALU chips instead
of the simple 74LS283 adders used in the Ben Eater build.  A few of the 283 adders were
included in the initial parts buy in case the ALU chips didn't work out.  The ALU was a
success and the 283s went into the parts bin.

The adder chips found a use when the X and Y registers were implemented.  By wiring the
X and Y chips with their own dedicated adder, it was possible to easily add several new
addressing modes to the NQSAP instruction set.

This new design could be implemented using eleven chips spread across two breadboards, but
there weren't two contiguous empty boards available.  There was a free space above the ALU
and another below it.

[![before ALU move](../../assets/images/move-1.jpg "before ALU move"){:width="200px"}](../../assets/images/move-1.jpg)

The solution was to disconnect the ALU and its registers and move the assembly down one
spot to free up two boards above the A register.

[![ALU disconnect](../../assets/images/move-2.jpg "ALU disconnect"){:width="200px"}](../../assets/images/move-2.jpg)

The ALU and its registers have very few external connections, so the module came out
easily.  Other than the bus connections, most everything stayed intact. Some LEDs that
shared the power buses needed to be pried out, but they stayed more or less together and
went back in with minimal effort.

At the start, it looked like the bus connections might be able to move along with the
boards, but at some point it just because easier to pull them for later replacement.

[![ALU replaced](../../assets/images/move-3.jpg "ALU replaced"){:width="200px"}](../../assets/images/move-3.jpg)

The ALU is now in its new position with temporary bus connections.  The Loader's system
test feature really proved its worth here to verify that everything went back together
correctly.

[![DXY test](../../assets/images/move-4.jpg "DXY test"){:width="200px"}](../../assets/images/move-4.jpg)

With the new breadboard space now available, two user-accessible X and Y registers were
added along with an internal D register and a dedicated adder that can add D to either X,
Y, or zero.  The initial wiring was done with ribbon jumpers and terminated jumpers to
test the design.  The was later replaced with the permanent wiring as shown in the picture
on the  [DXY Registers](../dxy-registers/) documentation page.

In addition to the new hardware, the [instruction set](../in-summary/) got a major
reorganization.  The X and Y registers and their new addressing modes made it possible to
build a 6502-like machine, so the existing instructions we reorganized and many new
instructions and address modes were added to implement much of the 6502 instruction set.

## Dec 2020 - Shift Register

[![Shift Register](../../assets/images/shift-register-build.jpg "shift register"){:width="400px"}](../../assets/images/shift-register-build.jpg)

The early NQSAP builds used an ALU A register that also served as the user-accessible
accumulator. This was implemented with a pair of 74LS173 4-bit registers.  The upgrade
replaced these registers with a pair of 74LS194 4-bit universal shift registers.  Due to
the pin layout, the chips were almost a drop-in replacement, although they needed to be
mounted facing the opposite way as the previous chips.

Because the shift registers have a direct parallel load capability, they can be used as
general-purpose registers.  The addition of the shift features allowed for new shift and
rotate instructions.  The existing write enable from the ROMs was replaced with three new
signals.  Two of these controlled the load and shift direction and the third selected
the carry-in source of either zero or the carry register.

To test the shift register, a third control register was added to the Loader.  This allows
the loader to write to H and enable its shift functions.

A related part of this build was a new accumulator register that is not directly
connected to the ALU.  This register was needed so that some of the memory operations,
like INC,DEC, and shift, could use the shift register without disturbing the contents of
the user-accessible accumulator.  The new register is now the A register/accumulator and
the ALU's A register is now referred to as H, for sHift register.  All microinstructions
that write to A also write to H, so at the completion of any instruction, the A and H
registers always contain the same value.

The zero detect circuit was also moved so that it takes its input from the bus instead of
the ALU outputs.  This allows the Z flag to be set on non-ALU operations like register
loads and transfers.

The new control lines, plus the lines for the planned expansion of the flags capabilities
required the use of the remaining microcode EEPROM slots.  The system now contains four
ROMs with a total of thirty two control lines.
