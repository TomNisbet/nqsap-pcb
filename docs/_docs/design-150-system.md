---
title: "System Design"
permalink: /docs/system/
excerpt: "System-level design of the NQSAP-PCB computer"
---

## Bus

bus signal list

## Register Decoding

Decoders moved to module groups

Decoding in groups of 8, not the full 16.  Connected modules must be in same group.

## Layout and Interconnects

groups of three dependent on interconnects and shared register decode hardware

Loader, Microcode, IR-RC

A-B, ALU, Flags

RAM provides decoding for additional boards
