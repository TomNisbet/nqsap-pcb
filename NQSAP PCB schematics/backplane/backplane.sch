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
L Connector_Generic:Conn_01x40 J1
U 1 1 616317F2
P 1050 2800
F 0 "J1" H 1050 675 50  0000 C CNN
F 1 "Bus" H 1025 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 1050 2800 50  0001 C CNN
F 3 "~" H 1050 2800 50  0001 C CNN
	1    1050 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 616326C4
P 1200 700
F 0 "#PWR01" H 1200 450 50  0001 C CNN
F 1 "GND" H 1205 527 50  0000 C CNN
F 2 "" H 1200 700 50  0001 C CNN
F 3 "" H 1200 700 50  0001 C CNN
	1    1200 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 616326CE
P 1450 4950
F 0 "#PWR019" H 1450 4800 50  0001 C CNN
F 1 "+5V" H 1465 5123 50  0000 C CNN
F 2 "" H 1450 4950 50  0001 C CNN
F 3 "" H 1450 4950 50  0001 C CNN
	1    1450 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 1700 1250 1700
Wire Wire Line
	1300 900  1250 900 
Wire Wire Line
	1300 1600 1250 1600
Wire Wire Line
	1300 1500 1250 1500
Wire Wire Line
	1300 1400 1250 1400
Wire Wire Line
	1300 1300 1250 1300
Wire Wire Line
	1300 1200 1250 1200
Wire Wire Line
	1300 1100 1250 1100
Wire Wire Line
	1300 1000 1250 1000
Wire Wire Line
	1300 2200 1250 2200
Wire Wire Line
	1300 2300 1250 2300
Wire Wire Line
	1300 2400 1250 2400
Wire Wire Line
	1300 2500 1250 2500
Wire Wire Line
	1300 2600 1250 2600
Wire Wire Line
	1300 2700 1250 2700
Wire Wire Line
	1300 2800 1250 2800
Wire Wire Line
	1300 2900 1250 2900
Wire Wire Line
	1300 4100 1250 4100
Wire Wire Line
	1300 4000 1250 4000
Wire Wire Line
	1300 3900 1250 3900
Wire Wire Line
	1300 3800 1250 3800
Wire Wire Line
	1300 3700 1250 3700
Wire Wire Line
	1300 3600 1250 3600
Wire Wire Line
	1300 3500 1250 3500
Wire Wire Line
	1300 3400 1250 3400
Wire Wire Line
	1300 3300 1250 3300
Wire Wire Line
	1300 3200 1250 3200
Wire Wire Line
	1300 3100 1250 3100
Wire Wire Line
	1300 3000 1250 3000
Wire Wire Line
	1300 2100 1250 2100
Wire Wire Line
	1300 2000 1250 2000
Wire Wire Line
	1300 1900 1250 1900
Wire Wire Line
	1300 1800 1250 1800
Text GLabel 1300 4700 2    50   Input ~ 0
~RST
Text GLabel 1300 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	1500 4800 1250 4800
Wire Wire Line
	1200 700  1300 700 
Wire Wire Line
	1300 700  1300 900 
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
Text GLabel 1300 3100 2    50   Input ~ 0
FC
Text GLabel 1300 3000 2    50   Input ~ 0
FZ
Text GLabel 1300 2900 2    50   Input ~ 0
FV
Text GLabel 1300 2800 2    50   Input ~ 0
FN
Text GLabel 1300 3200 2    50   Input ~ 0
FB
Text GLabel 1300 3300 2    50   Input ~ 0
SE
Text GLabel 1300 3400 2    50   Input ~ 0
C1
Text GLabel 1300 3500 2    50   Input ~ 0
C0
Text GLabel 1300 3600 2    50   Input ~ 0
CS
Text GLabel 1300 3700 2    50   Input ~ 0
CC
Text GLabel 1300 3800 2    50   Input ~ 0
M1
Text GLabel 1300 3900 2    50   Input ~ 0
M0
Text GLabel 1300 4000 2    50   Input ~ 0
LF
Text GLabel 1300 4100 2    50   Input ~ 0
JE
Text GLabel 1300 4200 2    50   Input ~ 0
N
Text GLabel 1300 4300 2    50   Input ~ 0
PI
Text GLabel 1300 2000 2    50   Input ~ 0
WR3
Text GLabel 1300 2100 2    50   Input ~ 0
WR2
Text GLabel 1300 2200 2    50   Input ~ 0
WR1
Text GLabel 1300 2300 2    50   Input ~ 0
WR0
Text GLabel 1300 2400 2    50   Input ~ 0
RR3
Text GLabel 1300 2500 2    50   Input ~ 0
RR2
Text GLabel 1300 2600 2    50   Input ~ 0
RR1
Text GLabel 1300 2700 2    50   Input ~ 0
RR0
Text GLabel 1300 1200 2    50   Input ~ 0
D7
Text GLabel 1300 1300 2    50   Input ~ 0
D6
Text GLabel 1300 1400 2    50   Input ~ 0
D5
Text GLabel 1300 1500 2    50   Input ~ 0
D4
Text GLabel 1300 1600 2    50   Input ~ 0
D3
Text GLabel 1300 1700 2    50   Input ~ 0
D2
Text GLabel 1300 1800 2    50   Input ~ 0
D1
Text GLabel 1300 1900 2    50   Input ~ 0
D0
Wire Wire Line
	1250 4200 1300 4200
Wire Wire Line
	1250 4300 1300 4300
Wire Wire Line
	1250 4400 1300 4400
Wire Wire Line
	1250 4500 1300 4500
Wire Wire Line
	1250 4600 1300 4600
Wire Wire Line
	1250 4700 1300 4700
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
S 8850 1800 1150 2200
U 654E5337
F0 "backplane-conn" 50
F1 "backplane-conn.sch" 50
$EndSheet
Text Notes 9250 3000 0    50   ~ 0
Additional\nBus\nConnectors
Text Notes 8900 2250 0    55   ~ 0
18 Bus Connectors Total
Wire Wire Line
	1500 4800 1500 4950
Wire Wire Line
	1500 4950 1450 4950
Text GLabel 1300 1000 2    50   Input ~ 0
nc1
Text GLabel 1300 1100 2    50   Input ~ 0
nc2
Text GLabel 1300 4500 2    50   Input ~ 0
nc3
Text GLabel 1300 4600 2    50   Input ~ 0
~JMP
$Comp
L Connector_Generic:Conn_01x40 J2
U 1 1 63A9DA4F
P 1800 2800
F 0 "J2" H 1800 675 50  0000 C CNN
F 1 "Bus" H 1775 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 1800 2800 50  0001 C CNN
F 3 "~" H 1800 2800 50  0001 C CNN
	1    1800 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 63A9E6A1
P 1950 700
F 0 "#PWR02" H 1950 450 50  0001 C CNN
F 1 "GND" H 1955 527 50  0000 C CNN
F 2 "" H 1950 700 50  0001 C CNN
F 3 "" H 1950 700 50  0001 C CNN
	1    1950 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 63A9E6AB
P 2200 4950
F 0 "#PWR03" H 2200 4800 50  0001 C CNN
F 1 "+5V" H 2215 5123 50  0000 C CNN
F 2 "" H 2200 4950 50  0001 C CNN
F 3 "" H 2200 4950 50  0001 C CNN
	1    2200 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 1700 2000 1700
Wire Wire Line
	2050 900  2000 900 
Wire Wire Line
	2050 1600 2000 1600
Wire Wire Line
	2050 1500 2000 1500
Wire Wire Line
	2050 1400 2000 1400
Wire Wire Line
	2050 1300 2000 1300
Wire Wire Line
	2050 1200 2000 1200
Wire Wire Line
	2050 1100 2000 1100
