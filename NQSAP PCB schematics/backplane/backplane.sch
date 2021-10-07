EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "NQSAP Backplane"
Date "2021-10-03"
Rev "1.0"
Comp "github.com/TomNisbet/nqsap-pcb"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x40 J3
U 1 1 6147672F
P 2400 2750
F 0 "J3" H 2400 625 50  0000 C CNN
F 1 "Bus" H 2375 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 2400 2750 50  0001 C CNN
F 3 "~" H 2400 2750 50  0001 C CNN
	1    2400 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61479B05
P 2550 650
F 0 "#PWR03" H 2550 400 50  0001 C CNN
F 1 "GND" H 2555 477 50  0000 C CNN
F 2 "" H 2550 650 50  0001 C CNN
F 3 "" H 2550 650 50  0001 C CNN
	1    2550 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 6147A01A
P 2850 4750
F 0 "#PWR021" H 2850 4600 50  0001 C CNN
F 1 "+5V" H 2865 4923 50  0000 C CNN
F 2 "" H 2850 4750 50  0001 C CNN
F 3 "" H 2850 4750 50  0001 C CNN
	1    2850 4750
	0    1    1    0   
$EndComp
Text GLabel 2650 1850 2    50   Input ~ 0
D0
Wire Wire Line
	2650 1650 2600 1650
Wire Wire Line
	2650 850  2600 850 
Text GLabel 2650 1750 2    50   Input ~ 0
D1
Wire Wire Line
	2650 1550 2600 1550
Text GLabel 2650 1650 2    50   Input ~ 0
D2
Wire Wire Line
	2650 1450 2600 1450
Text GLabel 2650 1550 2    50   Input ~ 0
D3
Wire Wire Line
	2650 1350 2600 1350
Text GLabel 2650 1450 2    50   Input ~ 0
D4
Wire Wire Line
	2650 1250 2600 1250
Text GLabel 2650 1350 2    50   Input ~ 0
D5
Wire Wire Line
	2650 1150 2600 1150
Text GLabel 2650 1250 2    50   Input ~ 0
D6
Wire Wire Line
	2650 1050 2600 1050
Text GLabel 2650 1150 2    50   Input ~ 0
D7
Wire Wire Line
	2650 950  2600 950 
Text GLabel 2650 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	2650 2150 2600 2150
Text GLabel 2650 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	2650 2250 2600 2250
Text GLabel 2650 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	2650 2350 2600 2350
Text GLabel 2650 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	2650 2450 2600 2450
Text GLabel 2650 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	2650 2550 2600 2550
Text GLabel 2650 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	2650 2650 2600 2650
Text GLabel 2650 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	2650 2750 2600 2750
Text GLabel 2650 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	2650 2850 2600 2850
Text GLabel 2650 4250 2    50   Input ~ 0
PI
Wire Wire Line
	2650 4450 2600 4450
Text GLabel 2650 4150 2    50   Input ~ 0
N
Wire Wire Line
	2650 4350 2600 4350
Text GLabel 2650 4050 2    50   Input ~ 0
JE
Wire Wire Line
	2650 4250 2600 4250
Text GLabel 2650 3950 2    50   Input ~ 0
LF
Wire Wire Line
	2650 4150 2600 4150
Text GLabel 2650 3850 2    50   Input ~ 0
SE
Wire Wire Line
	2650 4050 2600 4050
Text GLabel 2650 3750 2    50   Input ~ 0
SI
Wire Wire Line
	2650 3950 2600 3950
Text GLabel 2650 3650 2    50   Input ~ 0
CC
Wire Wire Line
	2650 3850 2600 3850
Text GLabel 2650 3550 2    50   Input ~ 0
CS
Wire Wire Line
	2650 3750 2600 3750
Text GLabel 2650 3450 2    50   Input ~ 0
C0
Wire Wire Line
	2650 3650 2600 3650
Text GLabel 2650 3350 2    50   Input ~ 0
C1
Wire Wire Line
	2650 3550 2600 3550
Text GLabel 2650 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	2650 3450 2600 3450
Text GLabel 2650 3150 2    50   Input ~ 0
FB
Wire Wire Line
	2650 3350 2600 3350
Text GLabel 2650 2750 2    50   Input ~ 0
FN
Wire Wire Line
	2650 3250 2600 3250
Text GLabel 2650 2850 2    50   Input ~ 0
FV
Wire Wire Line
	2650 3150 2600 3150
Text GLabel 2650 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	2650 3050 2600 3050
Text GLabel 2650 3050 2    50   Input ~ 0
FC
Wire Wire Line
	2650 2950 2600 2950
Text GLabel 2650 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	2650 2050 2600 2050
Text GLabel 2650 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	2650 1950 2600 1950
Text GLabel 2650 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	2650 1850 2600 1850
Text GLabel 2650 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	2650 1750 2600 1750
Text GLabel 2650 4650 2    50   Input ~ 0
RST
Wire Wire Line
	2650 4650 2600 4650
Text GLabel 2650 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	2650 4550 2600 4550
Wire Wire Line
	2850 4750 2600 4750
Wire Wire Line
	2550 650  2650 650 
Wire Wire Line
	2650 650  2650 850 
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J19
U 1 1 614A59C0
P 1250 5950
F 0 "J19" H 1168 6567 50  0000 C CNN
F 1 "Conn_02x08" H 1168 6476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 1250 5950 50  0001 C CNN
F 3 "~" H 1250 5950 50  0001 C CNN
	1    1250 5950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x40 J4
U 1 1 614C8F61
P 3200 2750
F 0 "J4" H 3200 625 50  0000 C CNN
F 1 "Bus" H 3175 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 3200 2750 50  0001 C CNN
F 3 "~" H 3200 2750 50  0001 C CNN
	1    3200 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 614C927B
P 3350 650
F 0 "#PWR04" H 3350 400 50  0001 C CNN
F 1 "GND" H 3355 477 50  0000 C CNN
F 2 "" H 3350 650 50  0001 C CNN
F 3 "" H 3350 650 50  0001 C CNN
	1    3350 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 614C9285
P 3650 4750
F 0 "#PWR022" H 3650 4600 50  0001 C CNN
F 1 "+5V" H 3665 4923 50  0000 C CNN
F 2 "" H 3650 4750 50  0001 C CNN
F 3 "" H 3650 4750 50  0001 C CNN
	1    3650 4750
	0    1    1    0   
$EndComp
Text GLabel 3450 1850 2    50   Input ~ 0
D0
Wire Wire Line
	3450 1650 3400 1650
Wire Wire Line
	3450 850  3400 850 
Text GLabel 3450 1750 2    50   Input ~ 0
D1
Wire Wire Line
	3450 1550 3400 1550
Text GLabel 3450 1650 2    50   Input ~ 0
D2
Wire Wire Line
	3450 1450 3400 1450
Text GLabel 3450 1550 2    50   Input ~ 0
D3
Wire Wire Line
	3450 1350 3400 1350
Text GLabel 3450 1450 2    50   Input ~ 0
D4
Wire Wire Line
	3450 1250 3400 1250
Text GLabel 3450 1350 2    50   Input ~ 0
D5
Wire Wire Line
	3450 1150 3400 1150
Text GLabel 3450 1250 2    50   Input ~ 0
D6
Wire Wire Line
	3450 1050 3400 1050
Text GLabel 3450 1150 2    50   Input ~ 0
D7
Wire Wire Line
	3450 950  3400 950 
Text GLabel 3450 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	3450 2150 3400 2150
Text GLabel 3450 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	3450 2250 3400 2250
Text GLabel 3450 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	3450 2350 3400 2350
Text GLabel 3450 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	3450 2450 3400 2450
Text GLabel 3450 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	3450 2550 3400 2550
Text GLabel 3450 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	3450 2650 3400 2650
Text GLabel 3450 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	3450 2750 3400 2750
Text GLabel 3450 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	3450 2850 3400 2850
Text GLabel 3450 4250 2    50   Input ~ 0
PI
Wire Wire Line
	3450 4450 3400 4450
Text GLabel 3450 4150 2    50   Input ~ 0
N
Wire Wire Line
	3450 4350 3400 4350
Text GLabel 3450 4050 2    50   Input ~ 0
JE
Wire Wire Line
	3450 4250 3400 4250
Text GLabel 3450 3950 2    50   Input ~ 0
LF
Wire Wire Line
	3450 4150 3400 4150
Text GLabel 3450 3850 2    50   Input ~ 0
SE
Wire Wire Line
	3450 4050 3400 4050
Text GLabel 3450 3750 2    50   Input ~ 0
SI
Wire Wire Line
	3450 3950 3400 3950
Text GLabel 3450 3650 2    50   Input ~ 0
CC
Wire Wire Line
	3450 3850 3400 3850
Text GLabel 3450 3550 2    50   Input ~ 0
CS
Wire Wire Line
	3450 3750 3400 3750
Text GLabel 3450 3450 2    50   Input ~ 0
C0
Wire Wire Line
	3450 3650 3400 3650
Text GLabel 3450 3350 2    50   Input ~ 0
C1
Wire Wire Line
	3450 3550 3400 3550
