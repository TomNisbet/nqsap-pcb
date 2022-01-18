EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NQSAP-PCB Output LED"
Date "2022-01-17"
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
P 700 2800
F 0 "J1" H 700 675 50  0000 C CNN
F 1 "Bus" H 675 575 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 700 2800 50  0001 C CNN
F 3 "~" H 700 2800 50  0001 C CNN
	1    700  2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 850 700
F 0 "#PWR01" H 850 450 50  0001 C CNN
F 1 "GND" H 855 527 50  0000 C CNN
F 2 "" H 850 700 50  0001 C CNN
F 3 "" H 850 700 50  0001 C CNN
	1    850  700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 616326CE
P 1150 4800
F 0 "#PWR02" H 1150 4650 50  0001 C CNN
F 1 "+5V" H 1165 4973 50  0000 C CNN
F 2 "" H 1150 4800 50  0001 C CNN
F 3 "" H 1150 4800 50  0001 C CNN
	1    1150 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	950  1700 900  1700
Wire Wire Line
	950  900  900  900 
Wire Wire Line
	950  1600 900  1600
Wire Wire Line
	950  1500 900  1500
Wire Wire Line
	950  1400 900  1400
Wire Wire Line
	950  1300 900  1300
Wire Wire Line
	950  1200 900  1200
Wire Wire Line
	950  1100 900  1100
Wire Wire Line
	950  1000 900  1000
Wire Wire Line
	950  2200 900  2200
Wire Wire Line
	950  2300 900  2300
Wire Wire Line
	950  2400 900  2400
Wire Wire Line
	950  2500 900  2500
Wire Wire Line
	950  2600 900  2600
Wire Wire Line
	950  2700 900  2700
Wire Wire Line
	950  2800 900  2800
Wire Wire Line
	950  2900 900  2900
Wire Wire Line
	950  4100 900  4100
Wire Wire Line
	950  4000 900  4000
Wire Wire Line
	950  3900 900  3900
Wire Wire Line
	950  3800 900  3800
Wire Wire Line
	950  3700 900  3700
Wire Wire Line
	950  3600 900  3600
Wire Wire Line
	950  3500 900  3500
Wire Wire Line
	950  3400 900  3400
Wire Wire Line
	950  3300 900  3300
Wire Wire Line
	950  3200 900  3200
Wire Wire Line
	950  3100 900  3100
Wire Wire Line
	950  3000 900  3000
Wire Wire Line
	950  2100 900  2100
Wire Wire Line
	950  2000 900  2000
Wire Wire Line
	950  1900 900  1900
Wire Wire Line
	950  1800 900  1800
Text GLabel 950  4700 2    50   Input ~ 0
~RST
Wire Wire Line
	1150 4800 900  4800
Wire Wire Line
	850  700  950  700 
Wire Wire Line
	950  700  950  900 
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 61632728
P 1500 2800
F 0 "J2" H 1500 675 50  0000 C CNN
F 1 "Bus" H 1475 575 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 1500 2800 50  0001 C CNN
F 3 "~" H 1500 2800 50  0001 C CNN
	1    1500 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61632732
P 1650 700
F 0 "#PWR03" H 1650 450 50  0001 C CNN
F 1 "GND" H 1655 527 50  0000 C CNN
F 2 "" H 1650 700 50  0001 C CNN
F 3 "" H 1650 700 50  0001 C CNN
	1    1650 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 6163273C
P 1950 4800
F 0 "#PWR04" H 1950 4650 50  0001 C CNN
F 1 "+5V" H 1965 4973 50  0000 C CNN
F 2 "" H 1950 4800 50  0001 C CNN
F 3 "" H 1950 4800 50  0001 C CNN
	1    1950 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1700 1700 1700
Wire Wire Line
	1750 900  1700 900 
Wire Wire Line
	1750 1600 1700 1600
Wire Wire Line
	1750 1500 1700 1500
Wire Wire Line
	1750 1400 1700 1400
