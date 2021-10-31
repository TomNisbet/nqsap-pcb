EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "NQSAP-PCB Bus Connector"
Date "2021-10-24"
Rev "1.1"
Comp "github.com/TomNisbet/nqsap-pcb"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x40 J1
U 1 1 616317F2
P 3725 3725
F 0 "J1" H 3725 1600 50  0000 C CNN
F 1 "Bus" H 3700 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 3725 3725 50  0001 C CNN
F 3 "~" H 3725 3725 50  0001 C CNN
	1    3725 3725
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 3975 5675
F 0 "#PWR01" H 3975 5425 50  0001 C CNN
F 1 "GND" H 3980 5502 50  0000 C CNN
F 2 "" H 3975 5675 50  0001 C CNN
F 3 "" H 3975 5675 50  0001 C CNN
	1    3975 5675
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 616326CE
P 4175 1725
F 0 "#PWR019" H 4175 1575 50  0001 C CNN
F 1 "+5V" H 4190 1898 50  0000 C CNN
F 2 "" H 4175 1725 50  0001 C CNN
F 3 "" H 4175 1725 50  0001 C CNN
	1    4175 1725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3975 4825 3925 4825
Wire Wire Line
	3975 5625 3925 5625
Wire Wire Line
	3975 4925 3925 4925
Wire Wire Line
	3975 5025 3925 5025
Wire Wire Line
	3975 5125 3925 5125
Wire Wire Line
	3975 5225 3925 5225
Wire Wire Line
	3975 5325 3925 5325
Wire Wire Line
	3975 5425 3925 5425
Wire Wire Line
	3975 5525 3925 5525
Wire Wire Line
	3975 4325 3925 4325
Wire Wire Line
	3975 4225 3925 4225
Wire Wire Line
	3975 4125 3925 4125
Wire Wire Line
	3975 4025 3925 4025
Wire Wire Line
	3975 3925 3925 3925
Wire Wire Line
	3975 3825 3925 3825
Wire Wire Line
	3975 3725 3925 3725
Wire Wire Line
	3975 3625 3925 3625
Wire Wire Line
	3975 2425 3925 2425
Wire Wire Line
	3975 2525 3925 2525
Wire Wire Line
	3975 2625 3925 2625
Wire Wire Line
	3975 2725 3925 2725
Wire Wire Line
	3975 2825 3925 2825
Wire Wire Line
	3975 2925 3925 2925
Wire Wire Line
	3975 3025 3925 3025
Wire Wire Line
	3975 3125 3925 3125
Wire Wire Line
	3975 3225 3925 3225
Wire Wire Line
	3975 3325 3925 3325
Wire Wire Line
	3975 3425 3925 3425
Wire Wire Line
	3975 3525 3925 3525
Text GLabel 3975 2025 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	3975 4425 3925 4425
Text GLabel 3975 1925 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	3975 4525 3925 4525
Text GLabel 3975 5425 2    50   Input ~ 0
NC-1
Wire Wire Line
	3975 4625 3925 4625
Text GLabel 3975 5525 2    50   Input ~ 0
NC-2
Wire Wire Line
	3975 4725 3925 4725
Text GLabel 3975 1825 2    50   Input ~ 0
RST
Text GLabel 3975 2125 2    50   Input ~ 0
CLK
Wire Wire Line
	4175 1725 3925 1725
Wire Wire Line
	3975 5675 3975 5625
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 61632728
P 4825 3725
F 0 "J2" H 4825 1600 50  0000 C CNN
F 1 "Bus" H 4800 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 4825 3725 50  0001 C CNN
F 3 "~" H 4825 3725 50  0001 C CNN
	1    4825 3725
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61632732
P 5075 5675
F 0 "#PWR02" H 5075 5425 50  0001 C CNN
F 1 "GND" H 5080 5502 50  0000 C CNN
F 2 "" H 5075 5675 50  0001 C CNN
F 3 "" H 5075 5675 50  0001 C CNN
	1    5075 5675
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 6163273C
P 5275 1725
F 0 "#PWR020" H 5275 1575 50  0001 C CNN
F 1 "+5V" H 5290 1898 50  0000 C CNN
F 2 "" H 5275 1725 50  0001 C CNN
F 3 "" H 5275 1725 50  0001 C CNN
	1    5275 1725
	-1   0    0    -1  
