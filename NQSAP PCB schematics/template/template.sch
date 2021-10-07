EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J3
U 1 1 614A59C0
P 7350 2700
F 0 "J3" H 7268 3317 50  0000 C CNN
F 1 "Conn_02x08" H 7268 3226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7350 2700 50  0001 C CNN
F 3 "~" H 7350 2700 50  0001 C CNN
	1    7350 2700
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x40 J1
U 1 1 616317F2
P 3650 3300
F 0 "J1" H 3650 1175 50  0000 C CNN
F 1 "Bus" H 3625 1075 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 3650 3300 50  0001 C CNN
F 3 "~" H 3650 3300 50  0001 C CNN
	1    3650 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 3800 1200
F 0 "#PWR01" H 3800 950 50  0001 C CNN
F 1 "GND" H 3805 1027 50  0000 C CNN
F 2 "" H 3800 1200 50  0001 C CNN
F 3 "" H 3800 1200 50  0001 C CNN
	1    3800 1200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 616326CE
P 4100 5300
F 0 "#PWR02" H 4100 5150 50  0001 C CNN
F 1 "+5V" H 4115 5473 50  0000 C CNN
F 2 "" H 4100 5300 50  0001 C CNN
F 3 "" H 4100 5300 50  0001 C CNN
	1    4100 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2200 3850 2200
Wire Wire Line
	3900 1400 3850 1400
Wire Wire Line
	3900 2100 3850 2100
Wire Wire Line
	3900 2000 3850 2000
Wire Wire Line
	3900 1900 3850 1900
Wire Wire Line
	3900 1800 3850 1800
Wire Wire Line
	3900 1700 3850 1700
Wire Wire Line
	3900 1600 3850 1600
Wire Wire Line
	3900 1500 3850 1500
Wire Wire Line
	3900 2700 3850 2700
Wire Wire Line
	3900 2800 3850 2800
Wire Wire Line
	3900 2900 3850 2900
Wire Wire Line
	3900 3000 3850 3000
Wire Wire Line
	3900 3100 3850 3100
Wire Wire Line
	3900 3200 3850 3200
Wire Wire Line
	3900 3300 3850 3300
Wire Wire Line
	3900 3400 3850 3400
Wire Wire Line
	3900 4600 3850 4600
Wire Wire Line
	3900 4500 3850 4500
Wire Wire Line
	3900 4400 3850 4400
Wire Wire Line
	3900 4300 3850 4300
Wire Wire Line
	3900 4200 3850 4200
Wire Wire Line
	3900 4100 3850 4100
Wire Wire Line
	3900 4000 3850 4000
Wire Wire Line
	3900 3900 3850 3900
Wire Wire Line
	3900 3800 3850 3800
Wire Wire Line
	3900 3700 3850 3700
Wire Wire Line
	3900 3600 3850 3600
Wire Wire Line
	3900 3500 3850 3500
Text GLabel 3900 5000 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	3900 2600 3850 2600
Text GLabel 3900 5100 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	3900 2500 3850 2500
Text GLabel 3900 1600 2    50   Input ~ 0
NC-1
Wire Wire Line
	3900 2400 3850 2400
Text GLabel 3900 1500 2    50   Input ~ 0
NC-2
Wire Wire Line
	3900 2300 3850 2300
Text GLabel 3900 5200 2    50   Input ~ 0
RST
Text GLabel 3900 4900 2    50   Input ~ 0
CLK
Wire Wire Line
	4100 5300 3850 5300
Wire Wire Line
	3800 1200 3900 1200
Wire Wire Line
	3900 1200 3900 1400
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 61632728
P 4450 3300
F 0 "J2" H 4450 1175 50  0000 C CNN
F 1 "Bus" H 4425 1075 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 4450 3300 50  0001 C CNN
F 3 "~" H 4450 3300 50  0001 C CNN
	1    4450 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61632732
P 4600 1200
F 0 "#PWR03" H 4600 950 50  0001 C CNN
F 1 "GND" H 4605 1027 50  0000 C CNN
F 2 "" H 4600 1200 50  0001 C CNN
F 3 "" H 4600 1200 50  0001 C CNN
	1    4600 1200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 6163273C