Wire Wire Line
	1750 1300 1700 1300
Wire Wire Line
	1750 1200 1700 1200
Wire Wire Line
	1750 1100 1700 1100
Wire Wire Line
	1750 1000 1700 1000
Wire Wire Line
	1750 2200 1700 2200
Wire Wire Line
	1750 2300 1700 2300
Wire Wire Line
	1750 2400 1700 2400
Wire Wire Line
	1750 2500 1700 2500
Wire Wire Line
	1750 2600 1700 2600
Wire Wire Line
	1750 2700 1700 2700
Wire Wire Line
	1750 2800 1700 2800
Wire Wire Line
	1750 2900 1700 2900
Wire Wire Line
	1750 4500 1700 4500
Wire Wire Line
	1750 4400 1700 4400
Wire Wire Line
	1750 4300 1700 4300
Wire Wire Line
	1750 4200 1700 4200
Wire Wire Line
	1750 4100 1700 4100
Wire Wire Line
	1750 4000 1700 4000
Wire Wire Line
	1750 3900 1700 3900
Wire Wire Line
	1750 3800 1700 3800
Wire Wire Line
	1750 3700 1700 3700
Wire Wire Line
	1750 3600 1700 3600
Wire Wire Line
	1750 3500 1700 3500
Wire Wire Line
	1750 3400 1700 3400
Wire Wire Line
	1750 3300 1700 3300
Wire Wire Line
	1750 3200 1700 3200
Wire Wire Line
	1750 3100 1700 3100
Wire Wire Line
	1750 3000 1700 3000
Wire Wire Line
	1750 2100 1700 2100
Wire Wire Line
	1750 2000 1700 2000
Wire Wire Line
	1750 1900 1700 1900
Wire Wire Line
	1750 1800 1700 1800
Wire Wire Line
	1750 4700 1700 4700
Wire Wire Line
	1750 4600 1700 4600
Wire Wire Line
	1950 4800 1700 4800
Wire Wire Line
	1650 700  1750 700 
Wire Wire Line
	1750 700  1750 900 
Text GLabel 950  2000 2    50   Input ~ 0
WR3
Text GLabel 950  2100 2    50   Input ~ 0
WR2
Text GLabel 950  2200 2    50   Input ~ 0
WR1
Text GLabel 950  2300 2    50   Input ~ 0
WR0
Text GLabel 950  1200 2    50   Input ~ 0
D7
Text GLabel 950  1300 2    50   Input ~ 0
D6
Text GLabel 950  1400 2    50   Input ~ 0
D5
Text GLabel 950  1500 2    50   Input ~ 0
D4
Text GLabel 950  1600 2    50   Input ~ 0
D3
Text GLabel 950  1700 2    50   Input ~ 0
D2
Text GLabel 950  1800 2    50   Input ~ 0
D1
Text GLabel 950  1900 2    50   Input ~ 0
D0
Wire Wire Line
	900  4200 950  4200
Wire Wire Line
	900  4300 950  4300
Wire Wire Line
	900  4400 950  4400
Wire Wire Line
	900  4500 950  4500
Wire Wire Line
	900  4600 950  4600
Wire Wire Line
	900  4700 950  4700
$Comp
L Device:C C1
U 1 1 640ECCCC
P 1700 6350
F 0 "C1" V 1550 6550 50  0000 C CNN
F 1 "0.1uF" V 1650 6550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1738 6200 50  0001 C CNN
F 3 "~" H 1700 6350 50  0001 C CNN
	1    1700 6350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 640EE08A
P 2050 6950
F 0 "#PWR06" H 2050 6700 50  0001 C CNN
F 1 "GND" H 2055 6777 50  0000 C CNN
F 2 "" H 2050 6950 50  0001 C CNN
F 3 "" H 2050 6950 50  0001 C CNN
	1    2050 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 640EE95F