Wire Wire Line
	2050 1000 2000 1000
Wire Wire Line
	2050 2200 2000 2200
Wire Wire Line
	2050 2300 2000 2300
Wire Wire Line
	2050 2400 2000 2400
Wire Wire Line
	2050 2500 2000 2500
Wire Wire Line
	2050 2600 2000 2600
Wire Wire Line
	2050 2700 2000 2700
Wire Wire Line
	2050 2800 2000 2800
Wire Wire Line
	2050 2900 2000 2900
Wire Wire Line
	2050 4100 2000 4100
Wire Wire Line
	2050 4000 2000 4000
Wire Wire Line
	2050 3900 2000 3900
Wire Wire Line
	2050 3800 2000 3800
Wire Wire Line
	2050 3700 2000 3700
Wire Wire Line
	2050 3600 2000 3600
Wire Wire Line
	2050 3500 2000 3500
Wire Wire Line
	2050 3400 2000 3400
Wire Wire Line
	2050 3300 2000 3300
Wire Wire Line
	2050 3200 2000 3200
Wire Wire Line
	2050 3100 2000 3100
Wire Wire Line
	2050 3000 2000 3000
Wire Wire Line
	2050 2100 2000 2100
Wire Wire Line
	2050 2000 2000 2000
Wire Wire Line
	2050 1900 2000 1900
Wire Wire Line
	2050 1800 2000 1800
Text GLabel 2050 4700 2    50   Input ~ 0
~RST
Text GLabel 2050 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	2250 4800 2000 4800
Wire Wire Line
	1950 700  2050 700 
Wire Wire Line
	2050 700  2050 900 
Text GLabel 2050 3100 2    50   Input ~ 0
FC
Text GLabel 2050 3000 2    50   Input ~ 0
FZ
Text GLabel 2050 2900 2    50   Input ~ 0
FV
Text GLabel 2050 2800 2    50   Input ~ 0
FN
Text GLabel 2050 3200 2    50   Input ~ 0
FB
Text GLabel 2050 3300 2    50   Input ~ 0
SE
Text GLabel 2050 3400 2    50   Input ~ 0
C1
Text GLabel 2050 3500 2    50   Input ~ 0
C0
Text GLabel 2050 3600 2    50   Input ~ 0
CS
Text GLabel 2050 3700 2    50   Input ~ 0
CC
Text GLabel 2050 3800 2    50   Input ~ 0
M1
Text GLabel 2050 3900 2    50   Input ~ 0
M0
Text GLabel 2050 4000 2    50   Input ~ 0
LF
Text GLabel 2050 4200 2    50   Input ~ 0
N
Text GLabel 2050 4300 2    50   Input ~ 0
PI
Text GLabel 2050 2000 2    50   Input ~ 0
WR3
Text GLabel 2050 2100 2    50   Input ~ 0
WR2
Text GLabel 2050 2200 2    50   Input ~ 0
WR1
Text GLabel 2050 2300 2    50   Input ~ 0
WR0
Text GLabel 2050 2400 2    50   Input ~ 0
RR3
Text GLabel 2050 2500 2    50   Input ~ 0
RR2
Text GLabel 2050 2600 2    50   Input ~ 0
RR1
Text GLabel 2050 2700 2    50   Input ~ 0
RR0
Text GLabel 2050 1200 2    50   Input ~ 0
D7
Text GLabel 2050 1300 2    50   Input ~ 0
D6
Text GLabel 2050 1400 2    50   Input ~ 0
D5
Text GLabel 2050 1500 2    50   Input ~ 0
D4
Text GLabel 2050 1600 2    50   Input ~ 0
D3
Text GLabel 2050 1700 2    50   Input ~ 0
D2
Text GLabel 2050 1800 2    50   Input ~ 0
D1
Text GLabel 2050 1900 2    50   Input ~ 0
D0
Wire Wire Line
	2000 4200 2050 4200
Wire Wire Line
	2000 4300 2050 4300
Wire Wire Line
	2000 4400 2050 4400
Wire Wire Line
	2000 4500 2050 4500
Wire Wire Line
	2000 4600 2050 4600
Wire Wire Line
	2000 4700 2050 4700
Wire Wire Line
	2250 4800 2250 4950
Wire Wire Line
	2250 4950 2200 4950
Text GLabel 2050 1000 2    50   Input ~ 0
nc1
Text GLabel 2050 1100 2    50   Input ~ 0
nc2
Text GLabel 2050 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J3
U 1 1 63B5465E
P 2550 2800
F 0 "J3" H 2550 675 50  0000 C CNN
F 1 "Bus" H 2525 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 2550 2800 50  0001 C CNN
F 3 "~" H 2550 2800 50  0001 C CNN
	1    2550 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 63B55378
P 2700 700
F 0 "#PWR04" H 2700 450 50  0001 C CNN
F 1 "GND" H 2705 527 50  0000 C CNN
F 2 "" H 2700 700 50  0001 C CNN
F 3 "" H 2700 700 50  0001 C CNN
	1    2700 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 63B55382
P 2950 4950
F 0 "#PWR05" H 2950 4800 50  0001 C CNN
F 1 "+5V" H 2965 5123 50  0000 C CNN
F 2 "" H 2950 4950 50  0001 C CNN
F 3 "" H 2950 4950 50  0001 C CNN
	1    2950 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1700 2750 1700
Wire Wire Line
	2800 900  2750 900 
Wire Wire Line
	2800 1600 2750 1600
Wire Wire Line
	2800 1500 2750 1500
Wire Wire Line
	2800 1400 2750 1400
Wire Wire Line
	2800 1300 2750 1300
Wire Wire Line
	2800 1200 2750 1200
Wire Wire Line
	2800 1100 2750 1100
Wire Wire Line
	2800 1000 2750 1000
Wire Wire Line
	2800 2200 2750 2200
Wire Wire Line
	2800 2300 2750 2300
Wire Wire Line
	2800 2400 2750 2400
Wire Wire Line
	2800 2500 2750 2500
Wire Wire Line
	2800 2600 2750 2600
Wire Wire Line
	2800 2700 2750 2700
Wire Wire Line
	2800 2800 2750 2800
Wire Wire Line
	2800 2900 2750 2900
Wire Wire Line
	2800 4100 2750 4100
Wire Wire Line
	2800 4000 2750 4000
Wire Wire Line
	2800 3900 2750 3900
Wire Wire Line
	2800 3800 2750 3800
Wire Wire Line
	2800 3700 2750 3700
Wire Wire Line
	2800 3600 2750 3600
Wire Wire Line
	2800 3500 2750 3500
Wire Wire Line
	2800 3400 2750 3400
Wire Wire Line
	2800 3300 2750 3300
Wire Wire Line
	2800 3200 2750 3200
Wire Wire Line
	2800 3100 2750 3100
Wire Wire Line
	2800 3000 2750 3000
Wire Wire Line
	2800 2100 2750 2100
Wire Wire Line
	2800 2000 2750 2000
Wire Wire Line
	2800 1900 2750 1900
Wire Wire Line
	2800 1800 2750 1800
Text GLabel 2800 4700 2    50   Input ~ 0
~RST
Text GLabel 2800 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	3000 4800 2750 4800
Wire Wire Line
	2700 700  2800 700 
Wire Wire Line
	2800 700  2800 900 
