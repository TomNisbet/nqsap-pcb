---
title: "Backplane"
permalink: /docs/backplane/
excerpt: "Backplane for the NQSAP-PCB computer"
---

The NQSAP-PCB backplane and interconnect design is based on an [8-bit PCB implementation
by
djh82uk](https://www.reddit.com/r/beneater/comments/pn4j6j/finally_complete_with_all_bugs_fixed/)

The system is built from three types of boards.  The Backplane board is a passive base
board with a generic 40 pin bus.  Module boards have the functional circuitry for the
computer, like the registers, ALU, or Program Counter.  Module boards plug into the bus
connectors on the Backplane board.  A single Backplane can hold three Module boards.  Bus
Connector boards connect two adjacent Backplane boards, extending the system vertically to
accomodate additional modules.  

[![Backplane with modules](../../assets/images/backplane-with-modules-500.jpg "backplane with module boards")](../../assets/images/backplane-with-modules.jpg)

In addition to the bus signals, which connect to all modules, the Backplane board also has
interconnect headers that allow signals to be passed between two adjacent Module boards.
For example, the A/B Register module uses the interconnects to pass the A and B outputs to
the ALU module.

The Backplane boards contain no active components.  Other than the ground and power
connections on pins 1 and 40 of the bus, there are no other bus signals that are
interpreted by the backplane.  This makes it suitable to any number of generic designs.

## Backplane and Bus

The main system bus is 40 pins using 2.54mm spacing.  This was chosen as the largest
number of pins that would find on a 100mm board.  All of the 40 pin connectors on the
bakplane are wired together, so pin one on a connector is wired to pin one on every other
connector.

[![Backplane](../../assets/images/backplane-board-500.jpg "backplane")](../../assets/images/backplane-board.jpg)

Each Backplane board can hold three full-height modules across.  Any module slot can hold
one full-height or two half-height modules.  The full size module boards measure 90mm from
the top row of pins to the bottom row.  The total board height is 96mm.  The current
system is not using and half-height modules.

Module boards attach to the Backplane board using 40 pin headers along the top and bottom
edge of the module.  This provides both the electirial and mechanical connection - there
are no screws or fasteners to hold the modules in place.  The signals are identical on the
top and bottom connectors, so the modules can pull signals from either set of pins, giving
flexibility in their routing.

Backplane boards have additional 40-pin bus connectors along the top and bottom so that
multiple backplane boards can be chained together to accomodate additional groups of three
module boards.  A small Bus Connector board is used to connect the backplanes. Three Bus
Connectors are used to provide mechanical stability between a pair of backplanes. Each one
of the three is connecting the entire bus, so only one Bus Connector is technically needed
to make the electrical connections.

## Backplane module interconnects

A 2x8 pin header is provided between each half-height board to make module-to-module
connections.  A full height board can use both sets of connectors for a total of 32 pins.
Rather than being connected left to left and right to right, the interconnects have the
inner pins connected and the outer pins connected.  A module needing 8 or fewer
connections could populate just a 1x8 connector instead of a 2x8 to save space.

[![Backplane](../../assets/images/backplane-schematic.png "backplane"){:width="720px"}](../../assets/images/backplane-schematic.png)

Note that the interconnects are not connected all the way across the backplane.  If the
left module and right module need to talk, the signals will need to route through the
middle module.  Because the interconnects do not connect all the way across, it is
possible that the left and middle modules could use a different set of interconnects as
the middle and right modules.

There are no module-specific interconnects vertically, so related boards should share the
same backplane board to leverage the horizontal interconnects.

## Bus connectors

[![Bus connector](../../assets/images/bus-connector-board-500.jpg "bus connector")](../../assets/images/bus-connector-board.jpg)[![Bus LEDs](../../assets/images/bus-leds-board-500.jpg "bus LEDs")](../../assets/images/bus-leds-board.jpg)

The Bus Connector boards connect Backplane boards together to expand the computer
vertically. Three connectors are used between each pair of backplane boards.  The bus
connectors wire all 40 lines top-to-bottom.

[![Bus connector schematic](../../assets/images/bus-connector-schematic.png "bus connector schematic"){:width="720px"}](../../assets/images/bus-connector-schematic.png)

### Data LEDs and termination
The Bus Connector boards have additional functionality on the reverse side.  With the board flipped and the pin headers installed on the other side, LEDs and resistors can be added to display the status of the data bus.

[![Bus connector variations](../../assets/images/bus-connector-pair-500.jpg "bus connector variations")](../../assets/images/bus-connector-pair.jpg)

The resistor and LED pairs can also be populated to create a bus termination board.  Use a 1K resistor for the R values and a 0 Ohm for the D values to get a 1K bus termination. Or use pairs of 470 Ohm resistors for a 940 Ohm termination.