P 1350 6150
F 0 "#PWR05" H 1350 6000 50  0001 C CNN
F 1 "+5V" H 1365 6323 50  0000 C CNN
F 2 "" H 1350 6150 50  0001 C CNN
F 3 "" H 1350 6150 50  0001 C CNN
	1    1350 6150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 640EF226
P 2050 6150
F 0 "#FLG02" H 2050 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 6323 50  0000 C CNN
F 2 "" H 2050 6150 50  0001 C CNN
F 3 "~" H 2050 6150 50  0001 C CNN
	1    2050 6150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 640EFA22
P 1350 6950
F 0 "#FLG01" H 1350 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 7123 50  0000 C CNN
F 2 "" H 1350 6950 50  0001 C CNN
F 3 "~" H 1350 6950 50  0001 C CNN
	1    1350 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 6150 1350 6350
Wire Wire Line
	2050 6150 2050 6350
Wire Wire Line
	1850 6350 2050 6350
Connection ~ 2050 6350
Wire Wire Line
	2050 6350 2050 6600
Wire Wire Line
	1550 6350 1350 6350
Connection ~ 1350 6350
Wire Wire Line
	1350 6350 1350 6600
$Comp
L Device:C C2
U 1 1 64103212
P 1700 6600
F 0 "C2" V 1550 6800 50  0000 C CNN
F 1 "0.1uF" V 1650 6800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1738 6450 50  0001 C CNN
F 3 "~" H 1700 6600 50  0001 C CNN
	1    1700 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 6600 1350 6600
Connection ~ 1350 6600
Wire Wire Line
	1850 6600 2050 6600
Connection ~ 2050 6600
NoConn ~ 1750 4500
NoConn ~ 950  4500
NoConn ~ 950  1000
NoConn ~ 950  1100
NoConn ~ 1750 1000
NoConn ~ 1750 1100
Wire Wire Line
	1350 6600 1350 6950
Wire Wire Line
	2050 6600 2050 6950
$Comp
L 74xx:74LS138 U2
U 1 1 61CAC293
P 8300 4100
F 0 "U2" V 8300 4150 50  0000 R CNN
F 1 "74HCT138" V 8200 4250 50  0000 R CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8300 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 8300 4100 50  0001 C CNN
	1    8300 4100
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 61CAD40A
P 5800 4100
F 0 "U1" V 5600 4150 50  0000 R CNN
F 1 "ATmega328P" V 5500 4400 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5800 4100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5800 4100 50  0001 C CNN
	1    5800 4100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 61CB24F7
P 5200 6550
F 0 "J4" V 5417 6496 50  0000 C CNN
F 1 "7-Segment Common Anode Display" V 5326 6496 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 5200 6550 50  0001 C CNN
F 3 "~" H 5200 6550 50  0001 C CNN
	1    5200 6550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 61CB3569
P 7750 3350
F 0 "R1" V 7545 3350 50  0000 C CNN
F 1 "R_RED" V 7636 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7750 3350 50  0001 C CNN
F 3 "~" H 7750 3350 50  0001 C CNN
	1    7750 3350
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 61CB4363
P 8050 3350
F 0 "D1" H 8050 3585 50  0000 C CNN
F 1 "LATCH" H 8050 3494 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8050 3350 50  0001 C CNN
F 3 "~" V 8050 3350 50  0001 C CNN
	1    8050 3350
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 61CB4A34
P 5650 2650
F 0 "SW1" H 5650 2935 50  0000 C CNN
F 1 "Mode 0" H 5650 2844 50  0000 C CNN
F 2 "digikey-kicad-library:Switch_Slide_11.6x4mm_EG1218" H 5650 2650 50  0001 C CNN
F 3 "~" H 5650 2650 50  0001 C CNN
	1    5650 2650
	1    0    0    -1  
$EndComp
Text GLabel 3950 6850 0    50   Input ~ 0
L1
Text GLabel 3950 6950 0    50   Input ~ 0
L2
Text GLabel 3950 7050 0    50   Input ~ 0
L3
Text GLabel 3950 7150 0    50   Input ~ 0
L4
Text GLabel 5100 6800 3    50   Input ~ 0
SA
Text GLabel 5200 6800 3    50   Input ~ 0
SB
Text GLabel 5300 6800 3    50   Input ~ 0
SC
Wire Wire Line
	5100 6750 5100 6800