Text GLabel 2800 3100 2    50   Input ~ 0
FC
Text GLabel 2800 3000 2    50   Input ~ 0
FZ
Text GLabel 2800 2900 2    50   Input ~ 0
FV
Text GLabel 2800 2800 2    50   Input ~ 0
FN
Text GLabel 2800 3200 2    50   Input ~ 0
FB
Text GLabel 2800 3300 2    50   Input ~ 0
SE
Text GLabel 2800 3400 2    50   Input ~ 0
C1
Text GLabel 2800 3500 2    50   Input ~ 0
C0
Text GLabel 2800 3600 2    50   Input ~ 0
CS
Text GLabel 2800 3700 2    50   Input ~ 0
CC
Text GLabel 2800 3800 2    50   Input ~ 0
M1
Text GLabel 2800 3900 2    50   Input ~ 0
M0
Text GLabel 2800 4000 2    50   Input ~ 0
LF
Text GLabel 2800 4200 2    50   Input ~ 0
N
Text GLabel 2800 4300 2    50   Input ~ 0
PI
Text GLabel 2800 2000 2    50   Input ~ 0
WR3
Text GLabel 2800 2100 2    50   Input ~ 0
WR2
Text GLabel 2800 2200 2    50   Input ~ 0
WR1
Text GLabel 2800 2300 2    50   Input ~ 0
WR0
Text GLabel 2800 2400 2    50   Input ~ 0
RR3
Text GLabel 2800 2500 2    50   Input ~ 0
RR2
Text GLabel 2800 2600 2    50   Input ~ 0
RR1
Text GLabel 2800 2700 2    50   Input ~ 0
RR0
Text GLabel 2800 1200 2    50   Input ~ 0
D7
Text GLabel 2800 1300 2    50   Input ~ 0
D6
Text GLabel 2800 1400 2    50   Input ~ 0
D5
Text GLabel 2800 1500 2    50   Input ~ 0
D4
Text GLabel 2800 1600 2    50   Input ~ 0
D3
Text GLabel 2800 1700 2    50   Input ~ 0
D2
Text GLabel 2800 1800 2    50   Input ~ 0
D1
Text GLabel 2800 1900 2    50   Input ~ 0
D0
Wire Wire Line
	2750 4200 2800 4200
Wire Wire Line
	2750 4300 2800 4300
Wire Wire Line
	2750 4400 2800 4400
Wire Wire Line
	2750 4500 2800 4500
Wire Wire Line
	2750 4600 2800 4600
Wire Wire Line
	2750 4700 2800 4700
Wire Wire Line
	3000 4800 3000 4950
Wire Wire Line
	3000 4950 2950 4950
Text GLabel 2800 1000 2    50   Input ~ 0
nc1
Text GLabel 2800 1100 2    50   Input ~ 0
nc2
Text GLabel 2800 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J4
U 1 1 63C2A57A
P 3300 2800
F 0 "J4" H 3300 675 50  0000 C CNN
F 1 "Bus" H 3275 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 3300 2800 50  0001 C CNN
F 3 "~" H 3300 2800 50  0001 C CNN
	1    3300 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 63C2B35C
P 3450 700
F 0 "#PWR06" H 3450 450 50  0001 C CNN
F 1 "GND" H 3455 527 50  0000 C CNN
F 2 "" H 3450 700 50  0001 C CNN
F 3 "" H 3450 700 50  0001 C CNN
	1    3450 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 63C2B366
P 3700 4950
F 0 "#PWR07" H 3700 4800 50  0001 C CNN
F 1 "+5V" H 3715 5123 50  0000 C CNN
F 2 "" H 3700 4950 50  0001 C CNN
F 3 "" H 3700 4950 50  0001 C CNN
	1    3700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 1700 3500 1700
Wire Wire Line
	3550 900  3500 900 
Wire Wire Line
	3550 1600 3500 1600
Wire Wire Line
	3550 1500 3500 1500
Wire Wire Line
	3550 1400 3500 1400
Wire Wire Line
	3550 1300 3500 1300
Wire Wire Line
	3550 1200 3500 1200
Wire Wire Line
	3550 1100 3500 1100
Wire Wire Line
	3550 1000 3500 1000
Wire Wire Line
	3550 2200 3500 2200
Wire Wire Line
	3550 2300 3500 2300
Wire Wire Line
	3550 2400 3500 2400
Wire Wire Line
	3550 2500 3500 2500
Wire Wire Line
	3550 2600 3500 2600
Wire Wire Line
	3550 2700 3500 2700
Wire Wire Line
	3550 2800 3500 2800
Wire Wire Line
	3550 2900 3500 2900
Wire Wire Line
	3550 4100 3500 4100
Wire Wire Line
	3550 4000 3500 4000
Wire Wire Line
	3550 3900 3500 3900
Wire Wire Line
	3550 3800 3500 3800
Wire Wire Line
	3550 3700 3500 3700
Wire Wire Line
	3550 3600 3500 3600
Wire Wire Line
	3550 3500 3500 3500
Wire Wire Line
	3550 3400 3500 3400
Wire Wire Line
	3550 3300 3500 3300
Wire Wire Line
	3550 3200 3500 3200
Wire Wire Line
	3550 3100 3500 3100
Wire Wire Line
	3550 3000 3500 3000
Wire Wire Line
	3550 2100 3500 2100
Wire Wire Line
	3550 2000 3500 2000
Wire Wire Line
	3550 1900 3500 1900
Wire Wire Line
	3550 1800 3500 1800
Text GLabel 3550 4700 2    50   Input ~ 0
~RST
Text GLabel 3550 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	3750 4800 3500 4800
Wire Wire Line
	3450 700  3550 700 
Wire Wire Line
	3550 700  3550 900 
Text GLabel 3550 3100 2    50   Input ~ 0
FC
Text GLabel 3550 3000 2    50   Input ~ 0
FZ
Text GLabel 3550 2900 2    50   Input ~ 0
FV
Text GLabel 3550 2800 2    50   Input ~ 0
FN
Text GLabel 3550 3200 2    50   Input ~ 0
FB
Text GLabel 3550 3300 2    50   Input ~ 0
SE
Text GLabel 3550 3400 2    50   Input ~ 0
C1
Text GLabel 3550 3500 2    50   Input ~ 0
C0
Text GLabel 3550 3600 2    50   Input ~ 0
CS
Text GLabel 3550 3700 2    50   Input ~ 0
CC
Text GLabel 3550 3800 2    50   Input ~ 0
M1
Text GLabel 3550 3900 2    50   Input ~ 0
M0
Text GLabel 3550 4000 2    50   Input ~ 0
LF
Text GLabel 3550 4200 2    50   Input ~ 0
N
Text GLabel 3550 4300 2    50   Input ~ 0
PI
Text GLabel 3550 2000 2    50   Input ~ 0
WR3
Text GLabel 3550 2100 2    50   Input ~ 0
WR2
Text GLabel 3550 2200 2    50   Input ~ 0
WR1
Text GLabel 3550 2300 2    50   Input ~ 0
WR0
Text GLabel 3550 2400 2    50   Input ~ 0
RR3
Text GLabel 3550 2500 2    50   Input ~ 0
RR2
Text GLabel 3550 2600 2    50   Input ~ 0
RR1
Text GLabel 3550 2700 2    50   Input ~ 0
RR0
Text GLabel 3550 1200 2    50   Input ~ 0
D7
Text GLabel 3550 1300 2    50   Input ~ 0
D6
Text GLabel 3550 1400 2    50   Input ~ 0
D5
Text GLabel 3550 1500 2    50   Input ~ 0
D4
Text GLabel 3550 1600 2    50   Input ~ 0
D3
Text GLabel 3550 1700 2    50   Input ~ 0
D2
Text GLabel 3550 1800 2    50   Input ~ 0
D1
Text GLabel 3550 1900 2    50   Input ~ 0
D0
Wire Wire Line
	3500 4200 3550 4200
Wire Wire Line
	3500 4300 3550 4300
Wire Wire Line
	3500 4400 3550 4400
Wire Wire Line
	3500 4500 3550 4500
Wire Wire Line
	3500 4600 3550 4600
Wire Wire Line
	3500 4700 3550 4700
