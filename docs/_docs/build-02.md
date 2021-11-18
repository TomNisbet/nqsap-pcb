---
title: "Build 2"
permalink: /docs/build-02/
excerpt: "NQSAP-PCB computer build 2"
---

[![Second set of boards](../../assets/images/boards2.png "Second set of boards"){:width="400px"}](../../assets/images/boards2.png)

The second batch of boards contained a new Loader/Debugger as well as the first boards for
the microcode ROMs, Instruction Register/Ring Counter, and RAM/MAR.  These boards were
chosen for the second build because they form the core of the control circuitry.  The
addition of a program counter would allow a fully-functional, although somewhat boring,
computer. The next build will include the ALU and flags to round out the functionality.

### Loader plus Clock and Reset

The new [Loader](../loader/) functioned as designed.  The Arduino software from the V1
board was simplified to use the new shift register scheme.

### Microcode ROMs

The LED portion of the [Microcode module](../microcode/) was assembled early to help
verify operation of the Loader and other modules.  The actual ROMs were added later and
their operation was checked with the Loader/debugger.

### Instruction Register and Ring Counter

The dream of a perfect build ended with the [IR-RC](../ir-rc/) board.  This one had two minor
problems that will be fixed with a new board update.  

The first problem was the T-EXT LED wired to Vcc instead of group.  The temporary fix was
to install the LED backwards, causing it to display the inverted signal.

The second problem is that the Ring Counter requires an inverted N signal from the bus.
The Loader was providing some inverted signals over the module interconnects, but this one
was not included.  As a temporary fix, the load input to the ring counter was wired to an
unused bus line where it can be manually set or wired to an external inverter.  The next
version of the board will add a hex inverter to produce the needed signals locally.

### RAM and MAR

The [RAM and MAR](../ram-mar/) module worked as designed and was verified by the self test
routines on the Loader/debugger.  The timing of this test will need to be adjusted because
the Loader's new shift register design is slower that the previous parallel register
design. Most of the tests have timing delays built-in to allow visual observation of the
test, so these will be shortened appropriately.

## Results

[![Second set self test](../../assets/images/boards2.gif "second set of boards"){:width="400px"}](../../assets/images/boards2.gif)