Wire Wire Line
	5200 6750 5200 6800
Wire Wire Line
	5300 6750 5300 6800
Text GLabel 5400 6800 3    50   Input ~ 0
SD
Text GLabel 5500 6800 3    50   Input ~ 0
SE
Text GLabel 5600 6800 3    50   Input ~ 0
SF
Wire Wire Line
	5400 6750 5400 6800
Wire Wire Line
	5500 6750 5500 6800
Wire Wire Line
	5600 6750 5600 6800
Text GLabel 5700 6800 3    50   Input ~ 0
SG
Wire Wire Line
	5700 6750 5700 6800
Wire Wire Line
	5800 6800 5800 6750
NoConn ~ 5800 6800
Text GLabel 5500 3450 1    50   Input ~ 0
L1
Text GLabel 5600 3450 1    50   Input ~ 0
L2
Text GLabel 5700 3450 1    50   Input ~ 0
L3
Text GLabel 5800 3450 1    50   Input ~ 0
L4
Text GLabel 6300 3450 1    50   Input ~ 0
SA
Text GLabel 6400 3450 1    50   Input ~ 0
SB
Text GLabel 6500 3450 1    50   Input ~ 0
SC
Wire Wire Line
	6300 3500 6300 3450
Wire Wire Line
	6400 3500 6400 3450
Wire Wire Line
	6500 3500 6500 3450
Text GLabel 6600 3450 1    50   Input ~ 0
SD
Text GLabel 6700 3450 1    50   Input ~ 0
SE
Text GLabel 6800 3450 1    50   Input ~ 0
SF
Wire Wire Line
	6600 3500 6600 3450
Wire Wire Line
	6700 3500 6700 3450
Wire Wire Line
	6800 3500 6800 3450
Text GLabel 6900 3450 1    50   Input ~ 0
SG
Wire Wire Line
	6900 3500 6900 3450
Wire Wire Line
	5800 3450 5800 3500
Wire Wire Line
	5700 3450 5700 3500
Wire Wire Line
	5600 3450 5600 3500
Wire Wire Line
	5500 3450 5500 3500
Text GLabel 4600 3450 1    50   Input ~ 0
D0
Wire Wire Line
	4800 3450 4800 3500
Text GLabel 4700 3450 1    50   Input ~ 0
D1
Wire Wire Line
	4900 3450 4900 3500
Text GLabel 4800 3450 1    50   Input ~ 0
D2
Wire Wire Line
	5000 3450 5000 3500
Text GLabel 4900 3450 1    50   Input ~ 0
D3
Wire Wire Line
	5100 3450 5100 3500
Text GLabel 5000 3450 1    50   Input ~ 0
D4
Wire Wire Line
	5200 3450 5200 3500
Text GLabel 5100 3450 1    50   Input ~ 0
D5
Wire Wire Line
	5300 3450 5300 3500
Text GLabel 5200 3450 1    50   Input ~ 0
D6
Text GLabel 5300 3450 1    50   Input ~ 0
D7
Wire Wire Line
	4600 3450 4600 3500
Wire Wire Line
	4700 3450 4700 3500
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 61D37AE7
P 9650 2000
F 0 "J3" H 9700 2317 50  0000 C CNN
F 1 "AVR PGM" H 9700 2226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9650 2000 50  0001 C CNN
F 3 "~" H 9650 2000 50  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 61D387B8
P 10000 1850
F 0 "#PWR010" H 10000 1700 50  0001 C CNN
F 1 "+5V" H 10015 2023 50  0000 C CNN
F 2 "" H 10000 1850 50  0001 C CNN
F 3 "" H 10000 1850 50  0001 C CNN
	1    10000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61D39294