Wire Wire Line
	3750 4800 3750 4950
Wire Wire Line
	3750 4950 3700 4950
Text GLabel 3550 1000 2    50   Input ~ 0
nc1
Text GLabel 3550 1100 2    50   Input ~ 0
nc2
Text GLabel 3550 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J5
U 1 1 63C2B3C2
P 4050 2800
F 0 "J5" H 4050 675 50  0000 C CNN
F 1 "Bus" H 4025 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 4050 2800 50  0001 C CNN
F 3 "~" H 4050 2800 50  0001 C CNN
	1    4050 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 63C2B3CC
P 4200 700
F 0 "#PWR08" H 4200 450 50  0001 C CNN
F 1 "GND" H 4205 527 50  0000 C CNN
F 2 "" H 4200 700 50  0001 C CNN
F 3 "" H 4200 700 50  0001 C CNN
	1    4200 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 63C2B3D6
P 4450 4950
F 0 "#PWR09" H 4450 4800 50  0001 C CNN
F 1 "+5V" H 4465 5123 50  0000 C CNN
F 2 "" H 4450 4950 50  0001 C CNN
F 3 "" H 4450 4950 50  0001 C CNN
	1    4450 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 1700 4250 1700
Wire Wire Line
	4300 900  4250 900 
Wire Wire Line
	4300 1600 4250 1600
Wire Wire Line
	4300 1500 4250 1500
Wire Wire Line
	4300 1400 4250 1400
Wire Wire Line
	4300 1300 4250 1300
Wire Wire Line
	4300 1200 4250 1200
Wire Wire Line
	4300 1100 4250 1100
Wire Wire Line
	4300 1000 4250 1000
Wire Wire Line
	4300 2200 4250 2200
Wire Wire Line
	4300 2300 4250 2300
Wire Wire Line
	4300 2400 4250 2400
Wire Wire Line
	4300 2500 4250 2500
Wire Wire Line
	4300 2600 4250 2600
Wire Wire Line
	4300 2700 4250 2700
Wire Wire Line
	4300 2800 4250 2800
Wire Wire Line
	4300 2900 4250 2900
Wire Wire Line
	4300 4100 4250 4100
Wire Wire Line
	4300 4000 4250 4000
Wire Wire Line
	4300 3900 4250 3900
Wire Wire Line
	4300 3800 4250 3800
Wire Wire Line
	4300 3700 4250 3700
Wire Wire Line
	4300 3600 4250 3600
Wire Wire Line
	4300 3500 4250 3500
Wire Wire Line
	4300 3400 4250 3400
Wire Wire Line
	4300 3300 4250 3300
Wire Wire Line
	4300 3200 4250 3200
Wire Wire Line
	4300 3100 4250 3100
Wire Wire Line
	4300 3000 4250 3000
Wire Wire Line
	4300 2100 4250 2100
Wire Wire Line
	4300 2000 4250 2000
Wire Wire Line
	4300 1900 4250 1900
Wire Wire Line
	4300 1800 4250 1800
Text GLabel 4300 4700 2    50   Input ~ 0
~RST
Text GLabel 4300 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	4500 4800 4250 4800
Wire Wire Line
	4200 700  4300 700 
Wire Wire Line
	4300 700  4300 900 
Text GLabel 4300 3100 2    50   Input ~ 0
FC
Text GLabel 4300 3000 2    50   Input ~ 0
FZ
Text GLabel 4300 2900 2    50   Input ~ 0
FV
Text GLabel 4300 2800 2    50   Input ~ 0
FN
Text GLabel 4300 3200 2    50   Input ~ 0
FB
Text GLabel 4300 3300 2    50   Input ~ 0
SE
Text GLabel 4300 3400 2    50   Input ~ 0
C1
Text GLabel 4300 3500 2    50   Input ~ 0
C0
Text GLabel 4300 3600 2    50   Input ~ 0
CS
Text GLabel 4300 3700 2    50   Input ~ 0
CC
Text GLabel 4300 3800 2    50   Input ~ 0
M1
Text GLabel 4300 3900 2    50   Input ~ 0
M0
Text GLabel 4300 4000 2    50   Input ~ 0
LF
Text GLabel 4300 4200 2    50   Input ~ 0
N
Text GLabel 4300 4300 2    50   Input ~ 0
PI
Text GLabel 4300 2000 2    50   Input ~ 0
WR3
Text GLabel 4300 2100 2    50   Input ~ 0
WR2
Text GLabel 4300 2200 2    50   Input ~ 0
WR1
Text GLabel 4300 2300 2    50   Input ~ 0
WR0
Text GLabel 4300 2400 2    50   Input ~ 0
RR3
Text GLabel 4300 2500 2    50   Input ~ 0
RR2
Text GLabel 4300 2600 2    50   Input ~ 0
RR1
Text GLabel 4300 2700 2    50   Input ~ 0
RR0
Text GLabel 4300 1200 2    50   Input ~ 0
D7
Text GLabel 4300 1300 2    50   Input ~ 0
D6
Text GLabel 4300 1400 2    50   Input ~ 0
D5
Text GLabel 4300 1500 2    50   Input ~ 0
D4
Text GLabel 4300 1600 2    50   Input ~ 0
D3
Text GLabel 4300 1700 2    50   Input ~ 0
D2
Text GLabel 4300 1800 2    50   Input ~ 0
D1
Text GLabel 4300 1900 2    50   Input ~ 0
D0
Wire Wire Line
	4250 4200 4300 4200
Wire Wire Line
	4250 4300 4300 4300
Wire Wire Line
	4250 4400 4300 4400
Wire Wire Line
	4250 4500 4300 4500
Wire Wire Line
	4250 4600 4300 4600
Wire Wire Line
	4250 4700 4300 4700
Wire Wire Line
	4500 4800 4500 4950
Wire Wire Line
	4500 4950 4450 4950
Text GLabel 4300 1000 2    50   Input ~ 0
nc1
Text GLabel 4300 1100 2    50   Input ~ 0
nc2
Text GLabel 4300 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J6
U 1 1 63D3F798
P 4800 2800
F 0 "J6" H 4800 675 50  0000 C CNN
F 1 "Bus" H 4775 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 4800 2800 50  0001 C CNN
F 3 "~" H 4800 2800 50  0001 C CNN
	1    4800 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 63D4070A
P 4950 700
F 0 "#PWR010" H 4950 450 50  0001 C CNN
F 1 "GND" H 4955 527 50  0000 C CNN
F 2 "" H 4950 700 50  0001 C CNN
F 3 "" H 4950 700 50  0001 C CNN
	1    4950 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 63D40714
P 5200 4950
F 0 "#PWR011" H 5200 4800 50  0001 C CNN
F 1 "+5V" H 5215 5123 50  0000 C CNN
F 2 "" H 5200 4950 50  0001 C CNN
F 3 "" H 5200 4950 50  0001 C CNN
	1    5200 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1700 5000 1700
Wire Wire Line
	5050 900  5000 900 
Wire Wire Line
	5050 1600 5000 1600
Wire Wire Line
	5050 1500 5000 1500
Wire Wire Line
	5050 1400 5000 1400
Wire Wire Line
	5050 1300 5000 1300
Wire Wire Line
	5050 1200 5000 1200
Wire Wire Line
	5050 1100 5000 1100
Wire Wire Line
	5050 1000 5000 1000
Wire Wire Line
	5050 2200 5000 2200
Wire Wire Line
	5050 2300 5000 2300
Wire Wire Line
	5050 2400 5000 2400
Wire Wire Line
	5050 2500 5000 2500
Wire Wire Line
	5050 2600 5000 2600
Wire Wire Line
	5050 2700 5000 2700
Wire Wire Line
	5050 2800 5000 2800
