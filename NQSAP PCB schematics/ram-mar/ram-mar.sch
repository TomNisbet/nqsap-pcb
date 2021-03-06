EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "NQSAP-PCB RAM and MAR"
Date "2021-10-12"
Rev "1.0"
Comp "github.com/TomNisbet/nqsap-pcb"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x40 J1
U 1 1 616317F2
P 650 2950
F 0 "J1" H 650 825 50  0000 C CNN
F 1 "Bus" H 625 725 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 650 2950 50  0001 C CNN
F 3 "~" H 650 2950 50  0001 C CNN
	1    650  2950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 800 850
F 0 "#PWR01" H 800 600 50  0001 C CNN
F 1 "GND" H 805 677 50  0000 C CNN
F 2 "" H 800 850 50  0001 C CNN
F 3 "" H 800 850 50  0001 C CNN
	1    800  850 
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 616326CE
P 1100 4950
F 0 "#PWR02" H 1100 4800 50  0001 C CNN
F 1 "VCC" H 1115 5123 50  0000 C CNN
F 2 "" H 1100 4950 50  0001 C CNN
F 3 "" H 1100 4950 50  0001 C CNN
	1    1100 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	900  1850 850  1850
Wire Wire Line
	900  1050 850  1050
Wire Wire Line
	900  1750 850  1750
Wire Wire Line
	900  1650 850  1650
Wire Wire Line
	900  1550 850  1550
Wire Wire Line
	900  1450 850  1450
Wire Wire Line
	900  1350 850  1350
Wire Wire Line
	900  1250 850  1250
Wire Wire Line
	900  1150 850  1150
Wire Wire Line
	900  2350 850  2350
Wire Wire Line
	900  2450 850  2450
Wire Wire Line
	900  2550 850  2550
Wire Wire Line
	900  2650 850  2650
Wire Wire Line
	900  2750 850  2750
Wire Wire Line
	900  2850 850  2850
Wire Wire Line
	900  2950 850  2950
Wire Wire Line
	900  3050 850  3050
Wire Wire Line
	900  4250 850  4250
Wire Wire Line
	900  4150 850  4150
Wire Wire Line
	1700 4050 1650 4050
Wire Wire Line
	1700 3950 1650 3950
Wire Wire Line
	900  3850 850  3850
Wire Wire Line
	900  3750 850  3750
Wire Wire Line
	900  3650 850  3650
Wire Wire Line
	900  3550 850  3550
Wire Wire Line
	900  3450 850  3450
Wire Wire Line
	900  3350 850  3350
Wire Wire Line
	900  3250 850  3250
Wire Wire Line
	900  3150 850  3150
Wire Wire Line
	900  2250 850  2250
Wire Wire Line
	900  2150 850  2150
Wire Wire Line
	900  2050 850  2050
Wire Wire Line
	900  1950 850  1950
Text GLabel 900  4550 2    50   Input ~ 0
CLK
Wire Wire Line
	1100 4950 850  4950
Wire Wire Line
	800  850  900  850 
Wire Wire Line
	900  850  900  1050
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 61632728
P 1450 2950
F 0 "J2" H 1450 825 50  0000 C CNN
F 1 "Bus" H 1425 725 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 1450 2950 50  0001 C CNN
F 3 "~" H 1450 2950 50  0001 C CNN
	1    1450 2950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61632732
P 1600 850
F 0 "#PWR03" H 1600 600 50  0001 C CNN
F 1 "GND" H 1605 677 50  0000 C CNN
F 2 "" H 1600 850 50  0001 C CNN
F 3 "" H 1600 850 50  0001 C CNN
	1    1600 850 
	0    1    1    0   
$EndComp
Text GLabel 1700 2050 2    50   Input ~ 0
D0
Wire Wire Line
	1700 1850 1650 1850
Wire Wire Line
	1700 1050 1650 1050
Text GLabel 1700 1950 2    50   Input ~ 0
D1
Wire Wire Line
	1700 1750 1650 1750
Text GLabel 1700 1850 2    50   Input ~ 0
D2
Wire Wire Line
	1700 1650 1650 1650
Text GLabel 1700 1750 2    50   Input ~ 0
D3
Wire Wire Line
	1700 1550 1650 1550
Text GLabel 1700 1650 2    50   Input ~ 0
D4
Wire Wire Line
	1700 1450 1650 1450
Text GLabel 1700 1550 2    50   Input ~ 0
D5
Wire Wire Line
	1700 1350 1650 1350
Text GLabel 1700 1450 2    50   Input ~ 0
D6
Wire Wire Line
	1700 1250 1650 1250
Text GLabel 1700 1350 2    50   Input ~ 0
D7
Wire Wire Line
	1700 1150 1650 1150
Wire Wire Line
	1700 2350 1650 2350
Wire Wire Line
	1700 2450 1650 2450
Wire Wire Line
	1700 2550 1650 2550
Wire Wire Line
	1700 2650 1650 2650
Text GLabel 5700 6300 2    50   Input ~ 0
WR0
Wire Wire Line
	1700 2750 1650 2750
Text GLabel 5700 6400 2    50   Input ~ 0
WR1
Wire Wire Line
	1700 2850 1650 2850
Text GLabel 5700 6500 2    50   Input ~ 0
WR2
Wire Wire Line
	1700 2950 1650 2950
Text GLabel 5700 6900 2    50   Input ~ 0
WR3
Wire Wire Line
	1700 3050 1650 3050
Wire Wire Line
	1700 4650 1650 4650
Wire Wire Line
	1700 4550 1650 4550
Wire Wire Line
	1700 4450 1650 4450
Wire Wire Line
	1700 4350 1650 4350
Wire Wire Line
	1700 4250 1650 4250
Wire Wire Line
	1700 4150 1650 4150
Wire Wire Line
	900  4050 850  4050
Wire Wire Line
	900  3950 850  3950
Wire Wire Line
	1700 3850 1650 3850
Wire Wire Line
	1700 3750 1650 3750
Wire Wire Line
	1700 3650 1650 3650
Wire Wire Line
	1700 3550 1650 3550
Wire Wire Line
	1700 3450 1650 3450
Wire Wire Line
	1700 3350 1650 3350
Wire Wire Line
	1700 3250 1650 3250
Wire Wire Line
	1700 3150 1650 3150