Text GLabel 3450 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	3450 3450 3400 3450
Text GLabel 3450 3150 2    50   Input ~ 0
FB
Wire Wire Line
	3450 3350 3400 3350
Text GLabel 3450 2750 2    50   Input ~ 0
FN
Wire Wire Line
	3450 3250 3400 3250
Text GLabel 3450 2850 2    50   Input ~ 0
FV
Wire Wire Line
	3450 3150 3400 3150
Text GLabel 3450 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	3450 3050 3400 3050
Text GLabel 3450 3050 2    50   Input ~ 0
FC
Wire Wire Line
	3450 2950 3400 2950
Text GLabel 3450 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	3450 2050 3400 2050
Text GLabel 3450 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	3450 1950 3400 1950
Text GLabel 3450 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	3450 1850 3400 1850
Text GLabel 3450 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	3450 1750 3400 1750
Text GLabel 3450 4650 2    50   Input ~ 0
RST
Wire Wire Line
	3450 4650 3400 4650
Text GLabel 3450 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	3450 4550 3400 4550
Wire Wire Line
	3650 4750 3400 4750
Wire Wire Line
	3350 650  3450 650 
Wire Wire Line
	3450 650  3450 850 
$Comp
L Connector_Generic:Conn_01x40 J5
U 1 1 614DB71A
P 4000 2750
F 0 "J5" H 4000 625 50  0000 C CNN
F 1 "Bus" H 3975 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 4000 2750 50  0001 C CNN
F 3 "~" H 4000 2750 50  0001 C CNN
	1    4000 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 614DBAFC
P 4150 650
F 0 "#PWR05" H 4150 400 50  0001 C CNN
F 1 "GND" H 4155 477 50  0000 C CNN
F 2 "" H 4150 650 50  0001 C CNN
F 3 "" H 4150 650 50  0001 C CNN
	1    4150 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 614DBB06
P 4450 4750
F 0 "#PWR023" H 4450 4600 50  0001 C CNN
F 1 "+5V" H 4465 4923 50  0000 C CNN
F 2 "" H 4450 4750 50  0001 C CNN
F 3 "" H 4450 4750 50  0001 C CNN
	1    4450 4750
	0    1    1    0   
$EndComp
Text GLabel 4250 1850 2    50   Input ~ 0
D0
Wire Wire Line
	4250 1650 4200 1650
Wire Wire Line
	4250 850  4200 850 
Text GLabel 4250 1750 2    50   Input ~ 0
D1
Wire Wire Line
	4250 1550 4200 1550
Text GLabel 4250 1650 2    50   Input ~ 0
D2
Wire Wire Line
	4250 1450 4200 1450
Text GLabel 4250 1550 2    50   Input ~ 0
D3
Wire Wire Line
	4250 1350 4200 1350
Text GLabel 4250 1450 2    50   Input ~ 0
D4
Wire Wire Line
	4250 1250 4200 1250
Text GLabel 4250 1350 2    50   Input ~ 0
D5
Wire Wire Line
	4250 1150 4200 1150
Text GLabel 4250 1250 2    50   Input ~ 0
D6
Wire Wire Line
	4250 1050 4200 1050
Text GLabel 4250 1150 2    50   Input ~ 0
D7
Wire Wire Line
	4250 950  4200 950 
Text GLabel 4250 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	4250 2150 4200 2150
Text GLabel 4250 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	4250 2250 4200 2250
Text GLabel 4250 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	4250 2350 4200 2350
Text GLabel 4250 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	4250 2450 4200 2450
Text GLabel 4250 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	4250 2550 4200 2550
Text GLabel 4250 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	4250 2650 4200 2650
Text GLabel 4250 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	4250 2750 4200 2750
Text GLabel 4250 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	4250 2850 4200 2850
Text GLabel 4250 4250 2    50   Input ~ 0
PI
Wire Wire Line
	4250 4450 4200 4450
Text GLabel 4250 4150 2    50   Input ~ 0
N
Wire Wire Line
	4250 4350 4200 4350
Text GLabel 4250 4050 2    50   Input ~ 0
JE
Wire Wire Line
	4250 4250 4200 4250
Text GLabel 4250 3950 2    50   Input ~ 0
LF
Wire Wire Line
	4250 4150 4200 4150
Text GLabel 4250 3850 2    50   Input ~ 0
SE
Wire Wire Line
	4250 4050 4200 4050
Text GLabel 4250 3750 2    50   Input ~ 0
SI
Wire Wire Line
	4250 3950 4200 3950
Text GLabel 4250 3650 2    50   Input ~ 0
CC
Wire Wire Line
	4250 3850 4200 3850
Text GLabel 4250 3550 2    50   Input ~ 0
CS
Wire Wire Line
	4250 3750 4200 3750
Text GLabel 4250 3450 2    50   Input ~ 0
C0
Wire Wire Line
	4250 3650 4200 3650
Text GLabel 4250 3350 2    50   Input ~ 0
C1
Wire Wire Line
	4250 3550 4200 3550
Text GLabel 4250 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	4250 3450 4200 3450
Text GLabel 4250 3150 2    50   Input ~ 0
FB
Wire Wire Line
	4250 3350 4200 3350
Text GLabel 4250 2750 2    50   Input ~ 0
FN
Wire Wire Line
	4250 3250 4200 3250
Text GLabel 4250 2850 2    50   Input ~ 0
FV
Wire Wire Line
	4250 3150 4200 3150
Text GLabel 4250 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	4250 3050 4200 3050
Text GLabel 4250 3050 2    50   Input ~ 0
FC
Wire Wire Line
	4250 2950 4200 2950
Text GLabel 4250 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	4250 2050 4200 2050
Text GLabel 4250 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	4250 1950 4200 1950
Text GLabel 4250 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	4250 1850 4200 1850
Text GLabel 4250 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	4250 1750 4200 1750
Text GLabel 4250 4650 2    50   Input ~ 0
RST
Wire Wire Line
	4250 4650 4200 4650
Text GLabel 4250 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	4250 4550 4200 4550
Wire Wire Line
	4450 4750 4200 4750
Wire Wire Line
	4150 650  4250 650 
Wire Wire Line
	4250 650  4250 850 
$Comp
L Connector_Generic:Conn_01x40 J6
U 1 1 614EC36A
P 4800 2750
F 0 "J6" H 4800 625 50  0000 C CNN
F 1 "Bus" H 4775 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 4800 2750 50  0001 C CNN
F 3 "~" H 4800 2750 50  0001 C CNN
	1    4800 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 614EC814
P 4950 650
F 0 "#PWR06" H 4950 400 50  0001 C CNN
F 1 "GND" H 4955 477 50  0000 C CNN
F 2 "" H 4950 650 50  0001 C CNN
F 3 "" H 4950 650 50  0001 C CNN
	1    4950 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 614EC81E
P 5250 4750
F 0 "#PWR024" H 5250 4600 50  0001 C CNN
F 1 "+5V" H 5265 4923 50  0000 C CNN
F 2 "" H 5250 4750 50  0001 C CNN
F 3 "" H 5250 4750 50  0001 C CNN
	1    5250 4750
	0    1    1    0   
$EndComp
Text GLabel 5050 1850 2    50   Input ~ 0
D0
Wire Wire Line
	5050 1650 5000 1650
Wire Wire Line
	5050 850  5000 850 
Text GLabel 5050 1750 2    50   Input ~ 0
D1
Wire Wire Line
	5050 1550 5000 1550
Text GLabel 5050 1650 2    50   Input ~ 0
D2
Wire Wire Line
	5050 1450 5000 1450
Text GLabel 5050 1550 2    50   Input ~ 0
D3
Wire Wire Line
	5050 1350 5000 1350
Text GLabel 5050 1450 2    50   Input ~ 0
D4
Wire Wire Line
	5050 1250 5000 1250
Text GLabel 5050 1350 2    50   Input ~ 0
D5
Wire Wire Line
	5050 1150 5000 1150
Text GLabel 5050 1250 2    50   Input ~ 0
D6
Wire Wire Line
	5050 1050 5000 1050
Text GLabel 5050 1150 2    50   Input ~ 0
D7
Wire Wire Line
	5050 950  5000 950 
Text GLabel 5050 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	5050 2150 5000 2150
Text GLabel 5050 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	5050 2250 5000 2250
Text GLabel 5050 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	5050 2350 5000 2350
Text GLabel 5050 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	5050 2450 5000 2450
Text GLabel 5050 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	5050 2550 5000 2550
Text GLabel 5050 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	5050 2650 5000 2650
Text GLabel 5050 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	5050 2750 5000 2750
Text GLabel 5050 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	5050 2850 5000 2850
Text GLabel 5050 4250 2    50   Input ~ 0
PI
Wire Wire Line
	5050 4450 5000 4450
Text GLabel 5050 4150 2    50   Input ~ 0
N
Wire Wire Line
	5050 4350 5000 4350
Text GLabel 5050 4050 2    50   Input ~ 0
JE
Wire Wire Line
	5050 4250 5000 4250