Wire Wire Line
	5050 2900 5000 2900
Wire Wire Line
	5050 4100 5000 4100
Wire Wire Line
	5050 4000 5000 4000
Wire Wire Line
	5050 3900 5000 3900
Wire Wire Line
	5050 3800 5000 3800
Wire Wire Line
	5050 3700 5000 3700
Wire Wire Line
	5050 3600 5000 3600
Wire Wire Line
	5050 3500 5000 3500
Wire Wire Line
	5050 3400 5000 3400
Wire Wire Line
	5050 3300 5000 3300
Wire Wire Line
	5050 3200 5000 3200
Wire Wire Line
	5050 3100 5000 3100
Wire Wire Line
	5050 3000 5000 3000
Wire Wire Line
	5050 2100 5000 2100
Wire Wire Line
	5050 2000 5000 2000
Wire Wire Line
	5050 1900 5000 1900
Wire Wire Line
	5050 1800 5000 1800
Text GLabel 5050 4700 2    50   Input ~ 0
~RST
Text GLabel 5050 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	5250 4800 5000 4800
Wire Wire Line
	4950 700  5050 700 
Wire Wire Line
	5050 700  5050 900 
Text GLabel 5050 3100 2    50   Input ~ 0
FC
Text GLabel 5050 3000 2    50   Input ~ 0
FZ
Text GLabel 5050 2900 2    50   Input ~ 0
FV
Text GLabel 5050 2800 2    50   Input ~ 0
FN
Text GLabel 5050 3200 2    50   Input ~ 0
FB
Text GLabel 5050 3300 2    50   Input ~ 0
SE
Text GLabel 5050 3400 2    50   Input ~ 0
C1
Text GLabel 5050 3500 2    50   Input ~ 0
C0
Text GLabel 5050 3600 2    50   Input ~ 0
CS
Text GLabel 5050 3700 2    50   Input ~ 0
CC
Text GLabel 5050 3800 2    50   Input ~ 0
M1
Text GLabel 5050 3900 2    50   Input ~ 0
M0
Text GLabel 5050 4000 2    50   Input ~ 0
LF
Text GLabel 5050 4200 2    50   Input ~ 0
N
Text GLabel 5050 4300 2    50   Input ~ 0
PI
Text GLabel 5050 2000 2    50   Input ~ 0
WR3
Text GLabel 5050 2100 2    50   Input ~ 0
WR2
Text GLabel 5050 2200 2    50   Input ~ 0
WR1
Text GLabel 5050 2300 2    50   Input ~ 0
WR0
Text GLabel 5050 2400 2    50   Input ~ 0
RR3
Text GLabel 5050 2500 2    50   Input ~ 0
RR2
Text GLabel 5050 2600 2    50   Input ~ 0
RR1
Text GLabel 5050 2700 2    50   Input ~ 0
RR0
Text GLabel 5050 1200 2    50   Input ~ 0
D7
Text GLabel 5050 1300 2    50   Input ~ 0
D6
Text GLabel 5050 1400 2    50   Input ~ 0
D5
Text GLabel 5050 1500 2    50   Input ~ 0
D4
Text GLabel 5050 1600 2    50   Input ~ 0
D3
Text GLabel 5050 1700 2    50   Input ~ 0
D2
Text GLabel 5050 1800 2    50   Input ~ 0
D1
Text GLabel 5050 1900 2    50   Input ~ 0
D0
Wire Wire Line
	5000 4200 5050 4200
Wire Wire Line
	5000 4300 5050 4300
Wire Wire Line
	5000 4400 5050 4400
Wire Wire Line
	5000 4500 5050 4500
Wire Wire Line
	5000 4600 5050 4600
Wire Wire Line
	5000 4700 5050 4700
Wire Wire Line
	5250 4800 5250 4950
Wire Wire Line
	5250 4950 5200 4950
Text GLabel 5050 1000 2    50   Input ~ 0
nc1
Text GLabel 5050 1100 2    50   Input ~ 0
nc2
Text GLabel 5050 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J7
U 1 1 63D40770
P 5550 2800
F 0 "J7" H 5550 675 50  0000 C CNN
F 1 "Bus" H 5525 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 5550 2800 50  0001 C CNN
F 3 "~" H 5550 2800 50  0001 C CNN
	1    5550 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 63D4077A
P 5700 700
F 0 "#PWR012" H 5700 450 50  0001 C CNN
F 1 "GND" H 5705 527 50  0000 C CNN
F 2 "" H 5700 700 50  0001 C CNN
F 3 "" H 5700 700 50  0001 C CNN
	1    5700 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 63D40784
P 5950 4950
F 0 "#PWR013" H 5950 4800 50  0001 C CNN
F 1 "+5V" H 5965 5123 50  0000 C CNN
F 2 "" H 5950 4950 50  0001 C CNN
F 3 "" H 5950 4950 50  0001 C CNN
	1    5950 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1700 5750 1700
Wire Wire Line
	5800 900  5750 900 
Wire Wire Line
	5800 1600 5750 1600
Wire Wire Line
	5800 1500 5750 1500
Wire Wire Line
	5800 1400 5750 1400
Wire Wire Line
	5800 1300 5750 1300
Wire Wire Line
	5800 1200 5750 1200
Wire Wire Line
	5800 1100 5750 1100
Wire Wire Line
	5800 1000 5750 1000
Wire Wire Line
	5800 2200 5750 2200
Wire Wire Line
	5800 2300 5750 2300
Wire Wire Line
	5800 2400 5750 2400
Wire Wire Line
	5800 2500 5750 2500
Wire Wire Line
	5800 2600 5750 2600
Wire Wire Line
	5800 2700 5750 2700
Wire Wire Line
	5800 2800 5750 2800
Wire Wire Line
	5800 2900 5750 2900
Wire Wire Line
	5800 4100 5750 4100
Wire Wire Line
	5800 4000 5750 4000
Wire Wire Line
	5800 3900 5750 3900
Wire Wire Line
	5800 3800 5750 3800
Wire Wire Line
	5800 3700 5750 3700
Wire Wire Line
	5800 3600 5750 3600
Wire Wire Line
	5800 3500 5750 3500
Wire Wire Line
	5800 3400 5750 3400
Wire Wire Line
	5800 3300 5750 3300
Wire Wire Line
	5800 3200 5750 3200
Wire Wire Line
	5800 3100 5750 3100
Wire Wire Line
	5800 3000 5750 3000
Wire Wire Line
	5800 2100 5750 2100
Wire Wire Line
	5800 2000 5750 2000
Wire Wire Line
	5800 1900 5750 1900
Wire Wire Line
	5800 1800 5750 1800
Text GLabel 5800 4700 2    50   Input ~ 0
~RST
Text GLabel 5800 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	6000 4800 5750 4800
Wire Wire Line
	5700 700  5800 700 
Wire Wire Line
	5800 700  5800 900 