$EndComp
Text GLabel 5075 4625 2    50   Input ~ 0
D0
Wire Wire Line
	5075 4825 5025 4825
Wire Wire Line
	5075 5625 5025 5625
Text GLabel 5075 4725 2    50   Input ~ 0
D1
Wire Wire Line
	5075 4925 5025 4925
Text GLabel 5075 4825 2    50   Input ~ 0
D2
Wire Wire Line
	5075 5025 5025 5025
Text GLabel 5075 4925 2    50   Input ~ 0
D3
Wire Wire Line
	5075 5125 5025 5125
Text GLabel 5075 5025 2    50   Input ~ 0
D4
Wire Wire Line
	5075 5225 5025 5225
Text GLabel 5075 5125 2    50   Input ~ 0
D5
Wire Wire Line
	5075 5325 5025 5325
Text GLabel 5075 5225 2    50   Input ~ 0
D6
Wire Wire Line
	5075 5425 5025 5425
Text GLabel 5075 5325 2    50   Input ~ 0
D7
Wire Wire Line
	5075 5525 5025 5525
Text GLabel 5075 3825 2    50   Input ~ 0
RR0
Wire Wire Line
	5075 4325 5025 4325
Text GLabel 5075 3925 2    50   Input ~ 0
RR1
Wire Wire Line
	5075 4225 5025 4225
Text GLabel 5075 4025 2    50   Input ~ 0
RR2
Wire Wire Line
	5075 4125 5025 4125
Text GLabel 5075 4125 2    50   Input ~ 0
RR3
Wire Wire Line
	5075 4025 5025 4025
Text GLabel 5075 4225 2    50   Input ~ 0
WR0
Wire Wire Line
	5075 3925 5025 3925
Text GLabel 5075 4325 2    50   Input ~ 0
WR1
Wire Wire Line
	5075 3825 5025 3825
Text GLabel 5075 4425 2    50   Input ~ 0
WR2
Wire Wire Line
	5075 3725 5025 3725
Text GLabel 5075 4525 2    50   Input ~ 0
WR3
Wire Wire Line
	5075 3625 5025 3625
Text GLabel 5075 2225 2    50   Input ~ 0
PI
Wire Wire Line
	5075 2025 5025 2025
Text GLabel 5075 2325 2    50   Input ~ 0
N
Wire Wire Line
	5075 2125 5025 2125
Text GLabel 5075 2425 2    50   Input ~ 0
JE
Wire Wire Line
	5075 2225 5025 2225
Text GLabel 5075 2525 2    50   Input ~ 0
LF
Wire Wire Line
	5075 2325 5025 2325
Text GLabel 5075 2625 2    50   Input ~ 0
SE
Wire Wire Line
	5075 2425 5025 2425
Text GLabel 5075 2725 2    50   Input ~ 0
SI
Wire Wire Line
	5075 2525 5025 2525
Text GLabel 5075 2825 2    50   Input ~ 0
CC
Wire Wire Line
	5075 2625 5025 2625
Text GLabel 5075 2925 2    50   Input ~ 0
CS
Wire Wire Line
	5075 2725 5025 2725
Text GLabel 5075 3025 2    50   Input ~ 0
C0
Wire Wire Line
	5075 2825 5025 2825
Text GLabel 5075 3125 2    50   Input ~ 0
C1
Wire Wire Line
	5075 2925 5025 2925
Text GLabel 5075 3225 2    50   Input ~ 0
XX0
Wire Wire Line
	5075 3025 5025 3025
Text GLabel 5075 3325 2    50   Input ~ 0
FB
Wire Wire Line
	5075 3125 5025 3125
Text GLabel 5075 3725 2    50   Input ~ 0
FN
Wire Wire Line
	5075 3225 5025 3225