Wire Wire Line
	1700 2250 1650 2250
Wire Wire Line
	1700 2150 1650 2150
Wire Wire Line
	1700 2050 1650 2050
Wire Wire Line
	1700 1950 1650 1950
Wire Wire Line
	1700 4850 1650 4850
Wire Wire Line
	1700 4750 1650 4750
Wire Wire Line
	1900 4950 1650 4950
Wire Wire Line
	1600 850  1700 850 
Wire Wire Line
	1700 850  1700 1050
Wire Wire Line
	850  4350 900  4350
Wire Wire Line
	850  4450 900  4450
Wire Wire Line
	850  4550 900  4550
Wire Wire Line
	850  4650 900  4650
Wire Wire Line
	850  4750 900  4750
Wire Wire Line
	850  4850 900  4850
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 61847D1B
P 700 7200
F 0 "J4" H 618 7817 50  0000 C CNN
F 1 "Conn_02x08" H 618 7726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 700 7200 50  0001 C CNN
F 3 "~" H 700 7200 50  0001 C CNN
	1    700  7200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 640ECCCC
P 9750 1450
F 0 "C1" V 9600 1650 50  0000 C CNN
F 1 "0.1uF" V 9700 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9788 1300 50  0001 C CNN
F 3 "~" H 9750 1450 50  0001 C CNN
	1    9750 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 640EE08A
P 10100 2500
F 0 "#PWR06" H 10100 2250 50  0001 C CNN
F 1 "GND" H 10105 2327 50  0000 C CNN
F 2 "" H 10100 2500 50  0001 C CNN
F 3 "" H 10100 2500 50  0001 C CNN
	1    10100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 640EF226
P 10100 1300
F 0 "#FLG02" H 10100 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 10100 1473 50  0000 C CNN
F 2 "" H 10100 1300 50  0001 C CNN
F 3 "~" H 10100 1300 50  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 640EFA22
P 9400 2500
F 0 "#FLG01" H 9400 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 2673 50  0000 C CNN
F 2 "" H 9400 2500 50  0001 C CNN
F 3 "~" H 9400 2500 50  0001 C CNN
	1    9400 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 1300 9400 1450
Wire Wire Line
	10100 1300 10100 1450
Wire Wire Line
	9900 1450 10100 1450
Connection ~ 10100 1450
Wire Wire Line
	10100 1450 10100 1700
Wire Wire Line
	9600 1450 9400 1450
Connection ~ 9400 1450
Wire Wire Line
	9400 1450 9400 1700
$Comp
L Device:C C2
U 1 1 64103212
P 9750 1700
F 0 "C2" V 9600 1900 50  0000 C CNN
F 1 "0.1uF" V 9700 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9788 1550 50  0001 C CNN
F 3 "~" H 9750 1700 50  0001 C CNN
	1    9750 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 1700 9400 1700
Connection ~ 9400 1700
Wire Wire Line
	9400 1700 9400 1950
Wire Wire Line
	9900 1700 10100 1700
Connection ~ 10100 1700
Wire Wire Line
	10100 1700 10100 1950
$Comp
L Device:C C3
U 1 1 6410A335
P 9750 1950
F 0 "C3" V 9600 2150 50  0000 C CNN
F 1 "0.1uF" V 9700 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9788 1800 50  0001 C CNN
F 3 "~" H 9750 1950 50  0001 C CNN
	1    9750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 1950 10100 1950
Connection ~ 10100 1950
Wire Wire Line
	10100 1950 10100 2200
Wire Wire Line
	9600 1950 9400 1950
Connection ~ 9400 1950
Wire Wire Line
	9400 1950 9400 2200
Wire Wire Line
	4400 5050 4550 5050
Text Label 3800 4850 1    50   ~ 0
D0
Wire Wire Line
	3500 4700 3500 4850
Text Label 3900 4850 1    50   ~ 0
D1
Wire Wire Line
	3600 4700 3600 4850
Text Label 3700 4850 1    50   ~ 0
D2
Wire Wire Line
	3700 4700 3700 4850
Text Label 4000 4850 1    50   ~ 0
D3
Wire Wire Line
	3800 4700 3800 4850
Text Label 3600 4850 1    50   ~ 0
D4
Wire Wire Line
	3900 4700 3900 4850
Text Label 4100 4850 1    50   ~ 0
D5
Wire Wire Line
	4000 4700 4000 4850
Text Label 3500 4850 1    50   ~ 0
D6
Wire Wire Line
	4100 4700 4100 4850
Text Label 4200 4850 1    50   ~ 0
D7
Wire Wire Line
	4200 4700 4200 4850
$Comp
L power:GND #PWR0405
U 1 1 62B94EF1
P 4850 4250
F 0 "#PWR0405" H 4850 4000 50  0001 C CNN
F 1 "GND" H 4855 4077 50  0000 C CNN
F 2 "" H 4850 4250 50  0001 C CNN
F 3 "" H 4850 4250 50  0001 C CNN
	1    4850 4250
	1    0    0    -1  
$EndComp
Text GLabel 4550 4900 2    50   Input ~ 0
~WM
Wire Wire Line
	4400 4700 4400 5050
Text GLabel 4550 5050 2    50   Input ~ 0
CLK
Wire Wire Line
	4500 4700 4500 4900
Wire Wire Line
	4500 4900 4550 4900
Text Notes 4700 3950 0    50   ~ 0
MAR
$Comp
L 74xx:74LS377 U2
U 1 1 61661BDF
P 4000 4200
F 0 "U2" V 4050 4250 50  0000 R CNN
F 1 "74HCT377" V 3950 4400 50  0000 R CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4000 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4000 4200 50  0001 C CNN
	1    4000 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4200 4850 4200
Wire Wire Line
	4850 4200 4850 4250
Wire Wire Line
	3150 4200 3200 4200
$Comp
L power:VCC #PWR09
U 1 1 61858ED0
P 3150 4150
F 0 "#PWR09" H 3150 4000 50  0001 C CNN
F 1 "VCC" H 3165 4323 50  0000 C CNN
F 2 "" H 3150 4150 50  0001 C CNN
F 3 "" H 3150 4150 50  0001 C CNN
	1    3150 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6193E2CA