Text GLabel 5800 3100 2    50   Input ~ 0
FC
Text GLabel 5800 3000 2    50   Input ~ 0
FZ
Text GLabel 5800 2900 2    50   Input ~ 0
FV
Text GLabel 5800 2800 2    50   Input ~ 0
FN
Text GLabel 5800 3200 2    50   Input ~ 0
FB
Text GLabel 5800 3300 2    50   Input ~ 0
SE
Text GLabel 5800 3400 2    50   Input ~ 0
C1
Text GLabel 5800 3500 2    50   Input ~ 0
C0
Text GLabel 5800 3600 2    50   Input ~ 0
CS
Text GLabel 5800 3700 2    50   Input ~ 0
CC
Text GLabel 5800 3800 2    50   Input ~ 0
M1
Text GLabel 5800 3900 2    50   Input ~ 0
M0
Text GLabel 5800 4000 2    50   Input ~ 0
LF
Text GLabel 5800 4200 2    50   Input ~ 0
N
Text GLabel 5800 4300 2    50   Input ~ 0
PI
Text GLabel 5800 2000 2    50   Input ~ 0
WR3
Text GLabel 5800 2100 2    50   Input ~ 0
WR2
Text GLabel 5800 2200 2    50   Input ~ 0
WR1
Text GLabel 5800 2300 2    50   Input ~ 0
WR0
Text GLabel 5800 2400 2    50   Input ~ 0
RR3
Text GLabel 5800 2500 2    50   Input ~ 0
RR2
Text GLabel 5800 2600 2    50   Input ~ 0
RR1
Text GLabel 5800 2700 2    50   Input ~ 0
RR0
Text GLabel 5800 1200 2    50   Input ~ 0
D7
Text GLabel 5800 1300 2    50   Input ~ 0
D6
Text GLabel 5800 1400 2    50   Input ~ 0
D5
Text GLabel 5800 1500 2    50   Input ~ 0
D4
Text GLabel 5800 1600 2    50   Input ~ 0
D3
Text GLabel 5800 1700 2    50   Input ~ 0
D2
Text GLabel 5800 1800 2    50   Input ~ 0
D1
Text GLabel 5800 1900 2    50   Input ~ 0
D0
Wire Wire Line
	5750 4200 5800 4200
Wire Wire Line
	5750 4300 5800 4300
Wire Wire Line
	5750 4400 5800 4400
Wire Wire Line
	5750 4500 5800 4500
Wire Wire Line
	5750 4600 5800 4600
Wire Wire Line
	5750 4700 5800 4700
Wire Wire Line
	6000 4800 6000 4950
Wire Wire Line
	6000 4950 5950 4950
Text GLabel 5800 1000 2    50   Input ~ 0
nc1
Text GLabel 5800 1100 2    50   Input ~ 0
nc2
Text GLabel 5800 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J8
U 1 1 63D407E0
P 6300 2800
F 0 "J8" H 6300 675 50  0000 C CNN
F 1 "Bus" H 6275 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 63D407EA
P 6450 700
F 0 "#PWR014" H 6450 450 50  0001 C CNN
F 1 "GND" H 6455 527 50  0000 C CNN
F 2 "" H 6450 700 50  0001 C CNN
F 3 "" H 6450 700 50  0001 C CNN
	1    6450 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 63D407F4
P 6700 4950
F 0 "#PWR015" H 6700 4800 50  0001 C CNN
F 1 "+5V" H 6715 5123 50  0000 C CNN
F 2 "" H 6700 4950 50  0001 C CNN
F 3 "" H 6700 4950 50  0001 C CNN
	1    6700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 1700 6500 1700
Wire Wire Line
	6550 900  6500 900 
Wire Wire Line
	6550 1600 6500 1600
Wire Wire Line
	6550 1500 6500 1500
Wire Wire Line
	6550 1400 6500 1400
Wire Wire Line
	6550 1300 6500 1300
Wire Wire Line
	6550 1200 6500 1200
Wire Wire Line
	6550 1100 6500 1100
Wire Wire Line
	6550 1000 6500 1000
Wire Wire Line
	6550 2200 6500 2200
Wire Wire Line
	6550 2300 6500 2300
Wire Wire Line
	6550 2400 6500 2400
Wire Wire Line
	6550 2500 6500 2500
Wire Wire Line
	6550 2600 6500 2600
Wire Wire Line
	6550 2700 6500 2700
Wire Wire Line
	6550 2800 6500 2800
Wire Wire Line
	6550 2900 6500 2900
Wire Wire Line
	6550 4100 6500 4100
Wire Wire Line
	6550 4000 6500 4000
Wire Wire Line
	6550 3900 6500 3900
Wire Wire Line
	6550 3800 6500 3800
Wire Wire Line
	6550 3700 6500 3700
Wire Wire Line
	6550 3600 6500 3600
Wire Wire Line
	6550 3500 6500 3500
Wire Wire Line
	6550 3400 6500 3400
Wire Wire Line
	6550 3300 6500 3300
Wire Wire Line
	6550 3200 6500 3200
Wire Wire Line
	6550 3100 6500 3100
Wire Wire Line
	6550 3000 6500 3000
Wire Wire Line
	6550 2100 6500 2100
Wire Wire Line
	6550 2000 6500 2000
Wire Wire Line
	6550 1900 6500 1900
Wire Wire Line
	6550 1800 6500 1800
Text GLabel 6550 4700 2    50   Input ~ 0
~RST
Text GLabel 6550 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	6750 4800 6500 4800
Wire Wire Line
	6450 700  6550 700 
Wire Wire Line
	6550 700  6550 900 
Text GLabel 6550 3100 2    50   Input ~ 0
FC
Text GLabel 6550 3000 2    50   Input ~ 0
FZ
Text GLabel 6550 2900 2    50   Input ~ 0
FV
Text GLabel 6550 2800 2    50   Input ~ 0
FN
Text GLabel 6550 3200 2    50   Input ~ 0
FB
Text GLabel 6550 3300 2    50   Input ~ 0
SE
Text GLabel 6550 3400 2    50   Input ~ 0
C1
Text GLabel 6550 3500 2    50   Input ~ 0
C0
Text GLabel 6550 3600 2    50   Input ~ 0
CS
Text GLabel 6550 3700 2    50   Input ~ 0
CC
Text GLabel 6550 3800 2    50   Input ~ 0
M1
Text GLabel 6550 3900 2    50   Input ~ 0
M0
Text GLabel 6550 4000 2    50   Input ~ 0
LF
Text GLabel 6550 4200 2    50   Input ~ 0
N
Text GLabel 6550 4300 2    50   Input ~ 0
PI
Text GLabel 6550 2000 2    50   Input ~ 0
WR3
Text GLabel 6550 2100 2    50   Input ~ 0
WR2
Text GLabel 6550 2200 2    50   Input ~ 0
WR1
Text GLabel 6550 2300 2    50   Input ~ 0
WR0
Text GLabel 6550 2400 2    50   Input ~ 0
RR3
Text GLabel 6550 2500 2    50   Input ~ 0
RR2
Text GLabel 6550 2600 2    50   Input ~ 0
RR1
Text GLabel 6550 2700 2    50   Input ~ 0
RR0
Text GLabel 6550 1200 2    50   Input ~ 0
D7
Text GLabel 6550 1300 2    50   Input ~ 0
D6
Text GLabel 6550 1400 2    50   Input ~ 0
D5
Text GLabel 6550 1500 2    50   Input ~ 0
D4
Text GLabel 6550 1600 2    50   Input ~ 0
D3
Text GLabel 6550 1700 2    50   Input ~ 0
D2
Text GLabel 6550 1800 2    50   Input ~ 0
D1
Text GLabel 6550 1900 2    50   Input ~ 0
D0
Wire Wire Line
	6500 4200 6550 4200
Wire Wire Line
	6500 4300 6550 4300
Wire Wire Line
	6500 4400 6550 4400
Wire Wire Line
	6500 4500 6550 4500
Wire Wire Line
	6500 4600 6550 4600
Wire Wire Line
	6500 4700 6550 4700
Wire Wire Line
	6750 4800 6750 4950
Wire Wire Line
	6750 4950 6700 4950
Text GLabel 6550 1000 2    50   Input ~ 0
nc1
Text GLabel 6550 1100 2    50   Input ~ 0
nc2
Text GLabel 6550 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J9
U 1 1 63D40850
P 7050 2800
F 0 "J9" H 7050 675 50  0000 C CNN
F 1 "Bus" H 7025 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 7050 2800 50  0001 C CNN
F 3 "~" H 7050 2800 50  0001 C CNN
	1    7050 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 63D4085A