P 10000 2150
F 0 "#PWR011" H 10000 1900 50  0001 C CNN
F 1 "GND" H 10005 1977 50  0000 C CNN
F 2 "" H 10000 2150 50  0001 C CNN
F 3 "" H 10000 2150 50  0001 C CNN
	1    10000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1850 10000 1900
Wire Wire Line
	10000 1900 9950 1900
Wire Wire Line
	10000 2150 10000 2100
Wire Wire Line
	10000 2100 9950 2100
Text GLabel 10000 2000 2    50   Input ~ 0
MOSI
Text GLabel 9400 1900 0    50   Input ~ 0
MISO
Text GLabel 9400 2000 0    50   Input ~ 0
SCK
Text GLabel 9400 2100 0    50   Input ~ 0
~RST
Wire Wire Line
	10000 2000 9950 2000
Wire Wire Line
	9450 1900 9400 1900
Wire Wire Line
	9450 2000 9400 2000
Wire Wire Line
	9450 2100 9400 2100
Text GLabel 6100 3450 1    50   Input ~ 0
~RST
Wire Wire Line
	6100 3450 6100 3500
$Comp
L power:+5V #PWR09
U 1 1 61D686F1
P 7650 4050
F 0 "#PWR09" H 7650 3900 50  0001 C CNN
F 1 "+5V" H 7665 4223 50  0000 C CNN
F 2 "" H 7650 4050 50  0001 C CNN
F 3 "" H 7650 4050 50  0001 C CNN
	1    7650 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61D68D3F
P 9050 4750
F 0 "#PWR012" H 9050 4500 50  0001 C CNN
F 1 "GND" H 9055 4577 50  0000 C CNN
F 2 "" H 9050 4750 50  0001 C CNN
F 3 "" H 9050 4750 50  0001 C CNN
	1    9050 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61D69150
P 7350 4150
F 0 "#PWR08" H 7350 3900 50  0001 C CNN
F 1 "GND" H 7355 3977 50  0000 C CNN
F 2 "" H 7350 4150 50  0001 C CNN
F 3 "" H 7350 4150 50  0001 C CNN
	1    7350 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 61D69686
P 4250 3950
F 0 "#PWR07" H 4250 3800 50  0001 C CNN
F 1 "+5V" H 4265 4123 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4100 4250 4100
Wire Wire Line
	4250 4100 4250 4000
Wire Wire Line
	4300 4000 4250 4000
Connection ~ 4250 4000
Wire Wire Line
	4250 4000 4250 3950
Wire Wire Line
	7300 4100 7350 4100
Wire Wire Line
	7350 4100 7350 4150
Wire Wire Line
	7650 4050 7650 4100
Wire Wire Line
	7650 4100 7700 4100
Wire Wire Line
	9000 4100 9050 4100
Wire Wire Line
	9050 4100 9050 4700
Text GLabel 9650 1200 0    50   Input ~ 0
MISO
Text GLabel 9650 1300 0    50   Input ~ 0
SCK
Wire Wire Line
	9750 1100 9650 1100
Text GLabel 9750 1100 2    50   Input ~ 0
D3
Text GLabel 9750 1200 2    50   Input ~ 0
D4
Text GLabel 9750 1300 2    50   Input ~ 0
D5
Wire Wire Line
	9650 1200 9750 1200
Wire Wire Line
	9650 1300 9750 1300
Text GLabel 9650 1100 0    50   Input ~ 0
MOSI
Wire Wire Line
	8100 4650 8100 4600
Wire Wire Line
	8000 4650 8000 4600
Text GLabel 8000 4650 3    50   Input ~ 0
WR0
Text GLabel 8100 4650 3    50   Input ~ 0
WR1
Text GLabel 8200 4650 3    50   Input ~ 0
WR2
Text GLabel 8500 4650 3    50   Input ~ 0
WR3
Wire Wire Line
	8200 4650 8200 4600
Wire Wire Line
	8500 4650 8500 4600