Text GLabel 5050 3950 2    50   Input ~ 0
LF
Wire Wire Line
	5050 4150 5000 4150
Text GLabel 5050 3850 2    50   Input ~ 0
SE
Wire Wire Line
	5050 4050 5000 4050
Text GLabel 5050 3750 2    50   Input ~ 0
SI
Wire Wire Line
	5050 3950 5000 3950
Text GLabel 5050 3650 2    50   Input ~ 0
CC
Wire Wire Line
	5050 3850 5000 3850
Text GLabel 5050 3550 2    50   Input ~ 0
CS
Wire Wire Line
	5050 3750 5000 3750
Text GLabel 5050 3450 2    50   Input ~ 0
C0
Wire Wire Line
	5050 3650 5000 3650
Text GLabel 5050 3350 2    50   Input ~ 0
C1
Wire Wire Line
	5050 3550 5000 3550
Text GLabel 5050 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	5050 3450 5000 3450
Text GLabel 5050 3150 2    50   Input ~ 0
FB
Wire Wire Line
	5050 3350 5000 3350
Text GLabel 5050 2750 2    50   Input ~ 0
FN
Wire Wire Line
	5050 3250 5000 3250
Text GLabel 5050 2850 2    50   Input ~ 0
FV
Wire Wire Line
	5050 3150 5000 3150
Text GLabel 5050 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	5050 3050 5000 3050
Text GLabel 5050 3050 2    50   Input ~ 0
FC
Wire Wire Line
	5050 2950 5000 2950
Text GLabel 5050 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	5050 2050 5000 2050
Text GLabel 5050 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	5050 1950 5000 1950
Text GLabel 5050 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	5050 1850 5000 1850
Text GLabel 5050 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	5050 1750 5000 1750
Text GLabel 5050 4650 2    50   Input ~ 0
RST
Wire Wire Line
	5050 4650 5000 4650
Text GLabel 5050 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	5050 4550 5000 4550
Wire Wire Line
	5250 4750 5000 4750
Wire Wire Line
	4950 650  5050 650 
Wire Wire Line
	5050 650  5050 850 
$Comp
L Connector_Generic:Conn_01x40 J7
U 1 1 61504BC0
P 5600 2750
F 0 "J7" H 5600 625 50  0000 C CNN
F 1 "Bus" H 5575 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 5600 2750 50  0001 C CNN
F 3 "~" H 5600 2750 50  0001 C CNN
	1    5600 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 61505132
P 5750 650
F 0 "#PWR07" H 5750 400 50  0001 C CNN
F 1 "GND" H 5755 477 50  0000 C CNN
F 2 "" H 5750 650 50  0001 C CNN
F 3 "" H 5750 650 50  0001 C CNN
	1    5750 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 6150513C
P 6050 4750
F 0 "#PWR025" H 6050 4600 50  0001 C CNN
F 1 "+5V" H 6065 4923 50  0000 C CNN
F 2 "" H 6050 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0001 C CNN
	1    6050 4750
	0    1    1    0   
$EndComp
Text GLabel 5850 1850 2    50   Input ~ 0
D0
Wire Wire Line
	5850 1650 5800 1650
Wire Wire Line
	5850 850  5800 850 
Text GLabel 5850 1750 2    50   Input ~ 0
D1
Wire Wire Line
	5850 1550 5800 1550
Text GLabel 5850 1650 2    50   Input ~ 0
D2
Wire Wire Line
	5850 1450 5800 1450
Text GLabel 5850 1550 2    50   Input ~ 0
D3
Wire Wire Line
	5850 1350 5800 1350
Text GLabel 5850 1450 2    50   Input ~ 0
D4
Wire Wire Line
	5850 1250 5800 1250
Text GLabel 5850 1350 2    50   Input ~ 0
D5
Wire Wire Line
	5850 1150 5800 1150
Text GLabel 5850 1250 2    50   Input ~ 0
D6
Wire Wire Line
	5850 1050 5800 1050
Text GLabel 5850 1150 2    50   Input ~ 0
D7
Wire Wire Line
	5850 950  5800 950 
Text GLabel 5850 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	5850 2150 5800 2150
Text GLabel 5850 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	5850 2250 5800 2250
Text GLabel 5850 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	5850 2350 5800 2350
Text GLabel 5850 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	5850 2450 5800 2450
Text GLabel 5850 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	5850 2550 5800 2550
Text GLabel 5850 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	5850 2650 5800 2650
Text GLabel 5850 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	5850 2750 5800 2750
Text GLabel 5850 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	5850 2850 5800 2850
Text GLabel 5850 4250 2    50   Input ~ 0
PI
Wire Wire Line
	5850 4450 5800 4450
Text GLabel 5850 4150 2    50   Input ~ 0
N
Wire Wire Line
	5850 4350 5800 4350
Text GLabel 5850 4050 2    50   Input ~ 0
JE
Wire Wire Line
	5850 4250 5800 4250
Text GLabel 5850 3950 2    50   Input ~ 0
LF
Wire Wire Line
	5850 4150 5800 4150
Text GLabel 5850 3850 2    50   Input ~ 0
SE
Wire Wire Line
	5850 4050 5800 4050
Text GLabel 5850 3750 2    50   Input ~ 0
SI
Wire Wire Line
	5850 3950 5800 3950
Text GLabel 5850 3650 2    50   Input ~ 0
CC
Wire Wire Line
	5850 3850 5800 3850
Text GLabel 5850 3550 2    50   Input ~ 0
CS
Wire Wire Line
	5850 3750 5800 3750
Text GLabel 5850 3450 2    50   Input ~ 0
C0
Wire Wire Line
	5850 3650 5800 3650
Text GLabel 5850 3350 2    50   Input ~ 0
C1
Wire Wire Line
	5850 3550 5800 3550
Text GLabel 5850 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	5850 3450 5800 3450
Text GLabel 5850 3150 2    50   Input ~ 0
FB
Wire Wire Line
	5850 3350 5800 3350
Text GLabel 5850 2750 2    50   Input ~ 0
FN
Wire Wire Line
	5850 3250 5800 3250
Text GLabel 5850 2850 2    50   Input ~ 0
FV
Wire Wire Line
	5850 3150 5800 3150
Text GLabel 5850 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	5850 3050 5800 3050
Text GLabel 5850 3050 2    50   Input ~ 0
FC
Wire Wire Line
	5850 2950 5800 2950
Text GLabel 5850 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	5850 2050 5800 2050
Text GLabel 5850 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	5850 1950 5800 1950
Text GLabel 5850 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	5850 1850 5800 1850
Text GLabel 5850 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	5850 1750 5800 1750
Text GLabel 5850 4650 2    50   Input ~ 0
RST
Wire Wire Line
	5850 4650 5800 4650
Text GLabel 5850 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	5850 4550 5800 4550
Wire Wire Line
	6050 4750 5800 4750
Wire Wire Line
	5750 650  5850 650 
Wire Wire Line
	5850 650  5850 850 
$Comp
L Connector_Generic:Conn_01x40 J8
U 1 1 61505196
P 6450 2750
F 0 "J8" H 6450 625 50  0000 C CNN
F 1 "Bus" H 6425 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 6450 2750 50  0001 C CNN
F 3 "~" H 6450 2750 50  0001 C CNN
	1    6450 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 615051A0
P 6600 650
F 0 "#PWR08" H 6600 400 50  0001 C CNN
F 1 "GND" H 6605 477 50  0000 C CNN
F 2 "" H 6600 650 50  0001 C CNN
F 3 "" H 6600 650 50  0001 C CNN
	1    6600 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 615051AA
P 6900 4750
F 0 "#PWR026" H 6900 4600 50  0001 C CNN
F 1 "+5V" H 6915 4923 50  0000 C CNN
F 2 "" H 6900 4750 50  0001 C CNN
F 3 "" H 6900 4750 50  0001 C CNN
	1    6900 4750
	0    1    1    0   
$EndComp
Text GLabel 6700 1850 2    50   Input ~ 0
D0
Wire Wire Line
	6700 1650 6650 1650
Wire Wire Line
	6700 850  6650 850 
Text GLabel 6700 1750 2    50   Input ~ 0
D1
Wire Wire Line
	6700 1550 6650 1550
Text GLabel 6700 1650 2    50   Input ~ 0
D2
Wire Wire Line
	6700 1450 6650 1450
Text GLabel 6700 1550 2    50   Input ~ 0
D3
Wire Wire Line
	6700 1350 6650 1350
Text GLabel 6700 1450 2    50   Input ~ 0
D4
Wire Wire Line
	6700 1250 6650 1250
Text GLabel 6700 1350 2    50   Input ~ 0
D5
Wire Wire Line
	6700 1150 6650 1150
Text GLabel 6700 1250 2    50   Input ~ 0
D6
Wire Wire Line
	6700 1050 6650 1050
Text GLabel 6700 1150 2    50   Input ~ 0
D7
Wire Wire Line
	6700 950  6650 950 