P 7200 700
F 0 "#PWR016" H 7200 450 50  0001 C CNN
F 1 "GND" H 7205 527 50  0000 C CNN
F 2 "" H 7200 700 50  0001 C CNN
F 3 "" H 7200 700 50  0001 C CNN
	1    7200 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 63D40864
P 7450 4950
F 0 "#PWR017" H 7450 4800 50  0001 C CNN
F 1 "+5V" H 7465 5123 50  0000 C CNN
F 2 "" H 7450 4950 50  0001 C CNN
F 3 "" H 7450 4950 50  0001 C CNN
	1    7450 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 1700 7250 1700
Wire Wire Line
	7300 900  7250 900 
Wire Wire Line
	7300 1600 7250 1600
Wire Wire Line
	7300 1500 7250 1500
Wire Wire Line
	7300 1400 7250 1400
Wire Wire Line
	7300 1300 7250 1300
Wire Wire Line
	7300 1200 7250 1200
Wire Wire Line
	7300 1100 7250 1100
Wire Wire Line
	7300 1000 7250 1000
Wire Wire Line
	7300 2200 7250 2200
Wire Wire Line
	7300 2300 7250 2300
Wire Wire Line
	7300 2400 7250 2400
Wire Wire Line
	7300 2500 7250 2500
Wire Wire Line
	7300 2600 7250 2600
Wire Wire Line
	7300 2700 7250 2700
Wire Wire Line
	7300 2800 7250 2800
Wire Wire Line
	7300 2900 7250 2900
Wire Wire Line
	7300 4100 7250 4100
Wire Wire Line
	7300 4000 7250 4000
Wire Wire Line
	7300 3900 7250 3900
Wire Wire Line
	7300 3800 7250 3800
Wire Wire Line
	7300 3700 7250 3700
Wire Wire Line
	7300 3600 7250 3600
Wire Wire Line
	7300 3500 7250 3500
Wire Wire Line
	7300 3400 7250 3400
Wire Wire Line
	7300 3300 7250 3300
Wire Wire Line
	7300 3200 7250 3200
Wire Wire Line
	7300 3100 7250 3100
Wire Wire Line
	7300 3000 7250 3000
Wire Wire Line
	7300 2100 7250 2100
Wire Wire Line
	7300 2000 7250 2000
Wire Wire Line
	7300 1900 7250 1900
Wire Wire Line
	7300 1800 7250 1800
Text GLabel 7300 4700 2    50   Input ~ 0
~RST
Text GLabel 7300 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	7500 4800 7250 4800
Wire Wire Line
	7200 700  7300 700 
Wire Wire Line
	7300 700  7300 900 
Text GLabel 7300 3100 2    50   Input ~ 0
FC
Text GLabel 7300 3000 2    50   Input ~ 0
FZ
Text GLabel 7300 2900 2    50   Input ~ 0
FV
Text GLabel 7300 2800 2    50   Input ~ 0
FN
Text GLabel 7300 3200 2    50   Input ~ 0
FB
Text GLabel 7300 3300 2    50   Input ~ 0
SE
Text GLabel 7300 3400 2    50   Input ~ 0
C1
Text GLabel 7300 3500 2    50   Input ~ 0
C0
Text GLabel 7300 3600 2    50   Input ~ 0
CS
Text GLabel 7300 3700 2    50   Input ~ 0
CC
Text GLabel 7300 3800 2    50   Input ~ 0
M1
Text GLabel 7300 3900 2    50   Input ~ 0
M0
Text GLabel 7300 4000 2    50   Input ~ 0
LF
Text GLabel 7300 4200 2    50   Input ~ 0
N
Text GLabel 7300 4300 2    50   Input ~ 0
PI
Text GLabel 7300 2000 2    50   Input ~ 0
WR3
Text GLabel 7300 2100 2    50   Input ~ 0
WR2
Text GLabel 7300 2200 2    50   Input ~ 0
WR1
Text GLabel 7300 2300 2    50   Input ~ 0
WR0
Text GLabel 7300 2400 2    50   Input ~ 0
RR3
Text GLabel 7300 2500 2    50   Input ~ 0
RR2
Text GLabel 7300 2600 2    50   Input ~ 0
RR1
Text GLabel 7300 2700 2    50   Input ~ 0
RR0
Text GLabel 7300 1200 2    50   Input ~ 0
D7
Text GLabel 7300 1300 2    50   Input ~ 0
D6
Text GLabel 7300 1400 2    50   Input ~ 0
D5
Text GLabel 7300 1500 2    50   Input ~ 0
D4
Text GLabel 7300 1600 2    50   Input ~ 0
D3
Text GLabel 7300 1700 2    50   Input ~ 0
D2
Text GLabel 7300 1800 2    50   Input ~ 0
D1
Text GLabel 7300 1900 2    50   Input ~ 0
D0
Wire Wire Line
	7250 4200 7300 4200
Wire Wire Line
	7250 4300 7300 4300
Wire Wire Line
	7250 4400 7300 4400
Wire Wire Line
	7250 4500 7300 4500
Wire Wire Line
	7250 4600 7300 4600
Wire Wire Line
	7250 4700 7300 4700
Wire Wire Line
	7500 4800 7500 4950
Wire Wire Line
	7500 4950 7450 4950
Text GLabel 7300 1000 2    50   Input ~ 0
nc1
Text GLabel 7300 1100 2    50   Input ~ 0
nc2
Text GLabel 7300 4500 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J10
U 1 1 64200886
P 7800 2800
F 0 "J10" H 7800 675 50  0000 C CNN
F 1 "Bus" H 7775 575 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 7800 2800 50  0001 C CNN
F 3 "~" H 7800 2800 50  0001 C CNN
	1    7800 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 64201B18
P 7950 700
F 0 "#PWR018" H 7950 450 50  0001 C CNN
F 1 "GND" H 7955 527 50  0000 C CNN
F 2 "" H 7950 700 50  0001 C CNN
F 3 "" H 7950 700 50  0001 C CNN
	1    7950 700 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 64201B22
P 8200 4950
F 0 "#PWR020" H 8200 4800 50  0001 C CNN
F 1 "+5V" H 8215 5123 50  0000 C CNN
F 2 "" H 8200 4950 50  0001 C CNN
F 3 "" H 8200 4950 50  0001 C CNN
	1    8200 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 1700 8000 1700
Wire Wire Line
	8050 900  8000 900 
Wire Wire Line
	8050 1600 8000 1600
Wire Wire Line
	8050 1500 8000 1500
Wire Wire Line
	8050 1400 8000 1400
Wire Wire Line
	8050 1300 8000 1300
Wire Wire Line
	8050 1200 8000 1200
Wire Wire Line
	8050 1100 8000 1100
Wire Wire Line
	8050 1000 8000 1000
Wire Wire Line
	8050 2200 8000 2200
Wire Wire Line
	8050 2300 8000 2300
Wire Wire Line
	8050 2400 8000 2400
Wire Wire Line
	8050 2500 8000 2500
Wire Wire Line
	8050 2600 8000 2600
Wire Wire Line
	8050 2700 8000 2700
Wire Wire Line
	8050 2800 8000 2800
Wire Wire Line
	8050 2900 8000 2900
Wire Wire Line
	8050 4100 8000 4100
Wire Wire Line
	8050 4000 8000 4000
Wire Wire Line
	8050 3900 8000 3900
Wire Wire Line
	8050 3800 8000 3800
Wire Wire Line
	8050 3700 8000 3700
Wire Wire Line
	8050 3600 8000 3600
Wire Wire Line
	8050 3500 8000 3500
Wire Wire Line
	8050 3400 8000 3400
Wire Wire Line
	8050 3300 8000 3300
Wire Wire Line
	8050 3200 8000 3200