NoConn ~ 8700 3600
NoConn ~ 8600 3600
NoConn ~ 8000 3600
NoConn ~ 8100 3600
NoConn ~ 8300 3600
NoConn ~ 8400 3600
NoConn ~ 8500 3600
Wire Wire Line
	7000 3500 7000 3450
Wire Wire Line
	7000 3450 8200 3450
Wire Wire Line
	8200 3450 8200 3600
Text Label 7350 3450 2    50   ~ 0
~latch
$Comp
L power:+5V #PWR0101
U 1 1 61DFCF0C
P 7500 3250
F 0 "#PWR0101" H 7500 3100 50  0001 C CNN
F 1 "+5V" H 7515 3423 50  0000 C CNN
F 2 "" H 7500 3250 50  0001 C CNN
F 3 "" H 7500 3250 50  0001 C CNN
	1    7500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3250 7500 3350
Wire Wire Line
	7500 3350 7650 3350
Wire Wire Line
	7850 3350 7950 3350
Wire Wire Line
	8150 3350 8200 3350
Wire Wire Line
	8200 3350 8200 3450
Connection ~ 8200 3450
$Comp
L Switch:SW_SPDT SW2
U 1 1 61E2934C
P 6250 2650
F 0 "SW2" H 6250 2935 50  0000 C CNN
F 1 "Mode 1" H 6250 2844 50  0000 C CNN
F 2 "digikey-kicad-library:Switch_Slide_11.6x4mm_EG1218" H 6250 2650 50  0001 C CNN
F 3 "~" H 6250 2650 50  0001 C CNN
	1    6250 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 2550 5950 2550
Wire Wire Line
	5850 2750 5950 2750
$Comp
L power:+5V #PWR0102
U 1 1 61E366B2
P 5950 2500
F 0 "#PWR0102" H 5950 2350 50  0001 C CNN
F 1 "+5V" H 5965 2673 50  0000 C CNN
F 2 "" H 5950 2500 50  0001 C CNN
F 3 "" H 5950 2500 50  0001 C CNN
	1    5950 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61E36E55
P 5950 2800
F 0 "#PWR0103" H 5950 2550 50  0001 C CNN
F 1 "GND" H 5955 2627 50  0000 C CNN
F 2 "" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2800 5950 2750
Connection ~ 5950 2750
Wire Wire Line
	5950 2750 6050 2750
Wire Wire Line
	5950 2500 5950 2550
Connection ~ 5950 2550
Wire Wire Line
	5950 2550 6050 2550
Wire Wire Line
	5900 3500 5900 3150
Wire Wire Line
	5900 3150 5400 3150
Wire Wire Line
	5400 3150 5400 2650
Wire Wire Line
	5400 2650 5450 2650
Wire Wire Line
	6000 3500 6000 3150
Wire Wire Line
	6000 3150 6500 3150
Wire Wire Line
	6500 3150 6500 2650
Wire Wire Line
	6500 2650 6450 2650
Text Label 5800 3150 2    50   ~ 0
mode0
Text Label 6350 3150 2    50   ~ 0
mode1
NoConn ~ 4600 4700
$Comp
L Device:R_Small_US R2
U 1 1 61E72261
P 4250 6850
F 0 "R2" V 4200 6700 50  0000 C CNN
F 1 "R_SEG" V 4200 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4250 6850 50  0001 C CNN
F 3 "~" H 4250 6850 50  0001 C CNN
	1    4250 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 6850 4150 6850
$Comp
L Device:R_Small_US R3
U 1 1 61EC37B4
P 4250 6950
F 0 "R3" V 4200 6800 50  0000 C CNN
F 1 "R_SEG" V 4200 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4250 6950 50  0001 C CNN
F 3 "~" H 4250 6950 50  0001 C CNN
	1    4250 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 6950 4150 6950
$Comp
L Device:R_Small_US R4
U 1 1 61ED38E6
P 4250 7050
F 0 "R4" V 4200 6900 50  0000 C CNN
F 1 "R_SEG" V 4200 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4250 7050 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
	1    4250 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 7050 4150 7050