Text GLabel 5075 3625 2    50   Input ~ 0
FV
Wire Wire Line
	5075 3325 5025 3325
Text GLabel 5075 3525 2    50   Input ~ 0
FZ
Wire Wire Line
	5075 3425 5025 3425
Text GLabel 5075 3425 2    50   Input ~ 0
FC
Wire Wire Line
	5075 3525 5025 3525
Text GLabel 5075 2025 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	5075 4425 5025 4425
Text GLabel 5075 1925 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	5075 4525 5025 4525
Text GLabel 5075 5425 2    50   Input ~ 0
NC-1
Wire Wire Line
	5075 4625 5025 4625
Text GLabel 5075 5525 2    50   Input ~ 0
NC-2
Wire Wire Line
	5075 4725 5025 4725
Text GLabel 5075 1825 2    50   Input ~ 0
RST
Wire Wire Line
	5075 1825 5025 1825
Text GLabel 5075 2125 2    50   Input ~ 0
CLK
Wire Wire Line
	5075 1925 5025 1925
Wire Wire Line
	5275 1725 5025 1725
Wire Wire Line
	5075 5675 5075 5625
Text GLabel 3975 3425 2    50   Input ~ 0
FC
Text GLabel 3975 3525 2    50   Input ~ 0
FZ
Text GLabel 3975 3625 2    50   Input ~ 0
FV
Text GLabel 3975 3725 2    50   Input ~ 0
FN
Text GLabel 3975 3325 2    50   Input ~ 0
FB
Text GLabel 3975 3225 2    50   Input ~ 0
XX0
Text GLabel 3975 3125 2    50   Input ~ 0
C1
Text GLabel 3975 3025 2    50   Input ~ 0
C0
Text GLabel 3975 2925 2    50   Input ~ 0
CS
Text GLabel 3975 2825 2    50   Input ~ 0
CC
Text GLabel 3975 2725 2    50   Input ~ 0
SI
Text GLabel 3975 2625 2    50   Input ~ 0
SE
Text GLabel 3975 2525 2    50   Input ~ 0
LF
Text GLabel 3975 2425 2    50   Input ~ 0
JE
Text GLabel 3975 2325 2    50   Input ~ 0
N
Text GLabel 3975 2225 2    50   Input ~ 0
PI
Text GLabel 3975 4525 2    50   Input ~ 0
WR3
Text GLabel 3975 4425 2    50   Input ~ 0
WR2
Text GLabel 3975 4325 2    50   Input ~ 0
WR1
Text GLabel 3975 4225 2    50   Input ~ 0
WR0
Text GLabel 3975 4125 2    50   Input ~ 0
RR3
Text GLabel 3975 4025 2    50   Input ~ 0
RR2
Text GLabel 3975 3925 2    50   Input ~ 0
RR1
Text GLabel 3975 3825 2    50   Input ~ 0
RR0
Text GLabel 3975 5325 2    50   Input ~ 0
D7
Text GLabel 3975 5225 2    50   Input ~ 0
D6
Text GLabel 3975 5125 2    50   Input ~ 0
D5
Text GLabel 3975 5025 2    50   Input ~ 0
D4
Text GLabel 3975 4925 2    50   Input ~ 0
D3
Text GLabel 3975 4825 2    50   Input ~ 0
D2
Text GLabel 3975 4725 2    50   Input ~ 0
D1
Text GLabel 3975 4625 2    50   Input ~ 0
D0
Wire Wire Line
	3925 2325 3975 2325
Wire Wire Line
	3925 2225 3975 2225
Wire Wire Line
	3925 2125 3975 2125
Wire Wire Line
	3925 2025 3975 2025
Wire Wire Line
	3925 1925 3975 1925
Wire Wire Line
	3925 1825 3975 1825
$Comp
L Device:LED_Small D1
U 1 1 616CEA95
P 6675 2450
F 0 "D1" H 6575 2575 50  0000 C CNN
F 1 "D0" H 6575 2500 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 2450 50  0001 C CNN
F 3 "~" V 6675 2450 50  0001 C CNN
	1    6675 2450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 616D2580