P 9750 2200
F 0 "C4" V 9600 2400 50  0000 C CNN
F 1 "0.1uF" V 9700 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9788 2050 50  0001 C CNN
F 3 "~" H 9750 2200 50  0001 C CNN
	1    9750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 2200 10100 2200
Connection ~ 10100 2200
Wire Wire Line
	10100 2200 10100 2450
Wire Wire Line
	9600 2200 9400 2200
Connection ~ 9400 2200
Wire Wire Line
	9400 2200 9400 2450
$Comp
L power:VCC #PWR04
U 1 1 61C53290
P 1900 4950
F 0 "#PWR04" H 1900 4800 50  0001 C CNN
F 1 "VCC" H 1915 5123 50  0000 C CNN
F 2 "" H 1900 4950 50  0001 C CNN
F 3 "" H 1900 4950 50  0001 C CNN
	1    1900 4950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 61C536D5
P 9400 1300
F 0 "#PWR05" H 9400 1150 50  0001 C CNN
F 1 "VCC" H 9415 1473 50  0000 C CNN
F 2 "" H 9400 1300 50  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
	1    9400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6900 900  6900
Wire Wire Line
	950  7000 900  7000
Wire Wire Line
	950  7100 900  7100
Wire Wire Line
	950  7200 900  7200
Wire Wire Line
	950  7300 900  7300
Wire Wire Line
	950  7400 900  7400
Wire Wire Line
	950  7500 900  7500
Wire Wire Line
	950  7600 900  7600
$Comp
L 74xx:74LS138 U4
U 1 1 623F0D9C
P 5150 6600
F 0 "U4" V 5100 6550 50  0000 C CNN
F 1 "74HCT138" V 5200 6550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5150 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 5150 6600 50  0001 C CNN
	1    5150 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 6900 5700 6900
Wire Wire Line
	5700 7000 5650 7000
Wire Wire Line
	5700 7000 5700 7350
Wire Wire Line
	5700 7350 5150 7350
Wire Wire Line
	5150 7350 5150 7300
Wire Wire Line
	5700 6300 5650 6300
Wire Wire Line
	5700 6400 5650 6400
Wire Wire Line
	5700 6500 5650 6500
$Comp
L power:VCC #PWR0101
U 1 1 624B6338
P 5150 5900
F 0 "#PWR0101" H 5150 5750 50  0001 C CNN
F 1 "VCC" H 5165 6073 50  0000 C CNN
F 2 "" H 5150 5900 50  0001 C CNN
F 3 "" H 5150 5900 50  0001 C CNN
	1    5150 5900
	1    0    0    -1  
$EndComp
Text GLabel 4600 6500 0    50   Output ~ 0
~WM
$Comp
L power:GND #PWR0102
U 1 1 62581F21
P 5700 7400
F 0 "#PWR0102" H 5700 7150 50  0001 C CNN
F 1 "GND" H 5705 7227 50  0000 C CNN
F 2 "" H 5700 7400 50  0001 C CNN
F 3 "" H 5700 7400 50  0001 C CNN
	1    5700 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 7400 5700 7350
Connection ~ 5700 7350
Text GLabel 3800 4850 3    50   Input ~ 0
D0
Text GLabel 3900 4850 3    50   Input ~ 0
D1
Text GLabel 3700 4850 3    50   Input ~ 0
D2
Text GLabel 4000 4850 3    50   Input ~ 0
D3
Text GLabel 3600 4850 3    50   Input ~ 0
D4
Text GLabel 4100 4850 3    50   Input ~ 0
D5
Text GLabel 3500 4850 3    50   Input ~ 0
D6
Text GLabel 4200 4850 3    50   Input ~ 0
D7
Text GLabel 1700 2150 2    50   Input ~ 0
WR3
Text GLabel 1700 2250 2    50   Input ~ 0
WR2
Text GLabel 1700 2350 2    50   Input ~ 0
WR1
Text GLabel 1700 2450 2    50   Input ~ 0
WR0
NoConn ~ 900  2950
NoConn ~ 900  3050
NoConn ~ 900  3150
NoConn ~ 900  3250
NoConn ~ 900  3350
NoConn ~ 900  3450
NoConn ~ 900  3550
NoConn ~ 900  3650
NoConn ~ 900  3750
NoConn ~ 900  3850
NoConn ~ 1700 3950
NoConn ~ 1700 4050
NoConn ~ 900  4150
NoConn ~ 900  4250
NoConn ~ 900  4450
NoConn ~ 1700 4450
NoConn ~ 1700 4250
NoConn ~ 1700 4150
NoConn ~ 1700 3450
NoConn ~ 1700 3850
NoConn ~ 1700 3750
NoConn ~ 1700 3650
NoConn ~ 1700 3550
NoConn ~ 1700 3350
NoConn ~ 1700 3250
NoConn ~ 1700 3150
NoConn ~ 1700 3050
NoConn ~ 1700 2950
Wire Wire Line
	9900 2450 10100 2450
$Comp
L Device:C C5
U 1 1 62A15BA5
P 9750 2450
F 0 "C5" V 9600 2650 50  0000 C CNN
F 1 "0.1uF" V 9700 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9788 2300 50  0001 C CNN
F 3 "~" H 9750 2450 50  0001 C CNN
	1    9750 2450
	0    1    1    0   
$EndComp
Connection ~ 10100 2450
Wire Wire Line
	9600 2450 9400 2450
Connection ~ 9400 2450
NoConn ~ 900  2550
NoConn ~ 900  2650
NoConn ~ 900  2750
NoConn ~ 900  2850
NoConn ~ 900  1150
NoConn ~ 900  1250
NoConn ~ 1700 1150
NoConn ~ 1700 1250
NoConn ~ 1700 4650
NoConn ~ 900  4650
NoConn ~ 1700 4350
NoConn ~ 900  2150
NoConn ~ 900  2250
NoConn ~ 900  2350
NoConn ~ 900  2450
NoConn ~ 1700 4550
NoConn ~ 900  4850
Wire Wire Line
	3150 4150 3150 4200
$Comp
L Memory_RAM:CY62256-70PC U1
U 1 1 62283FAB
P 4200 2250
F 0 "U1" V 4200 2300 50  0000 R CNN
F 1 "CY62256-70PC" V 4100 2550 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 4200 2150 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 4200 2150 50  0001 C CNN
	1    4200 2250
	0    -1   -1   0   
