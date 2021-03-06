EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "NQSAP-PCB Flags"
Date "2021-10-23"
Rev "1.0"
Comp "github.com/TomNisbet/nqsap-pcb"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 614A59C0
P 700 6100
F 0 "J3" H 618 6717 50  0000 C CNN
F 1 "IC-TL" H 618 6626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 700 6100 50  0001 C CNN
F 3 "~" H 700 6100 50  0001 C CNN
	1    700  6100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x40 J1
U 1 1 616317F2
P 800 2850
F 0 "J1" H 800 725 50  0000 C CNN
F 1 "Bus" H 775 625 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 800 2850 50  0001 C CNN
F 3 "~" H 800 2850 50  0001 C CNN
	1    800  2850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 950 750
F 0 "#PWR01" H 950 500 50  0001 C CNN
F 1 "GND" H 955 577 50  0000 C CNN
F 2 "" H 950 750 50  0001 C CNN
F 3 "" H 950 750 50  0001 C CNN
	1    950  750 
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 616326CE
P 1250 4850
F 0 "#PWR02" H 1250 4700 50  0001 C CNN
F 1 "VCC" H 1265 5023 50  0000 C CNN
F 2 "" H 1250 4850 50  0001 C CNN
F 3 "" H 1250 4850 50  0001 C CNN
	1    1250 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 1750 1000 1750
Wire Wire Line
	1050 950  1000 950 
Wire Wire Line
	1050 1650 1000 1650
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
	1050 2950 1000 2950
Wire Wire Line
	1050 4150 1000 4150
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
	1050 2150 1000 2150
Wire Wire Line
	1050 2050 1000 2050
Wire Wire Line
	1050 1950 1000 1950
Wire Wire Line
	1050 1850 1000 1850
Text GLabel 1050 4450 2    50   Output ~ 0
CLK
Wire Wire Line
	1250 4850 1000 4850
Wire Wire Line
	950  750  1050 750 
Wire Wire Line
	1050 750  1050 950 
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 61632728
P 1600 2850
F 0 "J2" H 1600 725 50  0000 C CNN
F 1 "Bus" H 1575 625 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 1600 2850 50  0001 C CNN
F 3 "~" H 1600 2850 50  0001 C CNN
	1    1600 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61632732
P 1750 750
F 0 "#PWR03" H 1750 500 50  0001 C CNN
F 1 "GND" H 1755 577 50  0000 C CNN
F 2 "" H 1750 750 50  0001 C CNN
F 3 "" H 1750 750 50  0001 C CNN
	1    1750 750 
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 6163273C
P 2050 4850
F 0 "#PWR04" H 2050 4700 50  0001 C CNN
F 1 "VCC" H 2065 5023 50  0000 C CNN
F 2 "" H 2050 4850 50  0001 C CNN
F 3 "" H 2050 4850 50  0001 C CNN
	1    2050 4850
	0    1    1    0   
$EndComp
Text GLabel 1850 1950 2    50   Input ~ 0
D0
Wire Wire Line
	1850 1750 1800 1750
Wire Wire Line
	1850 950  1800 950 
Text GLabel 1850 1850 2    50   Input ~ 0
D1
Wire Wire Line
	1850 1650 1800 1650
Text GLabel 1850 1750 2    50   Input ~ 0
D2
Wire Wire Line
	1850 1550 1800 1550
Text GLabel 1850 1650 2    50   Input ~ 0
D3
Wire Wire Line
	1850 1450 1800 1450
Text GLabel 1850 1550 2    50   Input ~ 0
D4
Wire Wire Line
	1850 1350 1800 1350
Text GLabel 1850 1450 2    50   Input ~ 0
D5
Wire Wire Line
	1850 1250 1800 1250
Text GLabel 1850 1350 2    50   Input ~ 0
D6
Wire Wire Line
	1850 1150 1800 1150
Text GLabel 1850 1250 2    50   Input ~ 0
D7
Wire Wire Line
	1850 1050 1800 1050
Wire Wire Line
	1850 2250 1800 2250
Wire Wire Line
	1850 2350 1800 2350
Wire Wire Line
	1850 2450 1800 2450
Wire Wire Line
	1850 2550 1800 2550
Wire Wire Line
	1850 2650 1800 2650
Wire Wire Line
	1850 2750 1800 2750
Wire Wire Line
	1850 2850 1800 2850
Wire Wire Line
	1850 2950 1800 2950
Wire Wire Line
	1850 4550 1800 4550
Wire Wire Line
	1050 4450 1000 4450
Text GLabel 1850 4150 2    50   Output ~ 0
JE
Wire Wire Line
	1850 4350 1800 4350
Wire Wire Line
	1850 4250 1800 4250
Wire Wire Line
	1850 4150 1800 4150
Wire Wire Line
	1850 4050 1800 4050
Text GLabel 1850 3750 2    50   Output ~ 0
CC
Wire Wire Line
	1850 3950 1800 3950
Text GLabel 1850 3650 2    50   Output ~ 0
CS
Wire Wire Line
	1850 3850 1800 3850
Wire Wire Line
	1850 3750 1800 3750
Wire Wire Line
	1850 3650 1800 3650
Wire Wire Line
	1850 3550 1800 3550
Wire Wire Line
	1850 3450 1800 3450
Text GLabel 1050 2850 2    50   Output ~ 0
FN
Wire Wire Line
	1850 3350 1800 3350
Text GLabel 1050 2950 2    50   Output ~ 0
FV
Wire Wire Line
	1850 3250 1800 3250