P 7050 2450
F 0 "R1" V 7175 2350 50  0000 C CNN
F 1 "470" V 7100 2325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 2450 50  0001 C CNN
F 3 "~" H 7050 2450 50  0001 C CNN
	1    7050 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 616D3407
P 7350 4275
F 0 "#PWR03" H 7350 4025 50  0001 C CNN
F 1 "GND" H 7355 4102 50  0000 C CNN
F 2 "" H 7350 4275 50  0001 C CNN
F 3 "" H 7350 4275 50  0001 C CNN
	1    7350 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2450 6775 2450
Text GLabel 6475 2450 0    50   Input ~ 0
D0
Wire Wire Line
	6575 2450 6475 2450
Wire Wire Line
	7350 2450 7150 2450
$Comp
L Device:LED_Small D2
U 1 1 616EBE38
P 6675 2700
F 0 "D2" H 6575 2825 50  0000 C CNN
F 1 "D1" H 6575 2750 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 2700 50  0001 C CNN
F 3 "~" V 6675 2700 50  0001 C CNN
	1    6675 2700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 616EC01C
P 7050 2700
F 0 "R2" V 7175 2600 50  0000 C CNN
F 1 "470" V 7100 2575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 2700 50  0001 C CNN
F 3 "~" H 7050 2700 50  0001 C CNN
	1    7050 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2700 6775 2700
Text GLabel 6475 2700 0    50   Input ~ 0
D1
Wire Wire Line
	6575 2700 6475 2700
Wire Wire Line
	7350 2700 7150 2700
$Comp
L Device:LED_Small D3
U 1 1 616F0271
P 6675 2950
F 0 "D3" H 6575 3075 50  0000 C CNN
F 1 "D2" H 6575 3000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 2950 50  0001 C CNN
F 3 "~" V 6675 2950 50  0001 C CNN
	1    6675 2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 616F047F
P 7050 2950
F 0 "R3" V 7175 2850 50  0000 C CNN
F 1 "470" V 7100 2825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 2950 50  0001 C CNN
F 3 "~" H 7050 2950 50  0001 C CNN
	1    7050 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2950 6775 2950
Text GLabel 6475 2950 0    50   Input ~ 0
D2
Wire Wire Line
	6575 2950 6475 2950
Wire Wire Line
	7350 2950 7150 2950
$Comp
L Device:LED_Small D4
U 1 1 616F048D
P 6675 3200
F 0 "D4" H 6575 3325 50  0000 C CNN
F 1 "D3" H 6575 3250 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 3200 50  0001 C CNN
F 3 "~" V 6675 3200 50  0001 C CNN
	1    6675 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 616F0497
P 7050 3200
F 0 "R4" V 7175 3100 50  0000 C CNN
F 1 "470" V 7100 3075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 3200 50  0001 C CNN
F 3 "~" H 7050 3200 50  0001 C CNN
	1    7050 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3200 6775 3200
Text GLabel 6475 3200 0    50   Input ~ 0
D3
Wire Wire Line
	6575 3200 6475 3200
Wire Wire Line
	7350 3200 7150 3200
$Comp
L Device:LED_Small D5
U 1 1 616F5264
P 6675 3450
F 0 "D5" H 6575 3575 50  0000 C CNN
F 1 "D4" H 6575 3500 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 3450 50  0001 C CNN
F 3 "~" V 6675 3450 50  0001 C CNN
	1    6675 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 616F54C6
P 7050 3450
F 0 "R5" V 7175 3350 50  0000 C CNN
F 1 "470" V 7100 3325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 3450 50  0001 C CNN
F 3 "~" H 7050 3450 50  0001 C CNN
	1    7050 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3450 6775 3450
Text GLabel 6475 3450 0    50   Input ~ 0
D4
Wire Wire Line
	6575 3450 6475 3450
Wire Wire Line
	7350 3450 7150 3450