$EndComp
Text Label 3500 1600 3    50   ~ 0
D0
Wire Wire Line
	3500 1750 3500 1600
Text Label 3600 1600 3    50   ~ 0
D1
Wire Wire Line
	3600 1750 3600 1600
Text Label 3700 1600 3    50   ~ 0
D2
Wire Wire Line
	3700 1750 3700 1600
Text Label 3800 1600 3    50   ~ 0
D3
Wire Wire Line
	3800 1750 3800 1600
Text Label 3900 1600 3    50   ~ 0
D4
Wire Wire Line
	3900 1750 3900 1600
Text Label 4000 1600 3    50   ~ 0
D5
Wire Wire Line
	4000 1750 4000 1600
Text Label 4100 1600 3    50   ~ 0
D6
Wire Wire Line
	4100 1750 4100 1600
Text Label 4200 1600 3    50   ~ 0
D7
Wire Wire Line
	4200 1750 4200 1600
Text GLabel 3500 1600 1    50   3State ~ 0
D0
Text GLabel 3600 1600 1    50   3State ~ 0
D1
Text GLabel 3700 1600 1    50   3State ~ 0
D2
Text GLabel 3800 1600 1    50   3State ~ 0
D3
Text GLabel 3900 1600 1    50   3State ~ 0
D4
Text GLabel 4000 1600 1    50   3State ~ 0
D5
Text GLabel 4100 1600 1    50   3State ~ 0
D6
Text GLabel 4200 1600 1    50   3State ~ 0
D7
Text GLabel 3800 6300 2    50   Input ~ 0
RR0
Text GLabel 3800 6400 2    50   Input ~ 0
RR1
Text GLabel 3800 6500 2    50   Input ~ 0
RR2
Text GLabel 3800 6900 2    50   Input ~ 0
RR3
$Comp
L 74xx:74LS138 U3
U 1 1 6229A8B5
P 3250 6600
F 0 "U3" V 3200 6550 50  0000 C CNN
F 1 "74HCT138" V 3300 6550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3250 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 3250 6600 50  0001 C CNN
	1    3250 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 6900 3800 6900
Wire Wire Line
	3800 7000 3750 7000
Wire Wire Line
	3800 7000 3800 7350
Wire Wire Line
	3800 7350 3250 7350
Wire Wire Line
	3250 7350 3250 7300
Wire Wire Line
	3800 6300 3750 6300
Wire Wire Line
	3800 6400 3750 6400
Wire Wire Line
	3800 6500 3750 6500
$Comp
L power:VCC #PWR015
U 1 1 6229A8CA
P 3250 5900
F 0 "#PWR015" H 3250 5750 50  0001 C CNN
F 1 "VCC" H 3265 6073 50  0000 C CNN
F 2 "" H 3250 5900 50  0001 C CNN
F 3 "" H 3250 5900 50  0001 C CNN
	1    3250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6000 3250 5950
$Comp
L power:GND #PWR016
U 1 1 6229A8DD
P 3800 7400
F 0 "#PWR016" H 3800 7150 50  0001 C CNN
F 1 "GND" H 3805 7227 50  0000 C CNN
F 2 "" H 3800 7400 50  0001 C CNN
F 3 "" H 3800 7400 50  0001 C CNN
	1    3800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7400 3800 7350
Connection ~ 3800 7350
$Comp
L Device:R_Small_US R17
U 1 1 6229A8E9
P 7950 2150
F 0 "R17" V 7800 1950 50  0000 L CNN
F 1 "R-RED" V 7900 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7950 2150 50  0001 C CNN
F 3 "~" H 7950 2150 50  0001 C CNN
	1    7950 2150
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D17
U 1 1 6229A8F3
P 8250 2150
F 0 "D17" H 8050 2300 50  0000 L CNN
F 1 "WRITE" H 8000 2200 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8250 2150 50  0001 C CNN
F 3 "~" V 8250 2150 50  0001 C CNN
	1    8250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2150 8050 2150
Wire Wire Line
	3150 5950 3250 5950
Connection ~ 3250 5950
Wire Wire Line
	3250 5950 3250 5900
Wire Wire Line
	7550 2150 7850 2150
Wire Wire Line
	5150 5900 5150 6000
$Comp
L power:VCC #PWR017
U 1 1 62304BAA
P 4100 6750
F 0 "#PWR017" H 4100 6600 50  0001 C CNN
F 1 "VCC" H 4115 6923 50  0000 C CNN
F 2 "" H 4100 6750 50  0001 C CNN
F 3 "" H 4100 6750 50  0001 C CNN
	1    4100 6750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 62304F1A
P 6000 6750
F 0 "#PWR020" H 6000 6600 50  0001 C CNN
F 1 "VCC" H 6015 6923 50  0000 C CNN
F 2 "" H 6000 6750 50  0001 C CNN
F 3 "" H 6000 6750 50  0001 C CNN
	1    6000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6800 6000 6750
Wire Wire Line
	5650 6800 6000 6800
Wire Wire Line
	4100 6750 4100 6800
Wire Wire Line
	3750 6800 4100 6800
Text GLabel 2700 6400 0    50   Output ~ 0
~RR
Text GLabel 4600 6400 0    50   Output ~ 0
~WR
Wire Wire Line
	3500 2750 3500 3250
Wire Wire Line
	3600 2750 3600 3250
Wire Wire Line
	3700 2750 3700 3250
Wire Wire Line
	3800 2750 3800 3250
Wire Wire Line
	4000 2750 4000 3250
Wire Wire Line
	4100 2750 4100 3250
Wire Wire Line
	4200 2750 4200 3250
Wire Wire Line
	4900 2800 4900 2750
Wire Wire Line
	4500 2750 4500 2800
Wire Wire Line
	4500 2800 4600 2800
Wire Wire Line
	4600 2800 4600 2750
Connection ~ 4600 2800
Wire Wire Line
	4600 2800 4700 2800
Wire Wire Line
	4700 2750 4700 2800
Connection ~ 4700 2800
Wire Wire Line
	4700 2800 4800 2800
Wire Wire Line
	4800 2750 4800 2800
Connection ~ 4800 2800
Wire Wire Line
	4800 2800 4900 2800