$Comp
L Device:R_Small_US R5
U 1 1 61ED3CCF
P 4250 7150
F 0 "R5" V 4200 7000 50  0000 C CNN
F 1 "R_SEG" V 4200 7350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4250 7150 50  0001 C CNN
F 3 "~" H 4250 7150 50  0001 C CNN
	1    4250 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 7150 4150 7150
Wire Wire Line
	4700 6750 4700 6850
Wire Wire Line
	4700 6850 4350 6850
Wire Wire Line
	4350 6950 4800 6950
Wire Wire Line
	4800 6950 4800 6750
Wire Wire Line
	4900 6750 4900 7050
Wire Wire Line
	4900 7050 4350 7050
Wire Wire Line
	5000 6750 5000 7150
Wire Wire Line
	5000 7150 4350 7150
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 61F12488
P 4100 6050
F 0 "J5" H 4180 6042 50  0000 L CNN
F 1 "support" H 4180 5951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4100 6050 50  0001 C CNN
F 3 "~" H 4100 6050 50  0001 C CNN
	1    4100 6050
	1    0    0    -1  
$EndComp
NoConn ~ 3900 6050
NoConn ~ 3900 6150
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 61F2347B
P 5700 6050
F 0 "J6" H 5780 6042 50  0000 L CNN
F 1 "support" H 5780 5951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5700 6050 50  0001 C CNN
F 3 "~" H 5700 6050 50  0001 C CNN
	1    5700 6050
	-1   0    0    -1  
$EndComp
NoConn ~ 5900 6050
NoConn ~ 5900 6150
NoConn ~ 1750 2400
NoConn ~ 1750 2500
NoConn ~ 1750 2600
NoConn ~ 1750 2700
NoConn ~ 1750 2800
NoConn ~ 1750 2900
NoConn ~ 1750 3000
NoConn ~ 1750 3100
NoConn ~ 1750 3200
NoConn ~ 1750 3300
NoConn ~ 1750 3400
NoConn ~ 1750 3500
NoConn ~ 1750 3600
NoConn ~ 1750 3700
NoConn ~ 1750 3800
NoConn ~ 1750 3900
NoConn ~ 1750 4000
NoConn ~ 1750 4100
NoConn ~ 1750 4200
NoConn ~ 1750 4300
NoConn ~ 1750 4400
NoConn ~ 1750 4600
NoConn ~ 950  4600
NoConn ~ 950  4400
NoConn ~ 950  4300
NoConn ~ 950  4200
NoConn ~ 950  4100
NoConn ~ 950  4000
NoConn ~ 950  3900
NoConn ~ 950  3800
NoConn ~ 950  3700
NoConn ~ 950  3600
NoConn ~ 950  3500
NoConn ~ 950  3400
NoConn ~ 950  3300
NoConn ~ 950  3200
NoConn ~ 950  3100
NoConn ~ 950  3000
NoConn ~ 950  2900
NoConn ~ 950  2800
NoConn ~ 950  2700
NoConn ~ 950  2600
NoConn ~ 950  2500
NoConn ~ 950  2400
NoConn ~ 1750 1200
NoConn ~ 1750 1300
NoConn ~ 1750 1400
NoConn ~ 1750 1500
NoConn ~ 1750 1600
NoConn ~ 1750 1700
NoConn ~ 1750 1800
NoConn ~ 1750 1900
NoConn ~ 1750 2000
NoConn ~ 1750 2100
NoConn ~ 1750 2200
NoConn ~ 1750 2300
NoConn ~ 1750 4700
Wire Wire Line
	8600 4600 8600 4700
Wire Wire Line
	8600 4700 8700 4700
Connection ~ 9050 4700
Wire Wire Line
	9050 4700 9050 4750
Wire Wire Line
	8700 4600 8700 4700
Connection ~ 8700 4700
Wire Wire Line
	8700 4700 9050 4700
$EndSCHEMATC