Text GLabel 1050 3050 2    50   Output ~ 0
FZ
Wire Wire Line
	1850 3150 1800 3150
Text GLabel 1050 3150 2    50   Output ~ 0
FC
Wire Wire Line
	1850 3050 1800 3050
Wire Wire Line
	1850 2150 1800 2150
Wire Wire Line
	1850 2050 1800 2050
Wire Wire Line
	1850 1950 1800 1950
Wire Wire Line
	1850 1850 1800 1850
Wire Wire Line
	1850 4750 1800 4750
Wire Wire Line
	2050 4850 1800 4850
Wire Wire Line
	1750 750  1850 750 
Wire Wire Line
	1850 750  1850 950 
Text GLabel 1050 3250 2    50   Output ~ 0
FB
Text GLabel 1050 1250 2    50   Input ~ 0
D7
Text GLabel 1050 1350 2    50   Input ~ 0
D6
Text GLabel 1050 1850 2    50   Input ~ 0
D1
Text GLabel 1050 1950 2    50   Input ~ 0
D0
Wire Wire Line
	1000 4250 1050 4250
Wire Wire Line
	1000 4350 1050 4350
Wire Wire Line
	1800 4450 1850 4450
Wire Wire Line
	1000 4550 1050 4550
Wire Wire Line
	1800 4650 1850 4650
Wire Wire Line
	1000 4750 1050 4750
$Comp
L Device:C C1
U 1 1 640ECCCC
P 4500 6000
F 0 "C1" V 4350 6200 50  0000 C CNN
F 1 "0.1uF" V 4450 6200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 5850 50  0001 C CNN
F 3 "~" H 4500 6000 50  0001 C CNN
	1    4500 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 640EE08A
P 4850 7600
F 0 "#PWR06" H 4850 7350 50  0001 C CNN
F 1 "GND" H 4855 7427 50  0000 C CNN
F 2 "" H 4850 7600 50  0001 C CNN
F 3 "" H 4850 7600 50  0001 C CNN
	1    4850 7600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 640EE95F
P 4150 5900
F 0 "#PWR05" H 4150 5750 50  0001 C CNN
F 1 "VCC" H 4165 6073 50  0000 C CNN
F 2 "" H 4150 5900 50  0001 C CNN
F 3 "" H 4150 5900 50  0001 C CNN
	1    4150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 640EF226
P 4850 5900
F 0 "#FLG02" H 4850 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 4850 6073 50  0000 C CNN
F 2 "" H 4850 5900 50  0001 C CNN
F 3 "~" H 4850 5900 50  0001 C CNN
	1    4850 5900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 640EFA22
P 4150 7600
F 0 "#FLG01" H 4150 7675 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 7773 50  0000 C CNN
F 2 "" H 4150 7600 50  0001 C CNN
F 3 "~" H 4150 7600 50  0001 C CNN
	1    4150 7600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 5900 4150 6000
Wire Wire Line
	4850 5900 4850 6000
Wire Wire Line
	4650 6000 4850 6000
Wire Wire Line
	4350 6000 4150 6000
$Comp
L Device:C C2
U 1 1 64103212
P 4500 6250
F 0 "C2" V 4350 6450 50  0000 C CNN
F 1 "0.1uF" V 4450 6450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 6100 50  0001 C CNN
F 3 "~" H 4500 6250 50  0001 C CNN
	1    4500 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 6250 4150 6250
Wire Wire Line
	4650 6250 4850 6250
$Comp
L Device:C C3
U 1 1 6410A335
P 4500 6500
F 0 "C3" V 4350 6700 50  0000 C CNN
F 1 "0.1uF" V 4450 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 6350 50  0001 C CNN
F 3 "~" H 4500 6500 50  0001 C CNN
	1    4500 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 6500 4850 6500
Wire Wire Line
	4350 6500 4150 6500
NoConn ~ 1850 4550
NoConn ~ 1050 4550
NoConn ~ 1050 1050
NoConn ~ 1050 1150
NoConn ~ 1850 1050
NoConn ~ 1850 1150
Text GLabel 1850 4650 2    50   Input ~ 0
~JMP
$Comp
L 74xx:74LS74 U2
U 2 1 5FD96CB1
P 6900 4750
F 0 "U2" H 7000 5100 50  0000 C CNN
F 1 "74HCT74" H 7050 5000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6900 4750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6900 4750 50  0001 C CNN
	2    6900 4750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U2
U 1 1 5FD989ED
P 6900 3750
F 0 "U2" H 7000 4100 50  0000 C CNN
F 1 "74HCT74" H 7050 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6900 3750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6900 3750 50  0001 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U6
U 4 1 5FD9D94E
P 6250 5750
F 0 "U6" H 6250 5750 50  0000 C CNN
F 1 "74HCT08" H 6250 5550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6250 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6250 5750 50  0001 C CNN
	4    6250 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U6
U 2 1 5FDA4688
P 6250 3750
F 0 "U6" H 6250 3750 50  0000 C CNN
F 1 "74HCT08" H 6250 3550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6250 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6250 3750 50  0001 C CNN
	2    6250 3750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U6
U 1 1 5FDAA20C
P 6250 2750
F 0 "U6" H 6250 2750 50  0000 C CNN
F 1 "74HCT08" H 6250 2550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6250 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6250 2750 50  0001 C CNN
	1    6250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2650 5950 2650