Wire Wire Line
	5100 2250 5150 2250
Wire Wire Line
	5150 2800 4900 2800
Connection ~ 4900 2800
$Comp
L power:GND #PWR019
U 1 1 628851B5
P 5300 2250
F 0 "#PWR019" H 5300 2000 50  0001 C CNN
F 1 "GND" H 5305 2077 50  0000 C CNN
F 2 "" H 5300 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1650 4700 1650
Wire Wire Line
	4700 1650 4700 1750
Text GLabel 5550 1550 2    50   Input ~ 0
CLK
Wire Wire Line
	5500 1550 5550 1550
Text GLabel 6400 1750 2    50   Input ~ 0
~WR
Text GLabel 4600 1550 1    50   Input ~ 0
~RR
Wire Wire Line
	4400 1750 4400 1200
Wire Wire Line
	4400 1200 4800 1200
Wire Wire Line
	4600 1550 4600 1750
$Comp
L power:VCC #PWR014
U 1 1 62928619
P 3250 2200
F 0 "#PWR014" H 3250 2050 50  0001 C CNN
F 1 "VCC" H 3265 2373 50  0000 C CNN
F 2 "" H 3250 2200 50  0001 C CNN
F 3 "" H 3250 2200 50  0001 C CNN
	1    3250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2200 3250 2250
Wire Wire Line
	3250 2250 3300 2250
Wire Wire Line
	6400 1750 6350 1750
Wire Wire Line
	6350 1750 6350 1650
Wire Wire Line
	6350 1650 6300 1650
Wire Wire Line
	6350 1750 6350 1850
Wire Wire Line
	6350 1850 6300 1850
Connection ~ 6350 1750
$Comp
L power:GND #PWR018
U 1 1 629D4C50
P 4800 1200
F 0 "#PWR018" H 4800 950 50  0001 C CNN
F 1 "GND" H 4805 1027 50  0000 C CNN
F 2 "" H 4800 1200 50  0001 C CNN
F 3 "" H 4800 1200 50  0001 C CNN
	1    4800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1750 5700 1750
Wire Wire Line
	4600 7000 4650 7000
Text Notes 5150 2050 0    50   ~ 0
RAM
Text Label 3500 2950 1    50   ~ 0
RA0
Text Label 3600 2950 1    50   ~ 0
RA1
Text Label 3700 2950 1    50   ~ 0
RA2
Text Label 3800 2950 1    50   ~ 0
RA3
Text Label 3900 2950 1    50   ~ 0
RA4
Text Label 4000 2950 1    50   ~ 0
RA5
Text Label 4100 2950 1    50   ~ 0
RA6
Text Label 4200 2950 1    50   ~ 0
RA7
Wire Wire Line
	3500 3450 3500 3700
Wire Wire Line
	3600 3450 3600 3700
Wire Wire Line
	3700 3450 3700 3700
Wire Wire Line
	3800 3450 3800 3700
Wire Wire Line
	3900 3450 3900 3700
Wire Wire Line
	4000 3450 4000 3700
Wire Wire Line
	4100 3450 4100 3700
Wire Wire Line
	4200 3450 4200 3700
Text Label 3800 3650 1    50   ~ 0
RA0
Text Label 3900 3650 1    50   ~ 0
RA1
Text Label 3700 3650 1    50   ~ 0
RA2
Text Label 4000 3650 1    50   ~ 0
RA3
Text Label 3600 3650 1    50   ~ 0
RA4
Text Label 4100 3650 1    50   ~ 0
RA5
Text Label 3500 3650 1    50   ~ 0
RA6
Text Label 4200 3650 1    50   ~ 0
RA7
Entry Wire Line
	3400 3350 3500 3450
Entry Wire Line
	3500 3350 3600 3450
Entry Wire Line
	3600 3350 3700 3450
Entry Wire Line
	3700 3350 3800 3450
Entry Wire Line
	3800 3350 3900 3450
Entry Wire Line
	3900 3350 4000 3450
Entry Wire Line
	4000 3350 4100 3450
Entry Wire Line
	4100 3350 4200 3450
Entry Wire Line
	3500 3250 3400 3350
Entry Wire Line
	3600 3250 3500 3350
Entry Wire Line
	3700 3250 3600 3350
Entry Wire Line
	3800 3250 3700 3350
Entry Wire Line
	3900 3250 3800 3350
Entry Wire Line
	4000 3250 3900 3350
Entry Wire Line
	4100 3250 4000 3350
Entry Wire Line
	4200 3250 4100 3350
Wire Wire Line
	5150 2250 5300 2250
Connection ~ 5150 2250
$Comp
L power:VCC #PWR021
U 1 1 63E29794
P 9200 5600
F 0 "#PWR021" H 9200 5450 50  0001 C CNN
F 1 "VCC" H 9215 5773 50  0000 C CNN
F 2 "" H 9200 5600 50  0001 C CNN
F 3 "" H 9200 5600 50  0001 C CNN
	1    9200 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 63E2A3F3
P 10200 5600
F 0 "#PWR023" H 10200 5350 50  0001 C CNN
F 1 "GND" H 10205 5427 50  0000 C CNN
F 2 "" H 10200 5600 50  0001 C CNN
F 3 "" H 10200 5600 50  0001 C CNN
	1    10200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2150 8350 2150
Wire Wire Line
	8400 2400 8350 2400
$Comp
L power:VCC #PWR022
U 1 1 63FF6DF4
P 8400 2100
F 0 "#PWR022" H 8400 1950 50  0001 C CNN
F 1 "VCC" H 8415 2273 50  0000 C CNN
F 2 "" H 8400 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0001 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2100 8400 2150
Connection ~ 8400 2150
Wire Wire Line
	8400 2150 8400 2400
Connection ~ 8400 2400
Text GLabel 7550 2150 0    50   Output ~ 0
~WM
Text GLabel 7550 2400 0    50   Output ~ 0
~WR
Text GLabel 7550 2650 0    50   Output ~ 0
~RR
$Comp
L Device:R_Small_US R18
U 1 1 64087AAD
P 7950 2400
F 0 "R18" V 7800 2200 50  0000 L CNN
F 1 "R-RED" V 7900 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7950 2400 50  0001 C CNN
F 3 "~" H 7950 2400 50  0001 C CNN
	1    7950 2400
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D18
U 1 1 640885D1
P 8250 2400
F 0 "D18" H 8050 2550 50  0000 L CNN
F 1 "WRITE" H 8000 2450 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8250 2400 50  0001 C CNN
F 3 "~" V 8250 2400 50  0001 C CNN
	1    8250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2400 8050 2400