Text GLabel 6700 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	6700 2150 6650 2150
Text GLabel 6700 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	6700 2250 6650 2250
Text GLabel 6700 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	6700 2350 6650 2350
Text GLabel 6700 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	6700 2450 6650 2450
Text GLabel 6700 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	6700 2550 6650 2550
Text GLabel 6700 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	6700 2650 6650 2650
Text GLabel 6700 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	6700 2750 6650 2750
Text GLabel 6700 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	6700 2850 6650 2850
Text GLabel 6700 4250 2    50   Input ~ 0
PI
Wire Wire Line
	6700 4450 6650 4450
Text GLabel 6700 4150 2    50   Input ~ 0
N
Wire Wire Line
	6700 4350 6650 4350
Text GLabel 6700 4050 2    50   Input ~ 0
JE
Wire Wire Line
	6700 4250 6650 4250
Text GLabel 6700 3950 2    50   Input ~ 0
LF
Wire Wire Line
	6700 4150 6650 4150
Text GLabel 6700 3850 2    50   Input ~ 0
SE
Wire Wire Line
	6700 4050 6650 4050
Text GLabel 6700 3750 2    50   Input ~ 0
SI
Wire Wire Line
	6700 3950 6650 3950
Text GLabel 6700 3650 2    50   Input ~ 0
CC
Wire Wire Line
	6700 3850 6650 3850
Text GLabel 6700 3550 2    50   Input ~ 0
CS
Wire Wire Line
	6700 3750 6650 3750
Text GLabel 6700 3450 2    50   Input ~ 0
C0
Wire Wire Line
	6700 3650 6650 3650
Text GLabel 6700 3350 2    50   Input ~ 0
C1
Wire Wire Line
	6700 3550 6650 3550
Text GLabel 6700 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	6700 3450 6650 3450
Text GLabel 6700 3150 2    50   Input ~ 0
FB
Wire Wire Line
	6700 3350 6650 3350
Text GLabel 6700 2750 2    50   Input ~ 0
FN
Wire Wire Line
	6700 3250 6650 3250
Text GLabel 6700 2850 2    50   Input ~ 0
FV
Wire Wire Line
	6700 3150 6650 3150
Text GLabel 6700 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	6700 3050 6650 3050
Text GLabel 6700 3050 2    50   Input ~ 0
FC
Wire Wire Line
	6700 2950 6650 2950
Text GLabel 6700 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	6700 2050 6650 2050
Text GLabel 6700 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	6700 1950 6650 1950
Text GLabel 6700 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	6700 1850 6650 1850
Text GLabel 6700 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	6700 1750 6650 1750
Text GLabel 6700 4650 2    50   Input ~ 0
RST
Wire Wire Line
	6700 4650 6650 4650
Text GLabel 6700 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	6700 4550 6650 4550
Wire Wire Line
	6900 4750 6650 4750
Wire Wire Line
	6600 650  6700 650 
Wire Wire Line
	6700 650  6700 850 
$Comp
L Connector_Generic:Conn_01x40 J9
U 1 1 61505204
P 7250 2750
F 0 "J9" H 7250 625 50  0000 C CNN
F 1 "Bus" H 7225 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 7250 2750 50  0001 C CNN
F 3 "~" H 7250 2750 50  0001 C CNN
	1    7250 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6150520E
P 7400 650
F 0 "#PWR09" H 7400 400 50  0001 C CNN
F 1 "GND" H 7405 477 50  0000 C CNN
F 2 "" H 7400 650 50  0001 C CNN
F 3 "" H 7400 650 50  0001 C CNN
	1    7400 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 61505218
P 7700 4750
F 0 "#PWR027" H 7700 4600 50  0001 C CNN
F 1 "+5V" H 7715 4923 50  0000 C CNN
F 2 "" H 7700 4750 50  0001 C CNN
F 3 "" H 7700 4750 50  0001 C CNN
	1    7700 4750
	0    1    1    0   
$EndComp
Text GLabel 7500 1850 2    50   Input ~ 0
D0
Wire Wire Line
	7500 1650 7450 1650
Wire Wire Line
	7500 850  7450 850 
Text GLabel 7500 1750 2    50   Input ~ 0
D1
Wire Wire Line
	7500 1550 7450 1550
Text GLabel 7500 1650 2    50   Input ~ 0
D2
Wire Wire Line
	7500 1450 7450 1450
Text GLabel 7500 1550 2    50   Input ~ 0
D3
Wire Wire Line
	7500 1350 7450 1350
Text GLabel 7500 1450 2    50   Input ~ 0
D4
Wire Wire Line
	7500 1250 7450 1250
Text GLabel 7500 1350 2    50   Input ~ 0
D5
Wire Wire Line
	7500 1150 7450 1150
Text GLabel 7500 1250 2    50   Input ~ 0
D6
Wire Wire Line
	7500 1050 7450 1050
Text GLabel 7500 1150 2    50   Input ~ 0
D7
Wire Wire Line
	7500 950  7450 950 
Text GLabel 7500 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	7500 2150 7450 2150
Text GLabel 7500 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	7500 2250 7450 2250
Text GLabel 7500 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	7500 2350 7450 2350
Text GLabel 7500 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	7500 2450 7450 2450
Text GLabel 7500 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	7500 2550 7450 2550
Text GLabel 7500 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	7500 2650 7450 2650
Text GLabel 7500 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	7500 2750 7450 2750
Text GLabel 7500 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	7500 2850 7450 2850
Text GLabel 7500 4250 2    50   Input ~ 0
PI
Wire Wire Line
	7500 4450 7450 4450
Text GLabel 7500 4150 2    50   Input ~ 0
N
Wire Wire Line
	7500 4350 7450 4350
Text GLabel 7500 4050 2    50   Input ~ 0
JE
Wire Wire Line
	7500 4250 7450 4250
Text GLabel 7500 3950 2    50   Input ~ 0
LF
Wire Wire Line
	7500 4150 7450 4150
Text GLabel 7500 3850 2    50   Input ~ 0
SE
Wire Wire Line
	7500 4050 7450 4050
Text GLabel 7500 3750 2    50   Input ~ 0
SI
Wire Wire Line
	7500 3950 7450 3950
Text GLabel 7500 3650 2    50   Input ~ 0
CC
Wire Wire Line
	7500 3850 7450 3850
Text GLabel 7500 3550 2    50   Input ~ 0
CS
Wire Wire Line
	7500 3750 7450 3750
Text GLabel 7500 3450 2    50   Input ~ 0
C0
Wire Wire Line
	7500 3650 7450 3650
Text GLabel 7500 3350 2    50   Input ~ 0
C1
Wire Wire Line
	7500 3550 7450 3550
Text GLabel 7500 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	7500 3450 7450 3450
Text GLabel 7500 3150 2    50   Input ~ 0
FB
Wire Wire Line
	7500 3350 7450 3350
Text GLabel 7500 2750 2    50   Input ~ 0
FN
Wire Wire Line
	7500 3250 7450 3250
Text GLabel 7500 2850 2    50   Input ~ 0
FV
Wire Wire Line
	7500 3150 7450 3150
Text GLabel 7500 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	7500 3050 7450 3050
Text GLabel 7500 3050 2    50   Input ~ 0
FC
Wire Wire Line
	7500 2950 7450 2950
Text GLabel 7500 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	7500 2050 7450 2050
Text GLabel 7500 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	7500 1950 7450 1950
Text GLabel 7500 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	7500 1850 7450 1850
Text GLabel 7500 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	7500 1750 7450 1750
Text GLabel 7500 4650 2    50   Input ~ 0
RST
Wire Wire Line
	7500 4650 7450 4650
Text GLabel 7500 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	7500 4550 7450 4550
Wire Wire Line
	7700 4750 7450 4750
Wire Wire Line
	7400 650  7500 650 
Wire Wire Line
	7500 650  7500 850 
$Comp
L Connector_Generic:Conn_01x40 J10
U 1 1 61505272
P 8050 2750
F 0 "J10" H 8050 625 50  0000 C CNN
F 1 "Bus" H 8050 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 8050 2750 50  0001 C CNN
F 3 "~" H 8050 2750 50  0001 C CNN
	1    8050 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6150527C
P 8200 650
F 0 "#PWR010" H 8200 400 50  0001 C CNN
F 1 "GND" H 8205 477 50  0000 C CNN
F 2 "" H 8200 650 50  0001 C CNN
F 3 "" H 8200 650 50  0001 C CNN
	1    8200 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 61505286
P 8500 4750
F 0 "#PWR028" H 8500 4600 50  0001 C CNN
F 1 "+5V" H 8515 4923 50  0000 C CNN
F 2 "" H 8500 4750 50  0001 C CNN
F 3 "" H 8500 4750 50  0001 C CNN
	1    8500 4750
	0    1    1    0   
$EndComp
Text GLabel 8300 1850 2    50   Input ~ 0
D0
Wire Wire Line
	8300 1650 8250 1650
Wire Wire Line
	8300 850  8250 850 
Text GLabel 8300 1750 2    50   Input ~ 0
D1
Wire Wire Line
	8300 1550 8250 1550
Text GLabel 8300 1650 2    50   Input ~ 0
D2
Wire Wire Line
	8300 1450 8250 1450