P 4900 5300
F 0 "#PWR04" H 4900 5150 50  0001 C CNN
F 1 "+5V" H 4915 5473 50  0000 C CNN
F 2 "" H 4900 5300 50  0001 C CNN
F 3 "" H 4900 5300 50  0001 C CNN
	1    4900 5300
	0    1    1    0   
$EndComp
Text GLabel 4700 2400 2    50   Input ~ 0
D0
Wire Wire Line
	4700 2200 4650 2200
Wire Wire Line
	4700 1400 4650 1400
Text GLabel 4700 2300 2    50   Input ~ 0
D1
Wire Wire Line
	4700 2100 4650 2100
Text GLabel 4700 2200 2    50   Input ~ 0
D2
Wire Wire Line
	4700 2000 4650 2000
Text GLabel 4700 2100 2    50   Input ~ 0
D3
Wire Wire Line
	4700 1900 4650 1900
Text GLabel 4700 2000 2    50   Input ~ 0
D4
Wire Wire Line
	4700 1800 4650 1800
Text GLabel 4700 1900 2    50   Input ~ 0
D5
Wire Wire Line
	4700 1700 4650 1700
Text GLabel 4700 1800 2    50   Input ~ 0
D6
Wire Wire Line
	4700 1600 4650 1600
Text GLabel 4700 1700 2    50   Input ~ 0
D7
Wire Wire Line
	4700 1500 4650 1500
Text GLabel 4700 3200 2    50   Input ~ 0
RR0
Wire Wire Line
	4700 2700 4650 2700
Text GLabel 4700 3100 2    50   Input ~ 0
RR1
Wire Wire Line
	4700 2800 4650 2800
Text GLabel 4700 3000 2    50   Input ~ 0
RR2
Wire Wire Line
	4700 2900 4650 2900
Text GLabel 4700 2900 2    50   Input ~ 0
RR3
Wire Wire Line
	4700 3000 4650 3000
Text GLabel 4700 2800 2    50   Input ~ 0
WR0
Wire Wire Line
	4700 3100 4650 3100
Text GLabel 4700 2700 2    50   Input ~ 0
WR1
Wire Wire Line
	4700 3200 4650 3200
Text GLabel 4700 2600 2    50   Input ~ 0
WR2
Wire Wire Line
	4700 3300 4650 3300
Text GLabel 4700 2500 2    50   Input ~ 0
WR3
Wire Wire Line
	4700 3400 4650 3400
Text GLabel 4700 4800 2    50   Input ~ 0
PI
Wire Wire Line
	4700 5000 4650 5000
Text GLabel 4700 4700 2    50   Input ~ 0
N
Wire Wire Line
	4700 4900 4650 4900
Text GLabel 4700 4600 2    50   Input ~ 0
JE
Wire Wire Line
	4700 4800 4650 4800
Text GLabel 4700 4500 2    50   Input ~ 0
LF
Wire Wire Line
	4700 4700 4650 4700
Text GLabel 4700 4400 2    50   Input ~ 0
SE
Wire Wire Line
	4700 4600 4650 4600
Text GLabel 4700 4300 2    50   Input ~ 0
SI
Wire Wire Line
	4700 4500 4650 4500
Text GLabel 4700 4200 2    50   Input ~ 0
CC
Wire Wire Line
	4700 4400 4650 4400
Text GLabel 4700 4100 2    50   Input ~ 0
CS
Wire Wire Line
	4700 4300 4650 4300
Text GLabel 4700 4000 2    50   Input ~ 0
C0
Wire Wire Line
	4700 4200 4650 4200
Text GLabel 4700 3900 2    50   Input ~ 0
C1
Wire Wire Line
	4700 4100 4650 4100
Text GLabel 4700 3800 2    50   Input ~ 0
XX0
Wire Wire Line
	4700 4000 4650 4000
Text GLabel 4700 3700 2    50   Input ~ 0
FB
Wire Wire Line
	4700 3900 4650 3900