$Comp
L 74xx:74LS74 U3
U 2 1 5FDB914B
P 6900 5750
F 0 "U3" H 7000 6100 50  0000 C CNN
F 1 "74HCT74" H 7050 6000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6900 5750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6900 5750 50  0001 C CNN
	2    6900 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U3
U 1 1 5FDB917F
P 6900 2750
F 0 "U3" H 7000 3100 50  0000 C CNN
F 1 "74HCT74" H 7050 3000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6900 2750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6900 2750 50  0001 C CNN
	1    6900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5850 5900 5850
Wire Wire Line
	5900 3650 5950 3650
Wire Wire Line
	6550 3750 6600 3750
Wire Wire Line
	6550 5750 6600 5750
Wire Wire Line
	5950 4850 5900 4850
$Comp
L 74xx:74LS08 U6
U 3 1 5FDA69F7
P 6250 4750
F 0 "U6" H 6250 4750 50  0000 C CNN
F 1 "74HCT08" H 6250 4550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6250 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6250 4750 50  0001 C CNN
	3    6250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3450 5400 3450
$Comp
L 74xx:74LS157 U1
U 1 1 5FE0F104
P 4750 4050
F 0 "U1" H 4950 4950 50  0000 C CNN
F 1 "74HCT157" H 4950 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4750 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4750 4050 50  0001 C CNN
	1    4750 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U4
U 1 1 5FEC38A0
P 9550 4900
F 0 "U4" H 9650 5000 50  0000 C CNN
F 1 "74HCT151" H 9650 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9550 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 9550 4900 50  0001 C CNN
	1    9550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4050 4250 4050
Wire Wire Line
	4150 3450 4250 3450
Wire Wire Line
	7200 5850 7250 5850
Wire Wire Line
	5950 5650 5900 5650
Wire Wire Line
	5950 3850 5900 3850
$Comp
L 74xx:74LS02 U7
U 3 1 60088FFB
P 8650 5600
F 0 "U7" H 8650 5600 50  0000 C CNN
F 1 "74HCT02" H 8650 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8650 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 8650 5600 50  0001 C CNN
	3    8650 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U7
U 2 1 600C75F9
P 6750 1300
F 0 "U7" H 6750 1300 50  0000 C CNN
F 1 "74HCT02" H 6750 1534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6750 1300 50  0001 C CNN
	2    6750 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0219
U 1 1 600E1AE8
P 9550 5950
F 0 "#PWR0219" H 9550 5700 50  0001 C CNN
F 1 "GND" H 9555 5777 50  0000 C CNN
F 2 "" H 9550 5950 50  0001 C CNN
F 3 "" H 9550 5950 50  0001 C CNN
	1    9550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5950 9550 5900
$Comp
L power:VCC #PWR0214
U 1 1 600E3605
P 9550 4000
F 0 "#PWR0214" H 9550 3850 50  0001 C CNN
F 1 "VCC" H 9565 4173 50  0000 C CNN
F 2 "" H 9550 4000 50  0001 C CNN
F 3 "" H 9550 4000 50  0001 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0206
U 1 1 600E56C9
P 6900 4400
F 0 "#PWR0206" H 6900 4250 50  0001 C CNN
F 1 "VCC" H 6915 4573 50  0000 C CNN
F 2 "" H 6900 4400 50  0001 C CNN
F 3 "" H 6900 4400 50  0001 C CNN
	1    6900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0218
U 1 1 600E667D
P 4750 5050
F 0 "#PWR0218" H 4750 4800 50  0001 C CNN
F 1 "GND" H 4755 4877 50  0000 C CNN
F 2 "" H 4750 5050 50  0001 C CNN
F 3 "" H 4750 5050 50  0001 C CNN
	1    4750 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0215
U 1 1 600EAD76
P 6900 5400
F 0 "#PWR0215" H 6900 5250 50  0001 C CNN
F 1 "VCC" H 6915 5573 50  0000 C CNN
F 2 "" H 6900 5400 50  0001 C CNN
F 3 "" H 6900 5400 50  0001 C CNN
	1    6900 5400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0211
U 1 1 600EB7D0
P 6900 3400
F 0 "#PWR0211" H 6900 3250 50  0001 C CNN
F 1 "VCC" H 6915 3573 50  0000 C CNN
F 2 "" H 6900 3400 50  0001 C CNN
F 3 "" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4400 6900 4450
Wire Wire Line
	6900 3400 6900 3450
Wire Wire Line
	6900 5400 6900 5450
Wire Wire Line
	6550 2750 6600 2750
$Comp
L power:VCC #PWR0217
U 1 1 6013F206
P 6900 2400
F 0 "#PWR0217" H 6900 2250 50  0001 C CNN
F 1 "VCC" H 6915 2573 50  0000 C CNN
F 2 "" H 6900 2400 50  0001 C CNN
F 3 "" H 6900 2400 50  0001 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2400 6900 2450
Wire Wire Line
	6900 4050 7200 4050
Wire Wire Line
	6900 6050 7200 6050
Wire Wire Line
	6900 3050 7200 3050
$Comp
L power:VCC #PWR0210
U 1 1 60176670
P 4750 3150
F 0 "#PWR0210" H 4750 3000 50  0001 C CNN
F 1 "VCC" H 4765 3323 50  0000 C CNN
F 2 "" H 4750 3150 50  0001 C CNN
F 3 "" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5400 9000 5400
Wire Wire Line
	9050 5300 9000 5300
Wire Wire Line
	9050 5200 9000 5200