Text GLabel 8300 1550 2    50   Input ~ 0
D3
Wire Wire Line
	8300 1350 8250 1350
Text GLabel 8300 1450 2    50   Input ~ 0
D4
Wire Wire Line
	8300 1250 8250 1250
Text GLabel 8300 1350 2    50   Input ~ 0
D5
Wire Wire Line
	8300 1150 8250 1150
Text GLabel 8300 1250 2    50   Input ~ 0
D6
Wire Wire Line
	8300 1050 8250 1050
Text GLabel 8300 1150 2    50   Input ~ 0
D7
Wire Wire Line
	8300 950  8250 950 
Text GLabel 8300 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	8300 2150 8250 2150
Text GLabel 8300 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	8300 2250 8250 2250
Text GLabel 8300 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	8300 2350 8250 2350
Text GLabel 8300 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	8300 2450 8250 2450
Text GLabel 8300 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	8300 2550 8250 2550
Text GLabel 8300 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	8300 2650 8250 2650
Text GLabel 8300 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	8300 2750 8250 2750
Text GLabel 8300 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	8300 2850 8250 2850
Text GLabel 8300 4250 2    50   Input ~ 0
PI
Wire Wire Line
	8300 4450 8250 4450
Text GLabel 8300 4150 2    50   Input ~ 0
N
Wire Wire Line
	8300 4350 8250 4350
Text GLabel 8300 4050 2    50   Input ~ 0
JE
Wire Wire Line
	8300 4250 8250 4250
Text GLabel 8300 3950 2    50   Input ~ 0
LF
Wire Wire Line
	8300 4150 8250 4150
Text GLabel 8300 3850 2    50   Input ~ 0
SE
Wire Wire Line
	8300 4050 8250 4050
Text GLabel 8300 3750 2    50   Input ~ 0
SI
Wire Wire Line
	8300 3950 8250 3950
Text GLabel 8300 3650 2    50   Input ~ 0
CC
Wire Wire Line
	8300 3850 8250 3850
Text GLabel 8300 3550 2    50   Input ~ 0
CS
Wire Wire Line
	8300 3750 8250 3750
Text GLabel 8300 3450 2    50   Input ~ 0
C0
Wire Wire Line
	8300 3650 8250 3650
Text GLabel 8300 3350 2    50   Input ~ 0
C1
Wire Wire Line
	8300 3550 8250 3550
Text GLabel 8300 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	8300 3450 8250 3450
Text GLabel 8300 3150 2    50   Input ~ 0
FB
Wire Wire Line
	8300 3350 8250 3350
Text GLabel 8300 2750 2    50   Input ~ 0
FN
Wire Wire Line
	8300 3250 8250 3250
Text GLabel 8300 2850 2    50   Input ~ 0
FV
Wire Wire Line
	8300 3150 8250 3150
Text GLabel 8300 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	8300 3050 8250 3050
Text GLabel 8300 3050 2    50   Input ~ 0
FC
Wire Wire Line
	8300 2950 8250 2950
Text GLabel 8300 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	8300 2050 8250 2050
Text GLabel 8300 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	8300 1950 8250 1950
Text GLabel 8300 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	8300 1850 8250 1850
Text GLabel 8300 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	8300 1750 8250 1750
Text GLabel 8300 4650 2    50   Input ~ 0
RST
Wire Wire Line
	8300 4650 8250 4650
Text GLabel 8300 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	8300 4550 8250 4550
Wire Wire Line
	8500 4750 8250 4750
Wire Wire Line
	8200 650  8300 650 
Wire Wire Line
	8300 650  8300 850 
$Comp
L Connector_Generic:Conn_01x40 J1
U 1 1 616317F2
P 800 2750
F 0 "J1" H 800 625 50  0000 C CNN
F 1 "Bus" H 775 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 800 2750 50  0001 C CNN
F 3 "~" H 800 2750 50  0001 C CNN
	1    800  2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 950 650
F 0 "#PWR01" H 950 400 50  0001 C CNN
F 1 "GND" H 955 477 50  0000 C CNN
F 2 "" H 950 650 50  0001 C CNN
F 3 "" H 950 650 50  0001 C CNN
	1    950  650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 616326CE
P 1250 4750
F 0 "#PWR019" H 1250 4600 50  0001 C CNN
F 1 "+5V" H 1265 4923 50  0000 C CNN
F 2 "" H 1250 4750 50  0001 C CNN
F 3 "" H 1250 4750 50  0001 C CNN
	1    1250 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 1650 1000 1650
Wire Wire Line
	1050 850  1000 850 
Wire Wire Line
	1050 1550 1000 1550
Wire Wire Line
	1050 1450 1000 1450
Wire Wire Line
	1050 1350 1000 1350
Wire Wire Line
	1050 1250 1000 1250
Wire Wire Line
	1050 1150 1000 1150
Wire Wire Line
	1050 1050 1000 1050
Wire Wire Line
	1050 950  1000 950 
Wire Wire Line
	1050 2150 1000 2150
Wire Wire Line
	1050 2250 1000 2250
Wire Wire Line
	1050 2350 1000 2350
Wire Wire Line
	1050 2450 1000 2450
Wire Wire Line
	1050 2550 1000 2550
Wire Wire Line
	1050 2650 1000 2650
Wire Wire Line
	1050 2750 1000 2750
Wire Wire Line
	1050 2850 1000 2850
Wire Wire Line
	1050 4050 1000 4050
Wire Wire Line
	1050 3950 1000 3950
Wire Wire Line
	1050 3850 1000 3850
Wire Wire Line
	1050 3750 1000 3750
Wire Wire Line
	1050 3650 1000 3650
Wire Wire Line
	1050 3550 1000 3550
Wire Wire Line
	1050 3450 1000 3450
Wire Wire Line
	1050 3350 1000 3350
Wire Wire Line
	1050 3250 1000 3250
Wire Wire Line
	1050 3150 1000 3150
Wire Wire Line
	1050 3050 1000 3050
Wire Wire Line
	1050 2950 1000 2950
Text GLabel 1050 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	1050 2050 1000 2050
Text GLabel 1050 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	1050 1950 1000 1950
Text GLabel 1050 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	1050 1850 1000 1850
Text GLabel 1050 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	1050 1750 1000 1750
Text GLabel 1050 4650 2    50   Input ~ 0
RST
Text GLabel 1050 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	1250 4750 1000 4750
Wire Wire Line
	950  650  1050 650 
Wire Wire Line
	1050 650  1050 850 
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 61632728
P 1600 2750
F 0 "J2" H 1600 625 50  0000 C CNN
F 1 "Bus" H 1575 525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 1600 2750 50  0001 C CNN
F 3 "~" H 1600 2750 50  0001 C CNN
	1    1600 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61632732
P 1750 650
F 0 "#PWR02" H 1750 400 50  0001 C CNN
F 1 "GND" H 1755 477 50  0000 C CNN
F 2 "" H 1750 650 50  0001 C CNN
F 3 "" H 1750 650 50  0001 C CNN
	1    1750 650 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 6163273C
P 2050 4750
F 0 "#PWR020" H 2050 4600 50  0001 C CNN
F 1 "+5V" H 2065 4923 50  0000 C CNN
F 2 "" H 2050 4750 50  0001 C CNN
F 3 "" H 2050 4750 50  0001 C CNN
	1    2050 4750
	0    1    1    0   
$EndComp
Text GLabel 1850 1850 2    50   Input ~ 0
D0
Wire Wire Line
	1850 1650 1800 1650
Wire Wire Line
	1850 850  1800 850 
Text GLabel 1850 1750 2    50   Input ~ 0
D1
Wire Wire Line
	1850 1550 1800 1550
Text GLabel 1850 1650 2    50   Input ~ 0
D2
Wire Wire Line
	1850 1450 1800 1450
Text GLabel 1850 1550 2    50   Input ~ 0
D3
Wire Wire Line
	1850 1350 1800 1350
Text GLabel 1850 1450 2    50   Input ~ 0
D4
Wire Wire Line
	1850 1250 1800 1250
Text GLabel 1850 1350 2    50   Input ~ 0
D5
Wire Wire Line
	1850 1150 1800 1150
Text GLabel 1850 1250 2    50   Input ~ 0
D6
Wire Wire Line
	1850 1050 1800 1050
Text GLabel 1850 1150 2    50   Input ~ 0
D7
Wire Wire Line
	1850 950  1800 950 
Text GLabel 1850 2650 2    50   Input ~ 0
RR0
Wire Wire Line
	1850 2150 1800 2150
Text GLabel 1850 2550 2    50   Input ~ 0
RR1
Wire Wire Line
	1850 2250 1800 2250
Text GLabel 1850 2450 2    50   Input ~ 0
RR2
Wire Wire Line
	1850 2350 1800 2350
Text GLabel 1850 2350 2    50   Input ~ 0
RR3
Wire Wire Line
	1850 2450 1800 2450
Text GLabel 1850 2250 2    50   Input ~ 0
WR0
Wire Wire Line
	1850 2550 1800 2550