$Comp
L Device:LED_Small D6
U 1 1 616F54D4
P 6675 3700
F 0 "D6" H 6575 3825 50  0000 C CNN
F 1 "D5" H 6575 3750 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 3700 50  0001 C CNN
F 3 "~" V 6675 3700 50  0001 C CNN
	1    6675 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 616F54DE
P 7050 3700
F 0 "R6" V 7175 3600 50  0000 C CNN
F 1 "470" V 7100 3575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 3700 50  0001 C CNN
F 3 "~" H 7050 3700 50  0001 C CNN
	1    7050 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3700 6775 3700
Text GLabel 6475 3700 0    50   Input ~ 0
D5
Wire Wire Line
	6575 3700 6475 3700
Wire Wire Line
	7350 3700 7150 3700
$Comp
L Device:LED_Small D7
U 1 1 616F54EC
P 6675 3950
F 0 "D7" H 6575 4075 50  0000 C CNN
F 1 "D6" H 6575 4000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 3950 50  0001 C CNN
F 3 "~" V 6675 3950 50  0001 C CNN
	1    6675 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 616F54F6
P 7050 3950
F 0 "R7" V 7175 3850 50  0000 C CNN
F 1 "470" V 7100 3825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 3950 50  0001 C CNN
F 3 "~" H 7050 3950 50  0001 C CNN
	1    7050 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3950 6775 3950
Text GLabel 6475 3950 0    50   Input ~ 0
D6
Wire Wire Line
	6575 3950 6475 3950
Wire Wire Line
	7350 3950 7150 3950
$Comp
L Device:LED_Small D8
U 1 1 616F5504
P 6675 4200
F 0 "D8" H 6575 4325 50  0000 C CNN
F 1 "D7" H 6575 4250 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6675 4200 50  0001 C CNN
F 3 "~" V 6675 4200 50  0001 C CNN
	1    6675 4200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 616F550E
P 7050 4200
F 0 "R8" V 7175 4100 50  0000 C CNN
F 1 "470" V 7100 4075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 4200 50  0001 C CNN
F 3 "~" H 7050 4200 50  0001 C CNN
	1    7050 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 4200 6775 4200
Text GLabel 6475 4200 0    50   Input ~ 0
D7
Wire Wire Line
	6575 4200 6475 4200
Wire Wire Line
	7350 4200 7150 4200
Wire Wire Line
	7350 2450 7350 2700
Connection ~ 7350 2700
Wire Wire Line
	7350 2700 7350 2950
Connection ~ 7350 2950
Wire Wire Line
	7350 2950 7350 3200
Connection ~ 7350 3200
Wire Wire Line
	7350 3200 7350 3450
Connection ~ 7350 3450
Wire Wire Line
	7350 3450 7350 3700
Connection ~ 7350 3700
Wire Wire Line
	7350 3700 7350 3950
Connection ~ 7350 3950
Wire Wire Line
	7350 3950 7350 4200
Connection ~ 7350 4200
Wire Wire Line
	7350 4200 7350 4275
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 621002EB
P 7050 1250
F 0 "#FLG0101" H 7050 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 1423 50  0000 C CNN
F 2 "" H 7050 1250 50  0001 C CNN
F 3 "~" H 7050 1250 50  0001 C CNN
	1    7050 1250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6210088A
P 6700 1300
F 0 "#FLG0102" H 6700 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 1473 50  0000 C CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "~" H 6700 1300 50  0001 C CNN
	1    6700 1300
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 62100F53
P 6700 1250
F 0 "#PWR0101" H 6700 1100 50  0001 C CNN
F 1 "+5V" H 6715 1423 50  0000 C CNN
F 2 "" H 6700 1250 50  0001 C CNN
F 3 "" H 6700 1250 50  0001 C CNN
	1    6700 1250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6210188D
P 7050 1300
F 0 "#PWR0102" H 7050 1050 50  0001 C CNN
F 1 "GND" H 7055 1127 50  0000 C CNN
F 2 "" H 7050 1300 50  0001 C CNN
F 3 "" H 7050 1300 50  0001 C CNN
	1    7050 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 1250 7050 1300
Wire Wire Line
	6700 1250 6700 1300
$EndSCHEMATC