Text GLabel 7100 1200 2    50   Input ~ 0
CS
Text GLabel 10100 4400 2    50   Output ~ 0
~JMP
Text GLabel 9000 5400 0    50   Input ~ 0
IR-Q2
Text GLabel 9000 5300 0    50   Input ~ 0
IR-Q1
Text GLabel 9000 5200 0    50   Input ~ 0
IR-Q0
Text GLabel 5900 3650 0    50   Input ~ 0
CLK
Text GLabel 5900 3850 0    50   Input ~ 0
FZ
Text GLabel 5000 1200 0    50   Output ~ 0
H-CIN
$Comp
L 74xx:74LS245 U5
U 1 1 606E8E5B
P 9200 1700
F 0 "U5" H 8900 2500 50  0000 C CNN
F 1 "74HCT245" H 8900 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 9200 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 9200 1700 50  0001 C CNN
	1    9200 1700
	-1   0    0    -1  
$EndComp
Text GLabel 5900 2650 0    50   Input ~ 0
FN
Text GLabel 5900 2850 0    50   Input ~ 0
CLK
Text GLabel 5900 5850 0    50   Input ~ 0
FV
Wire Wire Line
	5950 2850 5900 2850
Wire Wire Line
	5950 4650 5900 4650
$Comp
L power:VCC #PWR0202
U 1 1 608E8CA5
P 9200 900
F 0 "#PWR0202" H 9200 750 50  0001 C CNN
F 1 "VCC" H 9215 1073 50  0000 C CNN
F 2 "" H 9200 900 50  0001 C CNN
F 3 "" H 9200 900 50  0001 C CNN
	1    9200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1400 8700 1500
Connection ~ 8700 1600
Wire Wire Line
	8700 1600 8700 1700
Connection ~ 8700 1500
Wire Wire Line
	8700 1500 8700 1600
Wire Wire Line
	4150 3750 4250 3750
Wire Wire Line
	4250 4750 4200 4750
Wire Wire Line
	4200 4750 4200 5050
Wire Wire Line
	4200 5050 4750 5050
Connection ~ 4750 5050
Text GLabel 4100 4650 0    50   Input ~ 0
FB
Wire Wire Line
	6900 5050 7200 5050
Wire Wire Line
	9050 4400 9000 4400
Wire Wire Line
	9700 1800 9850 1800
Wire Wire Line
	9850 1700 9700 1700
Wire Wire Line
	9700 1600 9850 1600
Wire Wire Line
	9700 1500 9850 1500
Wire Wire Line
	9700 1400 9850 1400
Wire Wire Line
	9700 1300 9850 1300
Wire Wire Line
	9700 1200 9850 1200
Text Label 9700 1900 0    50   ~ 0
D0
Text Label 9700 1800 0    50   ~ 0
D1
Text Label 9700 1700 0    50   ~ 0
D2
Text Label 9700 1600 0    50   ~ 0
D3
Text Label 9700 1500 0    50   ~ 0
D4
Text Label 9700 1400 0    50   ~ 0
D5
Text Label 9700 1300 0    50   ~ 0
D6
Text Label 9700 1200 0    50   ~ 0
D7
$Comp
L Device:R_Small_US R6
U 1 1 617363FA
P 8500 1500
F 0 "R6" V 8600 1500 50  0000 C CNN
F 1 "1K" V 8700 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8500 1500 50  0001 C CNN
F 3 "~" H 8500 1500 50  0001 C CNN
	1    8500 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 1500 8700 1500
$Comp
L power:GND #PWR0203
U 1 1 617FD8EF
P 8250 1500
F 0 "#PWR0203" H 8250 1250 50  0001 C CNN
F 1 "GND" H 8255 1327 50  0000 C CNN
F 2 "" H 8250 1500 50  0001 C CNN
F 3 "" H 8250 1500 50  0001 C CNN
	1    8250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1500 8250 1500
Wire Wire Line
	4250 4450 4100 4450
Wire Wire Line
	9700 1900 9850 1900
Wire Wire Line
	9000 5000 9050 5000
Wire Wire Line
	9000 4600 9050 4600
Wire Wire Line
	8850 4500 9050 4500
Wire Wire Line
	7100 1200 7050 1200
Wire Wire Line
	8850 4700 9050 4700
$Comp
L power:GND #PWR0208
U 1 1 604B38B1
P 9200 2600
F 0 "#PWR0208" H 9200 2350 50  0001 C CNN
F 1 "GND" H 9205 2427 50  0000 C CNN
F 2 "" H 9200 2600 50  0001 C CNN
F 3 "" H 9200 2600 50  0001 C CNN
	1    9200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4650 4250 4650
Wire Wire Line
	7200 5650 7250 5650
NoConn ~ 600  -200
Wire Wire Line
	4100 4150 4250 4150
Wire Wire Line
	4100 3850 4250 3850
Wire Wire Line
	4100 3550 4150 3550
NoConn ~ 10100 4300
$Comp
L 74xx:74LS02 U7
U 1 1 60A02AB3
P 6100 1200
F 0 "U7" H 6100 1200 50  0000 C CNN
F 1 "74HCT02" H 6100 1434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6100 1200 50  0001 C CNN
	1    6100 1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 1300 6450 1300
Wire Wire Line
	6400 1100 7100 1100
Text GLabel 7100 1100 2    50   Input ~ 0
CC
Wire Wire Line
	8950 5600 9050 5600
Text GLabel 8250 5600 0    50   Input ~ 0
JE
Wire Wire Line
	8250 5600 8300 5600
