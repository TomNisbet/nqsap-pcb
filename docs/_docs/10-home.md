---
title: "NQSAP-PCB 8-bit TTL Computer"
permalink: /
excerpt: "NQSAP-PCB: PCB version of the Not Quite Simple As Possible computer"
---

The Not Quite Simple As Possible Computer

<figure class="video_container">
  <video controls="true" allowfullscreen="true" poster="assets/videos/nqsap-video.png">
    <source src="assets/videos/nqsap-video.mp4" type="video/mp4">
  </video>
</figure>

NQSAP-PCB is the second iteration of the
[NQSAP breadboard TTL computer](https://tomnisbet.github.io/nqsap/). 

Highlights of the design are:

* [Arduino-based loader/debugger](../loader/) to load programs and run interactive diagnostics
* 8-bit addressing extends the size of memory and number of opcodes
* 74LS181 ALU provides arithmetic and logic operations including add, subtract, AND, OR,
 and XOR
* 3-to-8 decoders for register selection simplifies wiring and reduces the number of
  microcode bits needed while also protecting against inadvertent bus collisions
