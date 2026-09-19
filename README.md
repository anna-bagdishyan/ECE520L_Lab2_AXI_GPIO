# ECE520L Lab2 AXI GPIO

## Overview  
This lab involved utilizing the Zynq SoC design flow to create a Vivado block design with multiple AXI GPIO peripherals. The design was
configured to interface with the Zybo Z7 switches, LEDs, and RGB LED. A software application was also created in Vitis to control the peripherals through the Zynq system.

## Design Summary
After instantiating and configuring the three AXI GPIO peripherals in the Vivado block design, the hardware design was generated and imported into Vitis to create the software portion.   

For Task 1, the program reads the switch values and uses them to control the LED and RGB LED outputs. When SW0 and SW1 are enabled, the LEDs display a 4-bit binary counter that counts from 0x0 to 0xF and then returns to 0x0. When SW2 and SW3 are enabled, the LEDs display a ring counter that shifts the bit to the left and goes back to LED0 once it reaches 0x8. 

When only SW0 is enabled, LED0 and the RGB LED are turned on. When only SW1 is enabled, LED1 and the green RGB LED are turned on. When only SW2 is enabled, LED2 and the blue RGB LED are turned on. When only SW3 is enabled, LED3 and all three RGB LED channels are turned on, which produces white.  

## Verification and Results
The design was verified by running the Task 1 software through Vitis. The switch combinations were tested on the Zybo Z7 board to verify that the LED and RGB LED outputs matched the desired behavior. The binary counter, ring counter, and the LED and RGB LED outputs were tested. Videos of the hardware results are included below.  

[Video Demonstration for Switch 0](https://drive.google.com/file/d/1qf0CrobWTtkYlmV5tSPjPT3TeBKTmBQ_/view?usp=sharing)  

[Video Demonstration for Switch 1](https://drive.google.com/file/d/1KhcKriV8fS7hqE4USd5aj0UdeAby5F29/view?usp=sharing)  

[Video Demonstration for Switch 2](https://drive.google.com/file/d/16WkUi9pWLBF80eHWk1dpKae_KL3SUwC3/view?usp=sharing)  

[Video Demonstration for Switch 3](https://drive.google.com/file/d/1bu7vLzDAVfdhtjyXSAlg6cFF37ktired/view?usp=sharing)  

[Video Demonstration for the Binary Counter](https://drive.google.com/file/d/1W38CthnBvY1-wHtXISmaxXqzQMT1V7Vv/view?usp=sharing)  

[Video Demonstration for the Ring Counter](https://drive.google.com/file/d/14u3SLLtUIuu39LbHQSO58GI0Cjp2y4a3/view?usp=sharing)  

## Known Issues or Limitations
The design works as intended, with no current known issues.

## References
ECE 520/L Lab 2 - AXI GPIO Manual.