Wire Wire Line
	8850 4300 9050 4300
Wire Wire Line
	7050 1400 7100 1400
Text GLabel 4950 1400 0    50   Output ~ 0
L-CIN
Wire Wire Line
	4950 1400 5000 1400
Connection ~ 4150 6000
Connection ~ 4150 6250
Connection ~ 4150 6500
Connection ~ 4850 6000
Connection ~ 4850 6250
Connection ~ 4850 6500
Wire Wire Line
	4850 6000 4850 6250
Wire Wire Line
	4150 6000 4150 6250
Wire Wire Line
	4150 6250 4150 6500
Wire Wire Line
	4850 6250 4850 6500
Wire Wire Line
	4850 6500 4850 6750
Wire Wire Line
	4150 6500 4150 6750
$Comp
L Device:C C4
U 1 1 618D15A4
P 4500 6750
F 0 "C4" V 4350 6950 50  0000 C CNN
F 1 "0.1uF" V 4450 6950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 6600 50  0001 C CNN
F 3 "~" H 4500 6750 50  0001 C CNN
	1    4500 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 6750 4850 6750
Wire Wire Line
	4350 6750 4150 6750
$Comp
L Device:C C5
U 1 1 618D1F54
P 4500 7000
F 0 "C5" V 4350 7200 50  0000 C CNN
F 1 "0.1uF" V 4450 7200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 6850 50  0001 C CNN
F 3 "~" H 4500 7000 50  0001 C CNN
	1    4500 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 7000 4150 7000
Wire Wire Line
	4650 7000 4850 7000
$Comp
L Device:C C6
U 1 1 618D1F60
P 4500 7250
F 0 "C6" V 4350 7450 50  0000 C CNN
F 1 "0.1uF" V 4450 7450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 7100 50  0001 C CNN
F 3 "~" H 4500 7250 50  0001 C CNN
	1    4500 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 7250 4850 7250
Wire Wire Line
	4350 7250 4150 7250
Connection ~ 4150 6750
Wire Wire Line
	4150 6750 4150 7000
Connection ~ 4150 7000
Wire Wire Line
	4150 7000 4150 7250
Connection ~ 4150 7250
Wire Wire Line
	4150 7250 4150 7500
Connection ~ 4850 6750
Wire Wire Line
	4850 6750 4850 7000
Connection ~ 4850 7000
Wire Wire Line
	4850 7000 4850 7250
Connection ~ 4850 7250
Wire Wire Line
	4850 7250 4850 7500
$Comp
L Device:C C7
U 1 1 6191339D
P 4500 7500
F 0 "C7" V 4350 7700 50  0000 C CNN
F 1 "0.1uF" V 4450 7700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 7350 50  0001 C CNN
F 3 "~" H 4500 7500 50  0001 C CNN
	1    4500 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 7500 4850 7500
Wire Wire Line
	4350 7500 4150 7500
Connection ~ 4150 7500
Connection ~ 4850 7500
Text GLabel 4100 4150 0    50   Input ~ 0
D0
Text GLabel 4100 3850 0    50   Input ~ 0
D1
Text GLabel 4100 4450 0    50   Input ~ 0
D6
Text GLabel 4100 3550 0    50   Input ~ 0
D7
Text GLabel 9850 1900 2    50   Output ~ 0
D0
Text GLabel 9850 1800 2    50   Output ~ 0
D1
Text GLabel 9850 1700 2    50   Output ~ 0
D2
Text GLabel 9850 1600 2    50   Output ~ 0
D3
Text GLabel 9850 1500 2    50   Output ~ 0
D4
Text GLabel 9850 1400 2    50   Output ~ 0
D5
Text GLabel 9850 1300 2    50   Output ~ 0
D6
Text GLabel 9850 1200 2    50   Output ~ 0
D7
Wire Wire Line
	9700 2200 9750 2200
Text GLabel 9750 2200 2    50   Input ~ 0
~RF
Wire Wire Line
	9700 2100 10000 2100
Wire Wire Line
	10000 2100 10000 2550
Wire Wire Line
	10000 2550 9200 2550
Wire Wire Line
	9200 2500 9200 2550
Connection ~ 9200 2550
Wire Wire Line
	9200 2550 9200 2600
Wire Wire Line
	8600 1200 8700 1200
Wire Wire Line
	8600 1300 8700 1300
Wire Wire Line
	8650 1800 8700 1800
NoConn ~ 1850 2050
NoConn ~ 1850 2150
NoConn ~ 1850 2250
NoConn ~ 1850 2350
NoConn ~ 1850 2450
NoConn ~ 1850 2550
NoConn ~ 1850 2650
NoConn ~ 1850 2750
NoConn ~ 1050 2050
NoConn ~ 1050 2150
NoConn ~ 1050 2250
NoConn ~ 1050 2350
NoConn ~ 1050 2450
NoConn ~ 1050 2550
NoConn ~ 1050 2650
NoConn ~ 1050 2750
NoConn ~ 1050 3350
NoConn ~ 1850 3350
NoConn ~ 1050 3850
NoConn ~ 1050 3950
NoConn ~ 1850 3850
NoConn ~ 1850 3950
NoConn ~ 1850 4250
NoConn ~ 1050 4250
NoConn ~ 1850 4350
NoConn ~ 1050 4350
NoConn ~ 1050 4750
NoConn ~ 1850 4750
NoConn ~ 1050 1450
NoConn ~ 1050 1550
NoConn ~ 1050 1650
NoConn ~ 1050 1750
NoConn ~ 1850 3450
NoConn ~ 1850 3550
NoConn ~ 1050 3450
NoConn ~ 1050 3550
$Comp
L Device:LED_Small D1
U 1 1 62525546
P 3450 1250
F 0 "D1" H 3350 1300 50  0000 C CNN
F 1 "C" H 3450 1150 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3450 1250 50  0001 C CNN
F 3 "~" V 3450 1250 50  0001 C CNN
	1    3450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 62526138