Wire Wire Line
	8050 3100 8000 3100
Wire Wire Line
	8050 3000 8000 3000
Wire Wire Line
	8050 2100 8000 2100
Wire Wire Line
	8050 2000 8000 2000
Wire Wire Line
	8050 1900 8000 1900
Wire Wire Line
	8050 1800 8000 1800
Text GLabel 8050 4700 2    50   Input ~ 0
~RST
Text GLabel 8050 4400 2    50   Input ~ 0
CLK
Wire Wire Line
	8250 4800 8000 4800
Wire Wire Line
	7950 700  8050 700 
Wire Wire Line
	8050 700  8050 900 
Text GLabel 8050 3100 2    50   Input ~ 0
FC
Text GLabel 8050 3000 2    50   Input ~ 0
FZ
Text GLabel 8050 2900 2    50   Input ~ 0
FV
Text GLabel 8050 2800 2    50   Input ~ 0
FN
Text GLabel 8050 3200 2    50   Input ~ 0
FB
Text GLabel 8050 3300 2    50   Input ~ 0
SE
Text GLabel 8050 3400 2    50   Input ~ 0
C1
Text GLabel 8050 3500 2    50   Input ~ 0
C0
Text GLabel 8050 3600 2    50   Input ~ 0
CS
Text GLabel 8050 3700 2    50   Input ~ 0
CC
Text GLabel 8050 3800 2    50   Input ~ 0
M1
Text GLabel 8050 3900 2    50   Input ~ 0
M0
Text GLabel 8050 4000 2    50   Input ~ 0
LF
Text GLabel 8050 4200 2    50   Input ~ 0
N
Text GLabel 8050 4300 2    50   Input ~ 0
PI
Text GLabel 8050 2000 2    50   Input ~ 0
WR3
Text GLabel 8050 2100 2    50   Input ~ 0
WR2
Text GLabel 8050 2200 2    50   Input ~ 0
WR1
Text GLabel 8050 2300 2    50   Input ~ 0
WR0
Text GLabel 8050 2400 2    50   Input ~ 0
RR3
Text GLabel 8050 2500 2    50   Input ~ 0
RR2
Text GLabel 8050 2600 2    50   Input ~ 0
RR1
Text GLabel 8050 2700 2    50   Input ~ 0
RR0
Text GLabel 8050 1200 2    50   Input ~ 0
D7
Text GLabel 8050 1300 2    50   Input ~ 0
D6
Text GLabel 8050 1400 2    50   Input ~ 0
D5
Text GLabel 8050 1500 2    50   Input ~ 0
D4
Text GLabel 8050 1600 2    50   Input ~ 0
D3
Text GLabel 8050 1700 2    50   Input ~ 0
D2
Text GLabel 8050 1800 2    50   Input ~ 0
D1
Text GLabel 8050 1900 2    50   Input ~ 0
D0
Wire Wire Line
	8000 4200 8050 4200
Wire Wire Line
	8000 4300 8050 4300
Wire Wire Line
	8000 4400 8050 4400
Wire Wire Line
	8000 4500 8050 4500
Wire Wire Line
	8000 4600 8050 4600
Wire Wire Line
	8000 4700 8050 4700
Wire Wire Line
	8250 4800 8250 4950
Wire Wire Line
	8250 4950 8200 4950
Text GLabel 8050 1000 2    50   Input ~ 0
nc1
Text GLabel 8050 1100 2    50   Input ~ 0
nc2
Text GLabel 8050 4500 2    50   Input ~ 0
nc3
Text GLabel 2050 4600 2    50   Input ~ 0
~JMP
Text GLabel 2800 4600 2    50   Input ~ 0
~JMP
Text GLabel 3550 4600 2    50   Input ~ 0
~JMP
Text GLabel 4300 4600 2    50   Input ~ 0
~JMP
Text GLabel 5050 4600 2    50   Input ~ 0
~JMP
Text GLabel 2050 4100 2    50   Input ~ 0
JE
Text GLabel 2800 4100 2    50   Input ~ 0
JE
Text GLabel 3550 4100 2    50   Input ~ 0
JE
Text GLabel 4300 4100 2    50   Input ~ 0
JE
Text GLabel 5050 4100 2    50   Input ~ 0
JE
Text GLabel 5800 4100 2    50   Input ~ 0
JE
Text GLabel 6550 4100 2    50   Input ~ 0
JE
Text GLabel 7300 4100 2    50   Input ~ 0
JE
Text GLabel 8050 4100 2    50   Input ~ 0
JE
Text GLabel 5800 4600 2    50   Input ~ 0
~JMP
Text GLabel 6550 4600 2    50   Input ~ 0
~JMP
Text GLabel 7300 4600 2    50   Input ~ 0
~JMP
Text GLabel 8050 4600 2    50   Input ~ 0
~JMP
$Comp
L Connector:Screw_Terminal_01x02 J29
U 1 1 631BC50C
P 9100 5950
F 0 "J29" V 8972 6030 50  0000 L CNN
F 1 "POWER IN" V 9200 5750 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 9100 5950 50  0001 C CNN
F 3 "~" H 9100 5950 50  0001 C CNN
	1    9100 5950
	0    -1   1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J30
U 1 1 63249C2B
P 9100 6400
F 0 "J30" V 8972 6480 50  0000 L CNN
F 1 "POWER IN" V 9200 6200 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 9100 6400 50  0001 C CNN
F 3 "~" H 9100 6400 50  0001 C CNN
	1    9100 6400
	0    -1   1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J27
U 1 1 6324A5B5
P 9200 4950
F 0 "J27" V 9072 5030 50  0000 L CNN
F 1 "POWER IN" V 9300 4750 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 9200 4950 50  0001 C CNN
F 3 "~" H 9200 4950 50  0001 C CNN
	1    9200 4950
	0    1    -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J28
U 1 1 6324B1AF
P 9200 5400
F 0 "J28" V 9072 5480 50  0000 L CNN
F 1 "POWER IN" V 9300 5200 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 9200 5400 50  0001 C CNN
F 3 "~" H 9200 5400 50  0001 C CNN
	1    9200 5400
	0    1    -1   0   
$EndComp
Wire Wire Line
	9200 5600 9400 5600
Wire Wire Line
	9100 5750 8900 5750
Wire Wire Line
	9100 6200 8900 6200
Wire Wire Line
	9200 5150 9400 5150
Wire Wire Line
	9100 5600 8900 5600
Wire Wire Line
	9200 6200 9400 6200
$Comp
L power:+5V #PWR0103
U 1 1 637E84D7
P 8900 4900
F 0 "#PWR0103" H 8900 4750 50  0001 C CNN
F 1 "+5V" H 8915 5073 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 637E8B6A
P 9400 6550
F 0 "#PWR0104" H 9400 6300 50  0001 C CNN
F 1 "GND" H 9405 6377 50  0000 C CNN
F 2 "" H 9400 6550 50  0001 C CNN
F 3 "" H 9400 6550 50  0001 C CNN
	1    9400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5150 8900 5150
Connection ~ 9400 6200
Wire Wire Line
	9400 6200 9400 6550
Wire Wire Line
	9400 5150 9400 5600
Connection ~ 8900 5600
Wire Wire Line
	8900 5600 8900 5750
Connection ~ 9400 5600
Wire Wire Line
	9400 5600 9400 5750
Wire Wire Line
	8900 4900 8900 5150
Connection ~ 8900 5150
Wire Wire Line
	8900 5150 8900 5600
Connection ~ 8900 5750
Connection ~ 9400 5750
Wire Wire Line
	8900 5750 8900 6200
Wire Wire Line
	9400 5750 9400 6200
Wire Wire Line
	9200 5750 9400 5750
$EndSCHEMATC