Wire Wire Line
	7550 2400 7850 2400
$Comp
L Device:R_Small_US R19
U 1 1 640ACEEF
P 7950 2650
F 0 "R19" V 7800 2450 50  0000 L CNN
F 1 "R-GRN" V 7900 2300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7950 2650 50  0001 C CNN
F 3 "~" H 7950 2650 50  0001 C CNN
	1    7950 2650
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D19
U 1 1 640ADA3D
P 8250 2650
F 0 "D19" H 8050 2800 50  0000 L CNN
F 1 "READ" H 8000 2700 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8250 2650 50  0001 C CNN
F 3 "~" V 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2650 8050 2650
Wire Wire Line
	7550 2650 7850 2650
Text Notes 2950 7500 0    50   ~ 0
READ SELECTS
Text Notes 4900 7500 0    50   ~ 0
WRITE SELECTS
Wire Wire Line
	2750 6900 2700 6900
Wire Wire Line
	2750 6400 2700 6400
Wire Wire Line
	2750 7000 2700 7000
Wire Wire Line
	2700 6800 2750 6800
Wire Wire Line
	2700 6700 2750 6700
Wire Wire Line
	2700 6600 2750 6600
Wire Wire Line
	2700 6500 2750 6500
Wire Wire Line
	2700 6300 2750 6300
NoConn ~ 2700 6300
Wire Wire Line
	4600 6300 4650 6300
Wire Wire Line
	4600 6600 4650 6600
Wire Wire Line
	4600 6700 4650 6700
Wire Wire Line
	4600 6800 4650 6800
Wire Wire Line
	4600 6900 4650 6900
Wire Wire Line
	4600 6400 4650 6400
Wire Wire Line
	4600 6500 4650 6500
NoConn ~ 4600 6300
NoConn ~ 2700 6500
NoConn ~ 900  4350
$Comp
L 74xx:74HCT00 U5
U 2 1 6473F41B
P 5200 1650
F 0 "U5" H 5150 1450 50  0000 C CNN
F 1 "74HCT00" H 5150 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 5200 1650 50  0001 C CNN
	2    5200 1650
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HCT00 U5
U 1 1 64741540
P 6000 1750
F 0 "U5" H 5950 1950 50  0000 C CNN
F 1 "74HCT00" H 6000 1550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 6000 1750 50  0001 C CNN
	1    6000 1750
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HCT00 U5
U 5 1 64743C19
P 9700 5600
F 0 "U5" V 9800 5600 50  0000 C CNN
F 1 "74HCT00" V 9600 5600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9700 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 9700 5600 50  0001 C CNN
	5    9700 5600
	0    -1   -1   0   
$EndComp
Text GLabel 1700 2550 2    50   Input ~ 0
RR3
Text GLabel 1700 2750 2    50   Input ~ 0
RR1
Text GLabel 1700 2850 2    50   Input ~ 0
RR0
Text GLabel 1700 2650 2    50   Input ~ 0
RR2
Text GLabel 6400 3250 2    50   Input ~ 0
M0
Text GLabel 900  3950 2    50   Input ~ 0
M1
Text GLabel 900  2050 2    50   Input ~ 0
D0
Text GLabel 900  1950 2    50   Input ~ 0
D1
Text GLabel 900  1850 2    50   Input ~ 0
D2
Text GLabel 900  1750 2    50   Input ~ 0
D3
Text GLabel 900  1650 2    50   Input ~ 0
D4
Text GLabel 900  1550 2    50   Input ~ 0
D5
Text GLabel 900  1450 2    50   Input ~ 0
D6
Text GLabel 900  1350 2    50   Input ~ 0
D7
Wire Wire Line
	8400 2400 8400 2650
Wire Wire Line
	8400 2650 8350 2650
Wire Wire Line
	10100 2450 10100 2500
Wire Wire Line
	9400 2450 9400 2500
$Comp
L 74xx:74HCT00 U5
U 3 1 61F9300A
P 9550 3600
F 0 "U5" H 9550 3925 50  0000 C CNN
F 1 "74HCT00" H 9550 3834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 9550 3600 50  0001 C CNN
	3    9550 3600
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HCT00 U5
U 4 1 61F93DE4
P 9550 4150
F 0 "U5" H 9550 4475 50  0000 C CNN
F 1 "74HCT00" H 9550 4384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 9550 4150 50  0001 C CNN
	4    9550 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 3500 9850 3700
Connection ~ 9850 3700
Wire Wire Line
	9850 3700 9850 4050
Connection ~ 9850 4050
Wire Wire Line
	9850 4050 9850 4250
Connection ~ 9850 4250
Wire Wire Line
	9850 4250 9850 4400
$Comp
L power:GND #PWR0103
U 1 1 61FC337E
P 9850 4400
F 0 "#PWR0103" H 9850 4150 50  0001 C CNN
F 1 "GND" H 9855 4227 50  0000 C CNN
F 2 "" H 9850 4400 50  0001 C CNN
F 3 "" H 9850 4400 50  0001 C CNN
	1    9850 4400
	1    0    0    -1  
$EndComp
NoConn ~ 9250 3600
NoConn ~ 9250 4150
Wire Wire Line
	5150 2250 5150 2800
Wire Wire Line
	4400 2750 4400 2950
Text GLabel 6400 2950 2    50   Input ~ 0
M1
Wire Wire Line
	4300 2750 4300 3250
Wire Wire Line
	6400 2950 6250 2950
Wire Wire Line
	6400 3250 6250 3250
Wire Wire Line
	3900 2750 3900 3250