P 3150 1250
F 0 "R1" V 3100 1150 50  0000 C CNN
F 1 "R_YEL" V 3250 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3150 1250 50  0001 C CNN
F 3 "~" H 3150 1250 50  0001 C CNN
	1    3150 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1250 3600 1250
Text GLabel 7250 4650 2    50   Output ~ 0
C
Wire Wire Line
	7200 4650 7250 4650
Text GLabel 8650 1900 0    50   Input ~ 0
C
Text GLabel 7250 4850 2    50   Output ~ 0
~C
Wire Wire Line
	7200 4850 7250 4850
Text GLabel 9000 4400 0    50   Input ~ 0
~C
Text GLabel 7250 3650 2    50   Output ~ 0
Z
Wire Wire Line
	7250 3650 7200 3650
Text GLabel 8650 1800 0    50   Input ~ 0
Z
Text GLabel 7250 3850 2    50   Output ~ 0
~Z
Wire Wire Line
	7250 3850 7200 3850
Text GLabel 9000 4600 0    50   Input ~ 0
~Z
Text GLabel 7250 5850 2    50   Output ~ 0
~V
Text GLabel 9000 4800 0    50   Input ~ 0
~V
Wire Wire Line
	9050 4800 9000 4800
Text GLabel 9000 5000 0    50   Input ~ 0
~N
Text GLabel 7250 2850 2    50   Output ~ 0
~N
Wire Wire Line
	7200 2850 7250 2850
Text GLabel 7250 5650 2    50   Output ~ 0
V
Text GLabel 8850 4700 0    50   Input ~ 0
V
Text GLabel 8600 1300 0    50   Input ~ 0
V
Text GLabel 7250 2650 2    50   Output ~ 0
N
Wire Wire Line
	7250 2650 7200 2650
Text GLabel 8850 4900 0    50   Input ~ 0
N
Wire Wire Line
	9050 4900 8850 4900
Text GLabel 8600 1200 0    50   Input ~ 0
N
Text GLabel 8850 4300 0    50   Input ~ 0
C
Text GLabel 8850 4500 0    50   Input ~ 0
Z
Wire Wire Line
	8650 1900 8700 1900
Text GLabel 7100 1400 2    50   Input ~ 0
C
Text GLabel 2950 1250 0    50   Input ~ 0
~C
Wire Wire Line
	3050 1250 2950 1250
Wire Wire Line
	3350 1250 3250 1250
$Comp
L power:VCC #PWR0101
U 1 1 627CF29C
P 3600 1150
F 0 "#PWR0101" H 3600 1000 50  0001 C CNN
F 1 "VCC" H 3615 1323 50  0000 C CNN
F 2 "" H 3600 1150 50  0001 C CNN
F 3 "" H 3600 1150 50  0001 C CNN
	1    3600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1250 3600 1150
$Comp
L Device:LED_Small D2
U 1 1 627E34D5
P 3450 1550
F 0 "D2" H 3350 1600 50  0000 C CNN
F 1 "Z" H 3450 1450 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3450 1550 50  0001 C CNN
F 3 "~" V 3450 1550 50  0001 C CNN
	1    3450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 627E34F3
P 3150 1550
F 0 "R2" V 3100 1450 50  0000 C CNN
F 1 "R_YEL" V 3250 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3150 1550 50  0001 C CNN
F 3 "~" H 3150 1550 50  0001 C CNN
	1    3150 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1550 3600 1550
Text GLabel 2950 1550 0    50   Input ~ 0
~Z
Wire Wire Line
	3050 1550 2950 1550
Wire Wire Line
	3350 1550 3250 1550
$Comp
L Device:LED_Small D3
U 1 1 627F6D50
P 3450 1850
F 0 "D3" H 3350 1900 50  0000 C CNN
F 1 "V" H 3450 1750 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3450 1850 50  0001 C CNN
F 3 "~" V 3450 1850 50  0001 C CNN
	1    3450 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 627F7770
P 3150 1850
F 0 "R3" V 3100 1750 50  0000 C CNN
F 1 "R_YEL" V 3250 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3150 1850 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1850 3600 1850
Text GLabel 2950 1850 0    50   Input ~ 0
~V
Wire Wire Line
	3050 1850 2950 1850
Wire Wire Line
	3350 1850 3250 1850
$Comp
L Device:LED_Small D4
U 1 1 6280BFC2
P 3450 2150
F 0 "D4" H 3350 2200 50  0000 C CNN
F 1 "N" H 3450 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3450 2150 50  0001 C CNN
F 3 "~" V 3450 2150 50  0001 C CNN
	1    3450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6280CA0C
P 3150 2150
F 0 "R4" V 3100 2050 50  0000 C CNN
F 1 "R_YEL" V 3250 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3150 2150 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2150 3600 2150
Text GLabel 2950 2150 0    50   Input ~ 0
~N
Wire Wire Line
	3050 2150 2950 2150
Wire Wire Line
	3350 2150 3250 2150