Text GLabel 4700 3300 2    50   Input ~ 0
FN
Wire Wire Line
	4700 3800 4650 3800
Text GLabel 4700 3400 2    50   Input ~ 0
FV
Wire Wire Line
	4700 3700 4650 3700
Text GLabel 4700 3500 2    50   Input ~ 0
FZ
Wire Wire Line
	4700 3600 4650 3600
Text GLabel 4700 3600 2    50   Input ~ 0
FC
Wire Wire Line
	4700 3500 4650 3500
Text GLabel 4700 5000 2    50   Input ~ 0
LDR-CLK
Wire Wire Line
	4700 2600 4650 2600
Text GLabel 4700 5100 2    50   Input ~ 0
LDR-ACT
Wire Wire Line
	4700 2500 4650 2500
Text GLabel 4700 1600 2    50   Input ~ 0
NC-1
Wire Wire Line
	4700 2400 4650 2400
Text GLabel 4700 1500 2    50   Input ~ 0
NC-2
Wire Wire Line
	4700 2300 4650 2300
Text GLabel 4700 5200 2    50   Input ~ 0
RST
Wire Wire Line
	4700 5200 4650 5200
Text GLabel 4700 4900 2    50   Input ~ 0
CLK
Wire Wire Line
	4700 5100 4650 5100
Wire Wire Line
	4900 5300 4650 5300
Wire Wire Line
	4600 1200 4700 1200
Wire Wire Line
	4700 1200 4700 1400
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J5
U 1 1 6167BE3C
P 8250 2700
F 0 "J5" H 8168 3317 50  0000 C CNN
F 1 "Conn_02x08" H 8168 3226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 8250 2700 50  0001 C CNN
F 3 "~" H 8250 2700 50  0001 C CNN
	1    8250 2700
	-1   0    0    -1  
$EndComp
Text GLabel 3900 3600 2    50   Input ~ 0
FC
Text GLabel 3900 3500 2    50   Input ~ 0
FZ
Text GLabel 3900 3400 2    50   Input ~ 0
FV
Text GLabel 3900 3300 2    50   Input ~ 0
FN
Text GLabel 3900 3700 2    50   Input ~ 0
FB
Text GLabel 3900 3800 2    50   Input ~ 0
XX0
Text GLabel 3900 3900 2    50   Input ~ 0
C1
Text GLabel 3900 4000 2    50   Input ~ 0
C0
Text GLabel 3900 4100 2    50   Input ~ 0
CS
Text GLabel 3900 4200 2    50   Input ~ 0
CC
Text GLabel 3900 4300 2    50   Input ~ 0
SI
Text GLabel 3900 4400 2    50   Input ~ 0
SE
Text GLabel 3900 4500 2    50   Input ~ 0
LF
Text GLabel 3900 4600 2    50   Input ~ 0
JE
Text GLabel 3900 4700 2    50   Input ~ 0
N
Text GLabel 3900 4800 2    50   Input ~ 0
PI
Text GLabel 3900 2500 2    50   Input ~ 0
WR3
Text GLabel 3900 2600 2    50   Input ~ 0
WR2
Text GLabel 3900 2700 2    50   Input ~ 0
WR1
Text GLabel 3900 2800 2    50   Input ~ 0
WR0
Text GLabel 3900 2900 2    50   Input ~ 0
RR3
Text GLabel 3900 3000 2    50   Input ~ 0
RR2
Text GLabel 3900 3100 2    50   Input ~ 0
RR1
Text GLabel 3900 3200 2    50   Input ~ 0
RR0
Text GLabel 3900 1700 2    50   Input ~ 0
D7
Text GLabel 3900 1800 2    50   Input ~ 0
D6
Text GLabel 3900 1900 2    50   Input ~ 0
D5
Text GLabel 3900 2000 2    50   Input ~ 0
D4
Text GLabel 3900 2100 2    50   Input ~ 0
D3
Text GLabel 3900 2200 2    50   Input ~ 0
D2
Text GLabel 3900 2300 2    50   Input ~ 0
D1
Text GLabel 3900 2400 2    50   Input ~ 0
D0
Wire Wire Line
	3850 4700 3900 4700
