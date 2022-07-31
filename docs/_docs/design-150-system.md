---
title: "System Design"
permalink: /docs/system/
excerpt: "System-level design of the NQSAP-PCB computer"
---

## Register Decoding

The original breadboarded NQSAP had 4 control lines for read selects and 4 for write
selects.  Each of these was decoded to provide 15 rgister read and 15 register write
select signals.  The breadboard build had a single set of decoders, and then the 30
control lines were distributed out to the individual modules.  For the PCB build, the
limited number of bus lines makes this approach impractical.

The desire to keep the module boards at 100mm square and the use of a single row of
connector pins limited the bus to 40 pins total.  Using 30 of these pins just for register
decoding obviously would not work.  The tradeoff was to move the register decode hardware
to the module boards.

On the NQSAP-PCB build, the 4 register write selects and 4 register read selects are
presented on the bus, using a total of 8 pins.  Register select decoding is performed
locally and can be distributed across the module interconnects so that a group of three
module boards on a single backplane board can share a single set of decoders. Rather than
decode all 15 addresses, a module board will use a single 3-to-8 decoder to produce either
the low 7 addresses or the high eight addresses.

[![Register Select Interconnect](../../assets/images/select-interconnect-500.jpg "register select interconnect")](../../assets/images/select-interconnect.jpg)

The picture above shows an example of a set of module boards sharing register select
decode logic.  The RAM board has a pair of 3-to-8 decoders to provide read and write
selects for the onboard RAM and MAR Register.  Additional selects are sent via the
interconnects for use by the PC/SP module.  While this does create dependencies between
groups of modules, it does eliminate the need for decode logic on each board or a larger
bus with centralized decoding.  In most cases, there are related boards that are already
passing other signals as well.

## Layout and Interconnects

The module interconnect headers on the backplane are used to connect signals that are
common to a small number of boards.  These interconnects keep the bus connectors limited
to signals that are typically used system-wide.  This does force the placement of some
modules in the final assembled computer.  The current design has four groups of related
modules that need to occupy the same backplane:

**Loader, Microcode, IR/RC**

The outputs of the Instruction Register and Ring Counter are sent to the Microcode module
to be used as address inputs to the EEPROMs.  The Loader sends control signals to the
Microcode board to disable the EEPROMs when the loader is active.

**A/B Registers, ALU, Flags**

The A/B board passes the outputs of its registers to the ALU as the as the operands for
arithmetic and logic calculations.  It also shares its register select signals.  The ALU
board passes calculated flag values to the Flags board and also forwards register selects
from the A/B board.

**RAM and PC/SP**

The RAM board has register select decoding for its own use and it shares additional select
lines over the intrconnect that are used by the PC/SP.  There are no other signals passed
between the boards, so the PC/SP could just as easily get its register selects from another
module or be re-spun to have them local.

**D/Index Adder and X/Y Registers**

An 8-bit value from the X/Y selector is passed to the Index Adder over the interconnects.
The D/Index Adder Module also provides the X/Y register select values.

## Register Selects

|Decimal|Hex  |Write|Read |Write Module|Read Module|
|:---:  |:---:|:---:|:---:|:---:       |:---:      |
|  0    | 0   |none |none |            |           |
|  1    | 1   |RAM  |RAM  |RAM         |RAM        |
|2      |2    |MAR  |     |RAM         |           |
|3      |3    |     |     |            |           |
|4      |4    |     |     |            |           |
|5      |5    |     |     |            |           |
|6      |6    |SP   |SP   |RAM         |RAM        |
|7      |7    |PC (Jump)|PC|RAM        |RAM        |
|8      |8    |A    |A    |A/B         |A/B        |
|9      |9    |B    |B    |A/B         |A/B        |
|10     |A    |Output|H (sHift)|Output |A/B        |
|11     |B    |X    |X    |D           |D          |
|12     |C    |Y    |Y    |D           |D          |
|13     |D    |D    |Adder|D           |D          |
|14     |E    |     |ALU  |            |A/B        |
|15     |F    |IR   |Flags|IR          |A/B        |
|====

Note that modules use only one 3-to-8 decoder chip, so they can decode
either addresses 0-7 or 8-15.  The ALU and Flags modules use a local
copy of the IR, so even though the A/B and IR board do not share any
signals, they must both use addresses in the same group.

## Bus Signal List

|Pin|Name|Description|
|:---:|:---:|:---|
|1 |GND|Ground|
|2 |n/c|(spare)|
|3 |n/c|(spare)|
|4 |D7 |Data 7|
|5 |D7 |Data 6|
|6 |D7 |Data 5|
|7 |D7 |Data 4|
|8 |D7 |Data 3|
|9 |D7 |Data 2|
|10|D7 |Data 1|
|11|D7 |Data 0|
|12|WR3|Write Register 3|
|13|WR2|Write Register 2|
|14|WR1|Write Register 1|
|15|WR0|Write Register 0|
|16|RR3|Read Register 3|
|17|RR2|Read Register 2|
|18|RR1|Read Register 1|
|19|RR0|Read Register 0|
|20|FN |Flag write Negative|
|21|FV |Flag write oVerflow|
|22|FZ |Flag write Zero|
|23|FC |Flag write Carry|
|24|FB |write Flags from Bus|
|25|SE |Stack increment/decrement Enable|
|26|C1 |Carry select 1 (also DZ, Stack Increment)|
|27|C0 |Carry select 0 (also DY, Stack Decrement)|
|28|CS |Carry flag force Set|
|29|CC |Carry flag force Clear|
|30|M1 |Memory Select 1 (RAM)|
|31|M0 |Memory Select 0 (RAM)|
|32|LF |ALU Force select bit|
|33|~JE |Jump Enable (active low)|
|34|N  |Next instruction (clear ring counter)|
|35|PI |Program counter Increment|
|36|CLK|master Clock pulse|
|37|n/c|(spare)|
|38|n/c|(spare)|
|39|~RST|master RESET (active low)|
|40|Vcc|+5 Volts|
|====