Wire Wire Line
	3600 1250 3600 1550
Connection ~ 3600 1250
Wire Wire Line
	3600 1550 3600 1850
Connection ~ 3600 1550
Connection ~ 3600 1850
Wire Wire Line
	3600 1850 3600 2150
$Comp
L Device:LED_Small D5
U 1 1 628FA56C
P 3450 2450
F 0 "D5" H 3350 2500 50  0000 C CNN
F 1 "JUMP" H 3450 2350 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3450 2450 50  0001 C CNN
F 3 "~" V 3450 2450 50  0001 C CNN
	1    3450 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 628FAFD0
P 3150 2450
F 0 "R5" V 3100 2350 50  0000 C CNN
F 1 "R_RED" V 3250 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3150 2450 50  0001 C CNN
F 3 "~" H 3150 2450 50  0001 C CNN
	1    3150 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2450 3600 2450
Text GLabel 2950 2450 0    50   Input ~ 0
~JMP
Wire Wire Line
	3050 2450 2950 2450
Wire Wire Line
	3350 2450 3250 2450
Wire Wire Line
	3600 2150 3600 2450
Connection ~ 3600 2150
Text GLabel 4150 4050 0    50   Input ~ 0
FC-IN
Text GLabel 4150 3750 0    50   Input ~ 0
FZ-IN
Text GLabel 4150 4350 0    50   Input ~ 0
FV-IN
Text GLabel 1000 5900 2    50   Output ~ 0
FC-IN
Text GLabel 1000 5800 2    50   Output ~ 0
FV-IN
Text GLabel 1000 6000 2    50   Output ~ 0
FZ-IN
Text GLabel 1000 7750 2    50   Input ~ 0
L-CIN
Text GLabel 1000 7650 2    50   Input ~ 0
H-CIN
Wire Wire Line
	1000 7650 900  7650
Wire Wire Line
	1000 7750 900  7750
Wire Wire Line
	1000 5800 900  5800
Wire Wire Line
	1000 5900 900  5900
Wire Wire Line
	1000 6000 900  6000
Wire Wire Line
	4150 3450 4150 3550
Connection ~ 4150 3550
Wire Wire Line
	4150 3550 4250 3550
Wire Wire Line
	4250 4350 4150 4350
Text GLabel 5900 4850 0    50   Input ~ 0
CLK
Text GLabel 5900 5650 0    50   Input ~ 0
CLK
Text GLabel 5900 4650 0    50   Input ~ 0
FC
$Comp
L power:VCC #PWR0102
U 1 1 62C1259B
P 7200 5050
F 0 "#PWR0102" H 7200 4900 50  0001 C CNN
F 1 "VCC" H 7300 5050 50  0000 C CNN
F 2 "" H 7200 5050 50  0001 C CNN
F 3 "" H 7200 5050 50  0001 C CNN
	1    7200 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 62C13739
P 7200 4050
F 0 "#PWR0103" H 7200 3900 50  0001 C CNN
F 1 "VCC" H 7300 4050 50  0000 C CNN
F 2 "" H 7200 4050 50  0001 C CNN
F 3 "" H 7200 4050 50  0001 C CNN
	1    7200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 62C13A8F
P 7200 6050
F 0 "#PWR0104" H 7200 5900 50  0001 C CNN
F 1 "VCC" H 7300 6050 50  0000 C CNN
F 2 "" H 7200 6050 50  0001 C CNN
F 3 "" H 7200 6050 50  0001 C CNN
	1    7200 6050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 62C13EC0
P 7200 3050
F 0 "#PWR0105" H 7200 2900 50  0001 C CNN
F 1 "VCC" H 7300 3050 50  0000 C CNN
F 2 "" H 7200 3050 50  0001 C CNN
F 3 "" H 7200 3050 50  0001 C CNN
	1    7200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4750 6600 4750
Wire Wire Line
	5400 4350 5400 5350
Wire Wire Line
	5400 5350 6550 5350
Wire Wire Line
	6550 5350 6550 5650
Wire Wire Line
	6550 5650 6600 5650
Wire Wire Line
	5250 4350 5400 4350
Wire Wire Line
	5600 3450 6550 3450
Wire Wire Line
	6550 3450 6550 3650
Wire Wire Line
	6550 3650 6600 3650
Wire Wire Line
	5250 4050 5600 4050
Wire Wire Line
	5600 4050 5600 4450
Wire Wire Line
	5600 4450 6550 4450
Wire Wire Line
	6550 4450 6550 4650
Wire Wire Line
	6550 4650 6600 4650
Wire Wire Line
	5600 3750 5600 3450
Wire Wire Line
	5250 3750 5600 3750
Wire Wire Line
	5400 3450 5400 2500
Wire Wire Line
	5400 2500 6550 2500
Wire Wire Line
	6550 2500 6550 2650
Wire Wire Line
	6550 2650 6600 2650
Text Label 5950 5350 0    50   ~ 0
FV-D
Text Label 5950 4450 0    50   ~ 0
FC-D
Text Label 5950 3450 0    50   ~ 0
FZ-D
Text Label 5950 2500 0    50   ~ 0
FN-D
NoConn ~ 1050 3750
NoConn ~ 1050 3650
NoConn ~ 1050 4050
NoConn ~ 1850 4050
NoConn ~ 1850 3250
NoConn ~ 1850 4450
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 63405BB0
P 700 7350
F 0 "J4" H 618 7967 50  0000 C CNN
F 1 "IC-TL" H 618 7876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 700 7350 50  0001 C CNN
F 3 "~" H 700 7350 50  0001 C CNN
	1    700  7350
	-1   0    0    -1  