Wire Wire Line
	3850 4800 3900 4800
Wire Wire Line
	3850 4900 3900 4900
Wire Wire Line
	3850 5000 3900 5000
Wire Wire Line
	3850 5100 3900 5100
Wire Wire Line
	3850 5200 3900 5200
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J4
U 1 1 61847D1B
P 7350 3900
F 0 "J4" H 7268 4517 50  0000 C CNN
F 1 "Conn_02x08" H 7268 4426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7350 3900 50  0001 C CNN
F 3 "~" H 7350 3900 50  0001 C CNN
	1    7350 3900
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J6
U 1 1 61847F95
P 8250 3900
F 0 "J6" H 8168 4517 50  0000 C CNN
F 1 "Conn_02x08" H 8168 4426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 8250 3900 50  0001 C CNN
F 3 "~" H 8250 3900 50  0001 C CNN
	1    8250 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 640ECCCC
P 6650 5200
F 0 "C1" V 6500 5400 50  0000 C CNN
F 1 "0.1uF" V 6600 5400 50  0000 C CNN
F 2 "" H 6688 5050 50  0001 C CNN
F 3 "~" H 6650 5200 50  0001 C CNN
	1    6650 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 640EE08A
P 7000 5800
F 0 "#PWR06" H 7000 5550 50  0001 C CNN
F 1 "GND" H 7005 5627 50  0000 C CNN
F 2 "" H 7000 5800 50  0001 C CNN
F 3 "" H 7000 5800 50  0001 C CNN
	1    7000 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 640EE95F
P 6300 5000
F 0 "#PWR05" H 6300 4850 50  0001 C CNN
F 1 "+5V" H 6315 5173 50  0000 C CNN
F 2 "" H 6300 5000 50  0001 C CNN
F 3 "" H 6300 5000 50  0001 C CNN
	1    6300 5000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 640EF226
P 7000 5000
F 0 "#FLG02" H 7000 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 7000 5173 50  0000 C CNN
F 2 "" H 7000 5000 50  0001 C CNN
F 3 "~" H 7000 5000 50  0001 C CNN
	1    7000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 640EFA22
P 6300 5800
F 0 "#FLG01" H 6300 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 5973 50  0000 C CNN
F 2 "" H 6300 5800 50  0001 C CNN
F 3 "~" H 6300 5800 50  0001 C CNN
	1    6300 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 5000 6300 5200
Wire Wire Line
	7000 5000 7000 5200
Wire Wire Line
	6800 5200 7000 5200
Connection ~ 7000 5200
Wire Wire Line
	7000 5200 7000 5450
Wire Wire Line
	6500 5200 6300 5200
Connection ~ 6300 5200
Wire Wire Line
	6300 5200 6300 5450
$Comp
L Device:C C2
U 1 1 64103212
P 6650 5450
F 0 "C2" V 6500 5650 50  0000 C CNN
F 1 "0.1uF" V 6600 5650 50  0000 C CNN
F 2 "" H 6688 5300 50  0001 C CNN
F 3 "~" H 6650 5450 50  0001 C CNN
	1    6650 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 5450 6300 5450
Connection ~ 6300 5450
Wire Wire Line
	6300 5450 6300 5700
Wire Wire Line
	6800 5450 7000 5450
Connection ~ 7000 5450
Wire Wire Line
	7000 5450 7000 5700
$Comp
L Device:C C3
U 1 1 6410A335
P 6650 5700
F 0 "C3" V 6500 5900 50  0000 C CNN
F 1 "0.1uF" V 6600 5900 50  0000 C CNN
F 2 "" H 6688 5550 50  0001 C CNN
F 3 "~" H 6650 5700 50  0001 C CNN
	1    6650 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 5700 7000 5700
Connection ~ 7000 5700
Wire Wire Line
	7000 5700 7000 5800
Wire Wire Line
	6500 5700 6300 5700
Connection ~ 6300 5700
Wire Wire Line
	6300 5700 6300 5800
$EndSCHEMATC