Text GLabel 1850 2150 2    50   Input ~ 0
WR1
Wire Wire Line
	1850 2650 1800 2650
Text GLabel 1850 2050 2    50   Input ~ 0
WR2
Wire Wire Line
	1850 2750 1800 2750
Text GLabel 1850 1950 2    50   Input ~ 0
WR3
Wire Wire Line
	1850 2850 1800 2850
Text GLabel 1850 4250 2    50   Input ~ 0
PI
Wire Wire Line
	1850 4450 1800 4450
Text GLabel 1850 4150 2    50   Input ~ 0
N
Wire Wire Line
	1850 4350 1800 4350
Text GLabel 1850 4050 2    50   Input ~ 0
JE
Wire Wire Line
	1850 4250 1800 4250
Text GLabel 1850 3950 2    50   Input ~ 0
LF
Wire Wire Line
	1850 4150 1800 4150
Text GLabel 1850 3850 2    50   Input ~ 0
SE
Wire Wire Line
	1850 4050 1800 4050
Text GLabel 1850 3750 2    50   Input ~ 0
SI
Wire Wire Line
	1850 3950 1800 3950
Text GLabel 1850 3650 2    50   Input ~ 0
CC
Wire Wire Line
	1850 3850 1800 3850
Text GLabel 1850 3550 2    50   Input ~ 0
CS
Wire Wire Line
	1850 3750 1800 3750
Text GLabel 1850 3450 2    50   Input ~ 0
C0
Wire Wire Line
	1850 3650 1800 3650
Text GLabel 1850 3350 2    50   Input ~ 0
C1
Wire Wire Line
	1850 3550 1800 3550
Text GLabel 1850 3250 2    50   Input ~ 0
XX0
Wire Wire Line
	1850 3450 1800 3450
Text GLabel 1850 3150 2    50   Input ~ 0
FB
Wire Wire Line
	1850 3350 1800 3350
Text GLabel 1850 2750 2    50   Input ~ 0
FN
Wire Wire Line
	1850 3250 1800 3250
Text GLabel 1850 2850 2    50   Input ~ 0
FV
Wire Wire Line
	1850 3150 1800 3150
Text GLabel 1850 2950 2    50   Input ~ 0
FZ
Wire Wire Line
	1850 3050 1800 3050
Text GLabel 1850 3050 2    50   Input ~ 0
FC
Wire Wire Line
	1850 2950 1800 2950
Text GLabel 1850 4450 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	1850 2050 1800 2050
Text GLabel 1850 4550 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	1850 1950 1800 1950
Text GLabel 1850 1050 2    50   Input ~ 0
NC-1
Wire Wire Line
	1850 1850 1800 1850
Text GLabel 1850 950  2    50   Input ~ 0
NC-2
Wire Wire Line
	1850 1750 1800 1750
Text GLabel 1850 4650 2    50   Input ~ 0
RST
Wire Wire Line
	1850 4650 1800 4650
Text GLabel 1850 4350 2    50   Input ~ 0
CLK
Wire Wire Line
	1850 4550 1800 4550
Wire Wire Line
	2050 4750 1800 4750
Wire Wire Line
	1750 650  1850 650 
Wire Wire Line
	1850 650  1850 850 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6175F407
P 4550 7400
F 0 "#FLG0101" H 4550 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 7573 50  0000 C CNN
F 2 "" H 4550 7400 50  0001 C CNN
F 3 "~" H 4550 7400 50  0001 C CNN
	1    4550 7400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 6175F7AB
P 4550 5775
F 0 "#PWR0101" H 4550 5625 50  0001 C CNN
F 1 "+5V" H 4565 5948 50  0000 C CNN
F 2 "" H 4550 5775 50  0001 C CNN
F 3 "" H 4550 5775 50  0001 C CNN
	1    4550 5775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6175FC55
P 5025 7400
F 0 "#PWR0102" H 5025 7150 50  0001 C CNN
F 1 "GND" H 5030 7227 50  0000 C CNN
F 2 "" H 5025 7400 50  0001 C CNN
F 3 "" H 5025 7400 50  0001 C CNN
	1    5025 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6176037F
P 5025 5775
F 0 "#FLG0102" H 5025 5850 50  0001 C CNN
F 1 "PWR_FLAG" H 5025 5948 50  0000 C CNN
F 2 "" H 5025 5775 50  0001 C CNN
F 3 "~" H 5025 5775 50  0001 C CNN
	1    5025 5775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J20
U 1 1 6167BE3C
P 2125 5950
F 0 "J20" H 2043 6567 50  0000 C CNN
F 1 "Conn_02x08" H 2043 6476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 2125 5950 50  0001 C CNN
F 3 "~" H 2125 5950 50  0001 C CNN
	1    2125 5950
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 66081DB1
P 4825 5975
F 0 "C1" V 4950 6125 50  0000 C CNN
F 1 "10uF" V 4875 6125 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 4825 5975 50  0001 C CNN
F 3 "~" H 4825 5975 50  0001 C CNN
	1    4825 5975
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C2
U 1 1 669603D9
P 4825 6250
F 0 "C2" V 4950 6400 50  0000 C CNN
F 1 "10uF" V 4875 6400 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 4825 6250 50  0001 C CNN
F 3 "~" H 4825 6250 50  0001 C CNN
	1    4825 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C3
U 1 1 669607A1
P 4825 6525
F 0 "C3" V 4950 6675 50  0000 C CNN
F 1 "10uF" V 4875 6675 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 4825 6525 50  0001 C CNN
F 3 "~" H 4825 6525 50  0001 C CNN
	1    4825 6525
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C4
U 1 1 66960B24
P 4825 6800
F 0 "C4" V 4950 6950 50  0000 C CNN
F 1 "10uF" V 4875 6950 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 4825 6800 50  0001 C CNN
F 3 "~" H 4825 6800 50  0001 C CNN
	1    4825 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C5
U 1 1 66960FC0
P 4825 7075
F 0 "C5" V 4950 7225 50  0000 C CNN
F 1 "10uF" V 4875 7225 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 4825 7075 50  0001 C CNN
F 3 "~" H 4825 7075 50  0001 C CNN
	1    4825 7075
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C6
U 1 1 669616DC
P 4825 7350
F 0 "C6" V 4950 7500 50  0000 C CNN
F 1 "10uF" V 4875 7500 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 4825 7350 50  0001 C CNN
F 3 "~" H 4825 7350 50  0001 C CNN
	1    4825 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5025 5775 5025 5975
Wire Wire Line
	4550 5775 4550 5975
Wire Wire Line
	4675 5975 4550 5975
Connection ~ 4550 5975
Wire Wire Line
	4550 5975 4550 6250
Wire Wire Line
	4975 5975 5025 5975
Connection ~ 5025 5975
Wire Wire Line
	5025 5975 5025 6250
Wire Wire Line
	5025 6250 4975 6250
Connection ~ 5025 6250
Wire Wire Line
	5025 6250 5025 6525
Connection ~ 4550 6250
Wire Wire Line
	4550 6250 4550 6525
Wire Wire Line
	4550 6525 4675 6525
Connection ~ 4550 6525
Wire Wire Line
	4550 6525 4550 6800
Wire Wire Line
	4975 6525 5025 6525
Connection ~ 5025 6525
Wire Wire Line
	5025 6525 5025 6800
Wire Wire Line
	4975 6800 5025 6800
Connection ~ 5025 6800
Wire Wire Line
	5025 6800 5025 7075
Wire Wire Line
	4550 6800 4675 6800
Connection ~ 4550 6800
Wire Wire Line
	4550 6800 4550 7075
Wire Wire Line
	4675 7075 4550 7075
Connection ~ 4550 7075
Wire Wire Line
	4550 7075 4550 7350
Wire Wire Line
	4975 7075 5025 7075
Connection ~ 5025 7075
Wire Wire Line
	5025 7075 5025 7350
Wire Wire Line
	4975 7350 5025 7350
Connection ~ 5025 7350
Wire Wire Line
	5025 7350 5025 7400
Wire Wire Line
	4675 7350 4550 7350
Connection ~ 4550 7350
Wire Wire Line
	4550 7350 4550 7400
Wire Wire Line
	4550 6250 4675 6250
$Comp
L power:+5V #PWR037
U 1 1 685E65D9
P 5450 5775
F 0 "#PWR037" H 5450 5625 50  0001 C CNN
F 1 "+5V" H 5465 5948 50  0000 C CNN
F 2 "" H 5450 5775 50  0001 C CNN
F 3 "" H 5450 5775 50  0001 C CNN
	1    5450 5775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 685E65E3
P 5925 7400
F 0 "#PWR038" H 5925 7150 50  0001 C CNN
F 1 "GND" H 5930 7227 50  0000 C CNN
F 2 "" H 5925 7400 50  0001 C CNN
F 3 "" H 5925 7400 50  0001 C CNN
	1    5925 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C7