Text Label 4300 2950 1    50   ~ 0
RA8
Text Label 4400 2950 1    50   ~ 0
RA9
$Comp
L Device:R_Small_US R21
U 1 1 622DBAA3
P 5750 2700
F 0 "R21" V 5700 2750 50  0000 L CNN
F 1 "10K" V 5700 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5750 2700 50  0001 C CNN
F 3 "~" H 5750 2700 50  0001 C CNN
	1    5750 2700
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 622C58EE
P 5550 2700
F 0 "R20" V 5500 2750 50  0000 L CNN
F 1 "10K" V 5500 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 2700 50  0001 C CNN
F 3 "~" H 5550 2700 50  0001 C CNN
	1    5550 2700
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 61EE119B
P 5550 5000
F 0 "R16" V 5400 4750 50  0000 L CNN
F 1 "R-GRN" V 5500 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 5000 50  0001 C CNN
F 3 "~" H 5550 5000 50  0001 C CNN
	1    5550 5000
	0    -1   1    0   
$EndComp
Wire Wire Line
	5450 4600 5200 4600
Wire Wire Line
	5450 4800 5200 4800
Text Label 5250 4600 0    50   ~ 0
RA5
Text Label 5250 4800 0    50   ~ 0
RA6
Entry Wire Line
	5200 4600 5100 4500
Entry Wire Line
	5200 4800 5100 4700
Entry Wire Line
	5200 5000 5100 4900
Entry Wire Line
	5200 4400 5100 4300
Entry Wire Line
	5200 4200 5100 4100
Entry Wire Line
	5200 4000 5100 3900
Entry Wire Line
	5200 3800 5100 3700
Entry Wire Line
	5200 3600 5100 3500
Text Label 5250 5000 0    50   ~ 0
RA7
Text Label 5250 4400 0    50   ~ 0
RA4
Text Label 5250 4200 0    50   ~ 0
RA3
Text Label 5250 4000 0    50   ~ 0
RA2
Text Label 5250 3800 0    50   ~ 0
RA1
Text Label 5250 3600 0    50   ~ 0
RA0
Wire Wire Line
	5450 5000 5200 5000
Wire Wire Line
	5450 4400 5200 4400
Wire Wire Line
	5450 4200 5200 4200
Wire Wire Line
	5450 4000 5200 4000
Wire Wire Line
	5450 3800 5200 3800
Wire Wire Line
	5450 3600 5200 3600
$Comp
L Device:LED_Small D9
U 1 1 61956E8A
P 5900 3600
F 0 "D9" H 5700 3750 50  0000 L CNN
F 1 "RA0" H 5700 3650 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 3600 50  0001 C CNN
F 3 "~" V 5900 3600 50  0001 C CNN
	1    5900 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 619574D4
P 5550 3600
F 0 "R9" V 5400 3350 50  0000 L CNN
F 1 "R-GRN" V 5500 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 3600 50  0001 C CNN
F 3 "~" H 5550 3600 50  0001 C CNN
	1    5550 3600
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 619B94BA
P 6300 5050
F 0 "#PWR08" H 6300 4800 50  0001 C CNN
F 1 "GND" H 6305 4877 50  0000 C CNN
F 2 "" H 6300 5050 50  0001 C CNN
F 3 "" H 6300 5050 50  0001 C CNN
	1    6300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3600 5800 3600
Wire Wire Line
	6300 3600 6000 3600
$Comp
L Device:LED_Small D10
U 1 1 61EBDB02
P 5900 3800
F 0 "D10" H 5700 3950 50  0000 L CNN
F 1 "RA1" H 5700 3850 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 3800 50  0001 C CNN
F 3 "~" V 5900 3800 50  0001 C CNN
	1    5900 3800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 61EBE162
P 5550 3800
F 0 "R10" V 5400 3550 50  0000 L CNN
F 1 "R-GRN" V 5500 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 3800 50  0001 C CNN
F 3 "~" H 5550 3800 50  0001 C CNN
	1    5550 3800
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 3800 5800 3800
Wire Wire Line
	6300 3800 6000 3800
$Comp
L Device:LED_Small D11
U 1 1 61ECEF23
P 5900 4000
F 0 "D11" H 5700 4150 50  0000 L CNN
F 1 "RA2" H 5700 4050 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 4000 50  0001 C CNN
F 3 "~" V 5900 4000 50  0001 C CNN
	1    5900 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 61ECF5AD
P 5550 4000
F 0 "R11" V 5400 3750 50  0000 L CNN
F 1 "R-GRN" V 5500 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 4000 50  0001 C CNN
F 3 "~" H 5550 4000 50  0001 C CNN
	1    5550 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 4000 5800 4000
Wire Wire Line
	6300 4000 6000 4000
$Comp
L Device:LED_Small D12
U 1 1 61ECF5B9
P 5900 4200
F 0 "D12" H 5700 4350 50  0000 L CNN
F 1 "RA3" H 5700 4250 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 4200 50  0001 C CNN
F 3 "~" V 5900 4200 50  0001 C CNN
	1    5900 4200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 61ECF5C3
P 5550 4200
F 0 "R12" V 5400 3950 50  0000 L CNN
F 1 "R-GRN" V 5500 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 4200 50  0001 C CNN
F 3 "~" H 5550 4200 50  0001 C CNN
	1    5550 4200
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 4200 5800 4200
Wire Wire Line
	6300 4200 6000 4200
$Comp
L Device:LED_Small D13
U 1 1 61EE0A7B
P 5900 4400
F 0 "D13" H 5700 4550 50  0000 L CNN
F 1 "RA4" H 5700 4450 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 4400 50  0001 C CNN
F 3 "~" V 5900 4400 50  0001 C CNN
	1    5900 4400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 61EE1159
P 5550 4400
F 0 "R13" V 5400 4150 50  0000 L CNN
F 1 "R-GRN" V 5500 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 4400 50  0001 C CNN
F 3 "~" H 5550 4400 50  0001 C CNN
	1    5550 4400
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 4400 5800 4400
Wire Wire Line
	6300 4400 6000 4400
$Comp
L Device:LED_Small D14
U 1 1 61EE1165
P 5900 4600
F 0 "D14" H 5700 4750 50  0000 L CNN
F 1 "RA5" H 5700 4650 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 4600 50  0001 C CNN
F 3 "~" V 5900 4600 50  0001 C CNN
	1    5900 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 61EE116F
P 5550 4600
F 0 "R14" V 5400 4350 50  0000 L CNN
F 1 "R-GRN" V 5500 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 4600 50  0001 C CNN
F 3 "~" H 5550 4600 50  0001 C CNN
	1    5550 4600
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 4600 5800 4600
Wire Wire Line
	6300 4600 6000 4600
