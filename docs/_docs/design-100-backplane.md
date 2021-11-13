---
title: "Backplane"
permalink: /docs/backplane/
excerpt: "Backplane for the NQSAP-PCB computer"
---

## Backplane
[![Backplane](../../assets/images/backplane-board.png "backplane"){:width="500px"}](../../assets/images/backplane-board.png)

The backplane and interconnect design is based on an [8-bit PCB implementation by djh82uk](https://www.reddit.com/r/beneater/comments/pn4j6j/finally_complete_with_all_bugs_fixed/)

Each backplane board can hold three modules across.  Any module slot can hold one full-height or two half-height modules.  The full size module boards measure 90mm from the top row of pins to the bottom row.  The total board height is 96mm.

A 16-pin header is provided between each half-height board to make module-to-module connections.  A full height board can use both sets of connectors for a total of 32 pins.  The interconnects have the inner pins connected and the outer pins connected.  A module needing 8 or fewer connections could populate just a 1x8 connector instead of a 2x8 to save space.

[![Backplane](../../assets/images/backplane-schematic.png "backplane"){:width="500px"}](../../assets/images/backplane-schematic.png)

Note that the interconnects are not connected all the way across the baseboard.  If the left board and right board need to talk, the signals will need to route through the middle board.  Because the interconnects do not connect all the way across, it is possible that the right and middle board could use a different set of interconnects as the middle and left boards.

There are no board-specific interconnects vertically, so related boards should share the same backplane board to leverage the horizontal interconnects.

## Bus connectors

[![Bus connector](../../assets/images/bus-connector-board.png "bus connector"){:width="500px"}](../../assets/images/bus-connector-board.png)[![Bus LEDs](../../assets/images/bus-leds-board.png "bus LEDs"){:width="500px"}](../../assets/images/bus-leds-board.png)

The bus connector boards are used to connect backplane together to expand the computer vertically.  Three connectors are used between each pair of backplane boards.  The bus connector wires all 40 lines top-to-bottom.  

[![Bus connector schematic](../../assets/images/bus-connector-schematic.png "bus connector schematic"){:width="500px"}](../../assets/images/bus-connector-schematic.png)

### Data LEDs and termination
The bus connector boards have additional functionality on the reverse side.  With the board flipped and the pin headers installed on the other side, LEDs and resistors can be added to display the status of the data bus.

[![Bus connector variations](../../assets/images/bus-connector-pair.png "bus connector variations"){:width="500px"}](../../assets/images/bus-connector-pair.png)

The resistor and LED pairs can also be populated to create a bus termination board.  Use a 1K resistor for the R values and a 0 Ohm for the D values to get a 1K bus termination. Or use pairs of 470 Ohm resistors for a 940 Ohm termination.