U 1 1 685E65F7
P 5725 5975
F 0 "C7" V 5850 6125 50  0000 C CNN
F 1 "10uF" V 5775 6125 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 5725 5975 50  0001 C CNN
F 3 "~" H 5725 5975 50  0001 C CNN
	1    5725 5975
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C8
U 1 1 685E6601
P 5725 6250
F 0 "C8" V 5850 6400 50  0000 C CNN
F 1 "10uF" V 5775 6400 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 5725 6250 50  0001 C CNN
F 3 "~" H 5725 6250 50  0001 C CNN
	1    5725 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C9
U 1 1 685E660B
P 5725 6525
F 0 "C9" V 5850 6675 50  0000 C CNN
F 1 "10uF" V 5775 6675 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 5725 6525 50  0001 C CNN
F 3 "~" H 5725 6525 50  0001 C CNN
	1    5725 6525
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C10
U 1 1 685E6615
P 5725 6800
F 0 "C10" V 5850 6950 50  0000 C CNN
F 1 "10uF" V 5775 6950 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 5725 6800 50  0001 C CNN
F 3 "~" H 5725 6800 50  0001 C CNN
	1    5725 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C11
U 1 1 685E661F
P 5725 7075
F 0 "C11" V 5850 7225 50  0000 C CNN
F 1 "10uF" V 5775 7225 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 5725 7075 50  0001 C CNN
F 3 "~" H 5725 7075 50  0001 C CNN
	1    5725 7075
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C12
U 1 1 685E6629
P 5725 7350
F 0 "C12" V 5850 7500 50  0000 C CNN
F 1 "10uF" V 5775 7500 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D4.0mm_H5.0mm_P1.50mm" H 5725 7350 50  0001 C CNN
F 3 "~" H 5725 7350 50  0001 C CNN
	1    5725 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 5775 5450 5975
Wire Wire Line
	5575 5975 5450 5975
Connection ~ 5450 5975
Wire Wire Line
	5450 5975 5450 6250
Wire Wire Line
	5875 5975 5925 5975
Wire Wire Line
	5925 5975 5925 6250
Wire Wire Line
	5925 6250 5875 6250
Connection ~ 5925 6250
Wire Wire Line
	5925 6250 5925 6525
Connection ~ 5450 6250
Wire Wire Line
	5450 6250 5450 6525
Wire Wire Line
	5450 6525 5575 6525
Connection ~ 5450 6525
Wire Wire Line
	5450 6525 5450 6800
Wire Wire Line
	5875 6525 5925 6525
Connection ~ 5925 6525
Wire Wire Line
	5925 6525 5925 6800
Wire Wire Line
	5875 6800 5925 6800
Connection ~ 5925 6800
Wire Wire Line
	5925 6800 5925 7075
Wire Wire Line
	5450 6800 5575 6800
Connection ~ 5450 6800
Wire Wire Line
	5450 6800 5450 7075
Wire Wire Line
	5575 7075 5450 7075
Connection ~ 5450 7075
Wire Wire Line
	5450 7075 5450 7350
Wire Wire Line
	5875 7075 5925 7075
Connection ~ 5925 7075
Wire Wire Line
	5925 7075 5925 7350
Wire Wire Line
	5875 7350 5925 7350
Connection ~ 5925 7350
Wire Wire Line
	5925 7350 5925 7400
Wire Wire Line
	5575 7350 5450 7350
Wire Wire Line
	5450 6250 5575 6250
Text GLabel 1050 3050 2    50   Input ~ 0
FC
Text GLabel 1050 2950 2    50   Input ~ 0
FZ
Text GLabel 1050 2850 2    50   Input ~ 0
FV
Text GLabel 1050 2750 2    50   Input ~ 0
FN
Text GLabel 1050 3150 2    50   Input ~ 0
FB
Text GLabel 1050 3250 2    50   Input ~ 0
XX0
Text GLabel 1050 3350 2    50   Input ~ 0
C1
Text GLabel 1050 3450 2    50   Input ~ 0
C0
Text GLabel 1050 3550 2    50   Input ~ 0
CS
Text GLabel 1050 3650 2    50   Input ~ 0
CC
Text GLabel 1050 3750 2    50   Input ~ 0
SI
Text GLabel 1050 3850 2    50   Input ~ 0
SE
Text GLabel 1050 3950 2    50   Input ~ 0
LF
Text GLabel 1050 4050 2    50   Input ~ 0
JE
Text GLabel 1050 4150 2    50   Input ~ 0
N
Text GLabel 1050 4250 2    50   Input ~ 0
PI
Text GLabel 1050 1950 2    50   Input ~ 0
WR3
Text GLabel 1050 2050 2    50   Input ~ 0
WR2
Text GLabel 1050 2150 2    50   Input ~ 0
WR1
Text GLabel 1050 2250 2    50   Input ~ 0
WR0
Text GLabel 1050 2350 2    50   Input ~ 0
RR3
Text GLabel 1050 2450 2    50   Input ~ 0
RR2
Text GLabel 1050 2550 2    50   Input ~ 0
RR1
Text GLabel 1050 2650 2    50   Input ~ 0
RR0
Text GLabel 1050 1150 2    50   Input ~ 0
D7
Text GLabel 1050 1250 2    50   Input ~ 0
D6
Text GLabel 1050 1350 2    50   Input ~ 0
D5
Text GLabel 1050 1450 2    50   Input ~ 0
D4
Text GLabel 1050 1550 2    50   Input ~ 0
D3
Text GLabel 1050 1650 2    50   Input ~ 0
D2
Text GLabel 1050 1750 2    50   Input ~ 0
D1
Text GLabel 1050 1850 2    50   Input ~ 0
D0
Wire Wire Line
	1000 4150 1050 4150
Wire Wire Line
	1000 4250 1050 4250
Wire Wire Line
	1000 4350 1050 4350
Wire Wire Line
	1000 4450 1050 4450
Wire Wire Line
	1000 4550 1050 4550
Wire Wire Line
	1000 4650 1050 4650
Wire Wire Line
	1450 5650 1825 5650
Wire Wire Line
	1450 5750 1825 5750
Wire Wire Line
	1450 5850 1825 5850
Wire Wire Line
	1450 5950 1825 5950
Wire Wire Line
	1450 6050 1825 6050
Wire Wire Line
	1450 6150 1825 6150
Wire Wire Line
	1450 6250 1825 6250
Wire Wire Line
	1450 6350 1825 6350
Wire Wire Line
	950  5650 925  5650
Wire Wire Line
	925  5650 925  5700
Wire Wire Line
	925  5700 2350 5700
Wire Wire Line
	2350 5700 2350 5650
Wire Wire Line
	2350 5650 2325 5650
Wire Wire Line
	950  5750 925  5750
Wire Wire Line
	925  5750 925  5800
Wire Wire Line
	925  5800 2350 5800
Wire Wire Line
	2350 5800 2350 5750
Wire Wire Line
	2350 5750 2325 5750
Wire Wire Line
	2325 5850 2350 5850
Wire Wire Line
	2350 5850 2350 5900
Wire Wire Line
	2350 5900 925  5900
Wire Wire Line
	925  5900 925  5850
Wire Wire Line
	925  5850 950  5850
Wire Wire Line
	950  5950 925  5950
Wire Wire Line
	925  5950 925  6000
Wire Wire Line
	925  6000 2350 6000
Wire Wire Line
	2350 6000 2350 5950
Wire Wire Line
	2350 5950 2325 5950
Wire Wire Line
	2325 6050 2350 6050
Wire Wire Line
	2350 6050 2350 6100
Wire Wire Line
	2350 6100 925  6100
Wire Wire Line
	925  6100 925  6050
Wire Wire Line
	925  6050 950  6050
Wire Wire Line
	950  6150 925  6150
Wire Wire Line
	925  6150 925  6200
Wire Wire Line
	925  6200 2350 6200
Wire Wire Line
	2350 6200 2350 6150
Wire Wire Line
	2350 6150 2325 6150
Wire Wire Line
	2325 6250 2350 6250
Wire Wire Line
	2350 6250 2350 6300
Wire Wire Line
	2350 6300 925  6300
Wire Wire Line
	925  6300 925  6250
Wire Wire Line
	925  6250 950  6250
Wire Wire Line
	950  6350 925  6350
Wire Wire Line
	925  6350 925  6425
Wire Wire Line
	925  6425 2350 6425
Wire Wire Line
	2350 6425 2350 6350
Wire Wire Line
	2350 6350 2325 6350
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J21
U 1 1 61C912DB
P 2875 5950
F 0 "J21" H 2793 6567 50  0000 C CNN
F 1 "Conn_02x08" H 2793 6476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 2875 5950 50  0001 C CNN
F 3 "~" H 2875 5950 50  0001 C CNN
	1    2875 5950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J22
U 1 1 61C92345
P 3750 5950
F 0 "J22" H 3668 6567 50  0000 C CNN
F 1 "Conn_02x08" H 3668 6476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 3750 5950 50  0001 C CNN
F 3 "~" H 3750 5950 50  0001 C CNN
	1    3750 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3075 5650 3450 5650
Wire Wire Line
	3075 5750 3450 5750
Wire Wire Line
	3075 5850 3450 5850
Wire Wire Line
	3075 5950 3450 5950