$Comp
L Device:LED_Small D15
U 1 1 61EE117B
P 5900 4800
F 0 "D15" H 5700 4950 50  0000 L CNN
F 1 "RA6" H 5700 4850 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 4800 50  0001 C CNN
F 3 "~" V 5900 4800 50  0001 C CNN
	1    5900 4800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 61EE1185
P 5550 4800
F 0 "R15" V 5400 4550 50  0000 L CNN
F 1 "R-GRN" V 5500 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5550 4800 50  0001 C CNN
F 3 "~" H 5550 4800 50  0001 C CNN
	1    5550 4800
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 4800 5800 4800
Wire Wire Line
	6300 4800 6000 4800
$Comp
L Device:LED_Small D16
U 1 1 61EE1191
P 5900 5000
F 0 "D16" H 5700 5150 50  0000 L CNN
F 1 "RA7" H 5700 5050 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 5000 50  0001 C CNN
F 3 "~" V 5900 5000 50  0001 C CNN
	1    5900 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 5000 5800 5000
Wire Wire Line
	6300 5000 6000 5000
Wire Wire Line
	6300 3600 6300 3800
Connection ~ 6300 3800
Wire Wire Line
	6300 3800 6300 4000
Connection ~ 6300 4000
Wire Wire Line
	6300 4000 6300 4200
Connection ~ 6300 4200
Wire Wire Line
	6300 4200 6300 4400
Connection ~ 6300 4400
Wire Wire Line
	6300 4400 6300 4600
Connection ~ 6300 4600
Wire Wire Line
	6300 4600 6300 4800
Connection ~ 6300 4800
Wire Wire Line
	6300 4800 6300 5000
Connection ~ 6300 5000
Wire Wire Line
	6300 5000 6300 5050
$Comp
L power:VCC #PWR0104
U 1 1 625110B9
P 5750 2500
F 0 "#PWR0104" H 5750 2350 50  0001 C CNN
F 1 "VCC" H 5765 2673 50  0000 C CNN
F 2 "" H 5750 2500 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 6255D910
P 6050 2950
F 0 "JP1" H 6200 3000 50  0000 C CNN
F 1 "M1" H 6050 3094 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6050 2950 50  0001 C CNN
F 3 "~" H 6050 2950 50  0001 C CNN
	1    6050 2950
	-1   0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 625D16BB
P 6050 3250
F 0 "JP2" H 6200 3300 50  0000 C CNN
F 1 "M2" H 6050 3394 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6050 3250 50  0001 C CNN
F 3 "~" H 6050 3250 50  0001 C CNN
	1    6050 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 3250 5550 3250
Wire Wire Line
	4400 2950 5750 2950
Wire Wire Line
	5750 2600 5750 2500
Wire Wire Line
	5550 2600 5550 2500
Wire Wire Line
	5550 2500 5750 2500
Connection ~ 5750 2500
Wire Wire Line
	5750 2800 5750 2950
Connection ~ 5750 2950
Wire Wire Line
	5750 2950 5850 2950
Wire Wire Line
	5550 2800 5550 3250
Connection ~ 5550 3250
Wire Wire Line
	5550 3250 5850 3250
Text GLabel 900  4050 2    50   Input ~ 0
M0
Wire Wire Line
	1800 7300 1750 7300
Wire Wire Line
	1800 7400 1750 7400
Wire Wire Line
	1800 7500 1750 7500
Wire Wire Line
	1800 7600 1750 7600
Wire Wire Line
	1800 6900 1750 6900
Wire Wire Line
	1800 7000 1750 7000
Wire Wire Line
	1800 7100 1750 7100
Wire Wire Line
	1800 7200 1750 7200
NoConn ~ 1700 4750
NoConn ~ 1700 4850
NoConn ~ 900  4750
Text Label 4800 1650 0    50   ~ 0
~WE
Text Label 4600 1600 3    50   ~ 0
~OE
Text Label 4400 1600 3    50   ~ 0
~CS
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 62145497
P 1550 7200
F 0 "J6" H 1468 7817 50  0000 C CNN
F 1 "Conn_02x08" H 1468 7726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
	1    1550 7200
	-1   0    0    -1  
$EndComp
Text GLabel 4600 6600 0    50   Output ~ 0
~W3
Text GLabel 4600 6700 0    50   Output ~ 0
~W4
Text GLabel 4600 6800 0    50   Output ~ 0
~W5
Text GLabel 4600 6900 0    50   Output ~ 0
~W6
Text GLabel 4600 7000 0    50   Output ~ 0
~W7
Text GLabel 2700 6600 0    50   Output ~ 0
~R3
Text GLabel 2700 6700 0    50   Output ~ 0
~R4
Text GLabel 2700 6800 0    50   Output ~ 0
~R5
Text GLabel 2700 6900 0    50   Output ~ 0
~R6
Text GLabel 2700 7000 0    50   Output ~ 0
~R7
Text GLabel 950  6900 2    50   Output ~ 0
~R3
Text GLabel 950  7000 2    50   Output ~ 0
~R4
Text GLabel 950  7100 2    50   Output ~ 0
~R5
Text GLabel 950  7200 2    50   Output ~ 0
~R6
Text GLabel 950  7300 2    50   Output ~ 0
~W3
Text GLabel 950  7400 2    50   Output ~ 0
~W4
Text GLabel 950  7500 2    50   Output ~ 0
~W5
Text GLabel 950  7600 2    50   Output ~ 0
~W6
Text GLabel 1800 6900 2    50   Output ~ 0
~R4
Text GLabel 1800 7000 2    50   Output ~ 0
~R5
Text GLabel 1800 7100 2    50   Output ~ 0
~R6
Text GLabel 1800 7200 2    50   Output ~ 0
~R7
Text GLabel 1800 7300 2    50   Output ~ 0
~W4
Text GLabel 1800 7400 2    50   Output ~ 0
~W5
Text GLabel 1800 7500 2    50   Output ~ 0
~W6
Text GLabel 1800 7600 2    50   Output ~ 0
~W7
Text Label 5550 1750 0    50   ~ 0
WR
Wire Bus Line
	5100 3350 5100 5100
Wire Bus Line
	3300 3350 5100 3350
$EndSCHEMATC