$EndComp
Text GLabel 1000 7050 2    50   Output ~ 0
~RF
Wire Wire Line
	1000 7050 900  7050
Text GLabel 1000 7350 2    50   Output ~ 0
IR-Q2
Text GLabel 1000 7450 2    50   Output ~ 0
IR-Q1
Text GLabel 1000 7550 2    50   Output ~ 0
IR-Q0
Wire Wire Line
	1000 7550 900  7550
Wire Wire Line
	1000 7450 900  7450
Wire Wire Line
	1000 7350 900  7350
NoConn ~ 1050 4150
$Comp
L power:VCC #PWR0106
U 1 1 635D4D57
P 2200 5900
F 0 "#PWR0106" H 2200 5750 50  0001 C CNN
F 1 "VCC" H 2215 6073 50  0000 C CNN
F 2 "" H 2200 5900 50  0001 C CNN
F 3 "" H 2200 5900 50  0001 C CNN
	1    2200 5900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U6
U 5 1 63631343
P 2700 6850
F 0 "U6" V 2800 6850 50  0000 C CNN
F 1 "74HCT08" V 2600 6850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2700 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2700 6850 50  0001 C CNN
	5    2700 6850
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS02 U7
U 5 1 636A3CF2
P 2700 7300
F 0 "U7" V 2800 7300 50  0000 C CNN
F 1 "74HCT02" V 2600 7300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2700 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2700 7300 50  0001 C CNN
	5    2700 7300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 63700A32
P 3200 7350
F 0 "#PWR0107" H 3200 7100 50  0001 C CNN
F 1 "GND" H 3205 7177 50  0000 C CNN
F 2 "" H 3200 7350 50  0001 C CNN
F 3 "" H 3200 7350 50  0001 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4650 1050 4650
Text GLabel 1050 4650 2    50   Input ~ 0
~JMP
$Comp
L 74xx:74LS74 U2
U 3 1 6197D574
P 2700 5950
F 0 "U2" V 2800 5950 50  0000 C CNN
F 1 "74HCT74" V 2600 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2700 5950 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2700 5950 50  0001 C CNN
	3    2700 5950
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS74 U3
U 3 1 619C1ED6
P 2700 6400
F 0 "U3" V 2800 6400 50  0000 C CNN
F 1 "74HCT74" V 2600 6400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2700 6400 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2700 6400 50  0001 C CNN
	3    2700 6400
	0    -1   -1   0   
$EndComp
Connection ~ 3200 6850
Wire Wire Line
	3200 6850 3200 7300
Connection ~ 3200 7300
Wire Wire Line
	3200 7300 3200 7350
Wire Wire Line
	2200 7300 2200 6850
Connection ~ 2200 6850
$Comp
L 74xx:74LS02 U7
U 4 1 61AB560A
P 5300 1400
F 0 "U7" H 5300 1400 50  0000 C CNN
F 1 "74HCT02" H 5300 1200 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5300 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 5300 1400 50  0001 C CNN
	4    5300 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 4300 10050 4300
Wire Wire Line
	10100 4400 10050 4400
Wire Wire Line
	8350 5500 8300 5500
Wire Wire Line
	8300 5500 8300 5600
Wire Wire Line
	8300 5700 8350 5700
Connection ~ 8300 5600
Wire Wire Line
	8300 5600 8300 5700
Wire Wire Line
	5650 1500 5600 1500
Wire Wire Line
	5600 1300 5650 1300
Wire Wire Line
	5000 1200 5750 1200
Wire Wire Line
	5750 1200 5750 1400
Wire Wire Line
	5750 1400 5650 1400
Wire Wire Line
	5650 1400 5650 1300
Connection ~ 5750 1200
Wire Wire Line
	5750 1200 5800 1200
Wire Wire Line
	5650 1500 5650 1400
Connection ~ 5650 1400
Wire Wire Line
	4150 7500 4150 7600
Wire Wire Line
	4850 7500 4850 7600
Wire Wire Line
	2200 5900 2200 5950
Wire Wire Line
	3100 6400 3200 6400
Connection ~ 3200 6400
Wire Wire Line
	3200 6400 3200 6850
Wire Wire Line
	3100 5950 3200 5950
Wire Wire Line
	3200 5950 3200 6400
Wire Wire Line
	2300 5950 2200 5950
Connection ~ 2200 5950
Wire Wire Line
	2200 5950 2200 6400
Wire Wire Line
	2300 6400 2200 6400
Connection ~ 2200 6400
Wire Wire Line
	2200 6400 2200 6850
NoConn ~ 950  7150
NoConn ~ 950  7250
Wire Wire Line
	900  7250 950  7250
Wire Wire Line
	950  7150 900  7150
Wire Wire Line
	950  6100 900  6100
Wire Wire Line
	950  6200 900  6200
Wire Wire Line
	950  6300 900  6300
Wire Wire Line
	950  6400 900  6400
Wire Wire Line
	950  6500 900  6500
NoConn ~ 950  6100
NoConn ~ 950  6200
NoConn ~ 950  6300
NoConn ~ 950  6400
NoConn ~ 950  6500
NoConn ~ 1850 2850
NoConn ~ 1850 2950
NoConn ~ 1850 3050
NoConn ~ 1850 3150
Text Notes 9950 4650 0    50   ~ 0
Jump Control
$EndSCHEMATC