Wire Wire Line
	3075 6050 3450 6050
Wire Wire Line
	3075 6150 3450 6150
Wire Wire Line
	3075 6250 3450 6250
Wire Wire Line
	3075 6350 3450 6350
Wire Wire Line
	2575 5650 2550 5650
Wire Wire Line
	2550 5650 2550 5700
Wire Wire Line
	2550 5700 3975 5700
Wire Wire Line
	3975 5700 3975 5650
Wire Wire Line
	3975 5650 3950 5650
Wire Wire Line
	2575 5750 2550 5750
Wire Wire Line
	2550 5750 2550 5800
Wire Wire Line
	2550 5800 3975 5800
Wire Wire Line
	3975 5800 3975 5750
Wire Wire Line
	3975 5750 3950 5750
Wire Wire Line
	3950 5850 3975 5850
Wire Wire Line
	3975 5850 3975 5900
Wire Wire Line
	3975 5900 2550 5900
Wire Wire Line
	2550 5900 2550 5850
Wire Wire Line
	2550 5850 2575 5850
Wire Wire Line
	2575 5950 2550 5950
Wire Wire Line
	2550 5950 2550 6000
Wire Wire Line
	2550 6000 3975 6000
Wire Wire Line
	3975 6000 3975 5950
Wire Wire Line
	3975 5950 3950 5950
Wire Wire Line
	3950 6050 3975 6050
Wire Wire Line
	3975 6050 3975 6100
Wire Wire Line
	3975 6100 2550 6100
Wire Wire Line
	2550 6100 2550 6050
Wire Wire Line
	2550 6050 2575 6050
Wire Wire Line
	2575 6150 2550 6150
Wire Wire Line
	2550 6150 2550 6200
Wire Wire Line
	2550 6200 3975 6200
Wire Wire Line
	3975 6200 3975 6150
Wire Wire Line
	3975 6150 3950 6150
Wire Wire Line
	3950 6250 3975 6250
Wire Wire Line
	3975 6250 3975 6300
Wire Wire Line
	3975 6300 2550 6300
Wire Wire Line
	2550 6300 2550 6250
Wire Wire Line
	2550 6250 2575 6250
Wire Wire Line
	2575 6350 2550 6350
Wire Wire Line
	2550 6350 2550 6425
Wire Wire Line
	2550 6425 3975 6425
Wire Wire Line
	3975 6425 3975 6350
Wire Wire Line
	3975 6350 3950 6350
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J23
U 1 1 61DE84AE
P 1250 7200
F 0 "J23" H 1168 7817 50  0000 C CNN
F 1 "Conn_02x08" H 1168 7726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 1250 7200 50  0001 C CNN
F 3 "~" H 1250 7200 50  0001 C CNN
	1    1250 7200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J24
U 1 1 61DE95B0
P 2125 7200
F 0 "J24" H 2043 7817 50  0000 C CNN
F 1 "Conn_02x08" H 2043 7726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 2125 7200 50  0001 C CNN
F 3 "~" H 2125 7200 50  0001 C CNN
	1    2125 7200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 6900 1825 6900
Wire Wire Line
	1450 7000 1825 7000
Wire Wire Line
	1450 7100 1825 7100
Wire Wire Line
	1450 7200 1825 7200
Wire Wire Line
	1450 7300 1825 7300
Wire Wire Line
	1450 7400 1825 7400
Wire Wire Line
	1450 7500 1825 7500
Wire Wire Line
	1450 7600 1825 7600
Wire Wire Line
	950  6900 925  6900
Wire Wire Line
	925  6900 925  6950
Wire Wire Line
	925  6950 2350 6950
Wire Wire Line
	2350 6950 2350 6900
Wire Wire Line
	2350 6900 2325 6900
Wire Wire Line
	950  7000 925  7000
Wire Wire Line
	925  7000 925  7050
Wire Wire Line
	925  7050 2350 7050
Wire Wire Line
	2350 7050 2350 7000
Wire Wire Line
	2350 7000 2325 7000
Wire Wire Line
	2325 7100 2350 7100
Wire Wire Line
	2350 7100 2350 7150
Wire Wire Line
	2350 7150 925  7150
Wire Wire Line
	925  7150 925  7100
Wire Wire Line
	925  7100 950  7100
Wire Wire Line
	950  7200 925  7200
Wire Wire Line
	925  7200 925  7250
Wire Wire Line
	925  7250 2350 7250
Wire Wire Line
	2350 7250 2350 7200
Wire Wire Line
	2350 7200 2325 7200
Wire Wire Line
	2325 7300 2350 7300
Wire Wire Line
	2350 7300 2350 7350
Wire Wire Line
	2350 7350 925  7350
Wire Wire Line
	925  7350 925  7300
Wire Wire Line
	925  7300 950  7300
Wire Wire Line
	950  7400 925  7400
Wire Wire Line
	925  7400 925  7450
Wire Wire Line
	925  7450 2350 7450
Wire Wire Line
	2350 7450 2350 7400
Wire Wire Line
	2350 7400 2325 7400
Wire Wire Line
	2325 7500 2350 7500
Wire Wire Line
	2350 7500 2350 7550
Wire Wire Line
	2350 7550 925  7550
Wire Wire Line
	925  7550 925  7500
Wire Wire Line
	925  7500 950  7500
Wire Wire Line
	950  7600 925  7600
Wire Wire Line
	925  7600 925  7675
Wire Wire Line
	925  7675 2350 7675
Wire Wire Line
	2350 7675 2350 7600
Wire Wire Line
	2350 7600 2325 7600
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J25
U 1 1 61DE95EA
P 2875 7200
F 0 "J25" H 2793 7817 50  0000 C CNN
F 1 "Conn_02x08" H 2793 7726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 2875 7200 50  0001 C CNN
F 3 "~" H 2875 7200 50  0001 C CNN
	1    2875 7200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J26
U 1 1 61DE95F4
P 3750 7200
F 0 "J26" H 3668 7817 50  0000 C CNN
F 1 "Conn_02x08" H 3668 7726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 3750 7200 50  0001 C CNN
F 3 "~" H 3750 7200 50  0001 C CNN
	1    3750 7200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3075 6900 3450 6900
Wire Wire Line
	3075 7000 3450 7000
Wire Wire Line
	3075 7100 3450 7100
Wire Wire Line
	3075 7200 3450 7200
Wire Wire Line
	3075 7300 3450 7300
Wire Wire Line
	3075 7400 3450 7400
Wire Wire Line
	3075 7500 3450 7500
Wire Wire Line
	3075 7600 3450 7600
Wire Wire Line
	2575 6900 2550 6900
Wire Wire Line
	2550 6900 2550 6950
Wire Wire Line
	2550 6950 3975 6950
Wire Wire Line
	3975 6950 3975 6900
Wire Wire Line
	3975 6900 3950 6900
Wire Wire Line
	2575 7000 2550 7000
Wire Wire Line
	2550 7000 2550 7050
Wire Wire Line
	2550 7050 3975 7050
Wire Wire Line
	3975 7050 3975 7000
Wire Wire Line
	3975 7000 3950 7000
Wire Wire Line
	3950 7100 3975 7100
Wire Wire Line
	3975 7100 3975 7150
Wire Wire Line
	3975 7150 2550 7150
Wire Wire Line
	2550 7150 2550 7100
Wire Wire Line
	2550 7100 2575 7100
Wire Wire Line
	2575 7200 2550 7200
Wire Wire Line
	2550 7200 2550 7250
Wire Wire Line
	2550 7250 3975 7250
Wire Wire Line
	3975 7250 3975 7200
Wire Wire Line
	3975 7200 3950 7200
Wire Wire Line
	3950 7300 3975 7300
Wire Wire Line
	3975 7300 3975 7350
Wire Wire Line
	3975 7350 2550 7350
Wire Wire Line
	2550 7350 2550 7300
Wire Wire Line
	2550 7300 2575 7300
Wire Wire Line
	2575 7400 2550 7400
Wire Wire Line
	2550 7400 2550 7450
Wire Wire Line
	2550 7450 3975 7450
Wire Wire Line
	3975 7450 3975 7400
Wire Wire Line
	3975 7400 3950 7400
Wire Wire Line
	3950 7500 3975 7500
Wire Wire Line
	3975 7500 3975 7550
Wire Wire Line
	3975 7550 2550 7550
Wire Wire Line
	2550 7550 2550 7500
Wire Wire Line
	2550 7500 2575 7500
Wire Wire Line
	2575 7600 2550 7600
Wire Wire Line
	2550 7600 2550 7675
Wire Wire Line
	2550 7675 3975 7675
Wire Wire Line
	3975 7675 3975 7600
Wire Wire Line
	3975 7600 3950 7600
$Sheet
S 9250 2150 650  1050
U 654E5337
F0 "backplane-conn" 50
F1 "backplane-conn.sch" 50
$EndSheet
Text Notes 9400 2500 0    50   ~ 0
Additional\nBus\nConnectors
Text Notes 9100 1900 0    55   ~ 0
18 Bus Connectors Total
$EndSCHEMATC
