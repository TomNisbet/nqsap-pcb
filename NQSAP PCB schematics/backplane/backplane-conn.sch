EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4900 1150 0    98   ~ 0
Additional Backplane Connectors
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BD07
P 2750 3700
AR Path="/6451BD07" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BD07" Ref="J11"  Part="1" 
F 0 "J11" H 2750 1575 50  0000 C CNN
F 1 "Bus" H 2725 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 2750 3700 50  0001 C CNN
F 3 "~" H 2750 3700 50  0001 C CNN
	1    2750 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BD0D
P 2900 1600
AR Path="/6451BD0D" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BD0D" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 2900 1350 50  0001 C CNN
F 1 "GND" H 2905 1427 50  0000 C CNN
F 2 "" H 2900 1600 50  0001 C CNN
F 3 "" H 2900 1600 50  0001 C CNN
	1    2900 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BD13
P 3150 5850
AR Path="/6451BD13" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BD13" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3150 5700 50  0001 C CNN
F 1 "+5V" H 3165 6023 50  0000 C CNN
F 2 "" H 3150 5850 50  0001 C CNN
F 3 "" H 3150 5850 50  0001 C CNN
	1    3150 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2600 2950 2600
Wire Wire Line
	3000 1800 2950 1800
Wire Wire Line
	3000 2500 2950 2500
Wire Wire Line
	3000 2400 2950 2400
Wire Wire Line
	3000 2300 2950 2300
Wire Wire Line
	3000 2200 2950 2200
Wire Wire Line
	3000 2100 2950 2100
Wire Wire Line
	3000 2000 2950 2000
Wire Wire Line
	3000 1900 2950 1900
Wire Wire Line
	3000 3100 2950 3100
Wire Wire Line
	3000 3200 2950 3200
Wire Wire Line
	3000 3300 2950 3300
Wire Wire Line
	3000 3400 2950 3400
Wire Wire Line
	3000 3500 2950 3500
Wire Wire Line
	3000 3600 2950 3600
Wire Wire Line
	3000 3700 2950 3700
Wire Wire Line
	3000 3800 2950 3800
Wire Wire Line
	3000 5000 2950 5000
Wire Wire Line
	3000 4900 2950 4900
Wire Wire Line
	3000 4800 2950 4800
Wire Wire Line
	3000 4700 2950 4700
Wire Wire Line
	3000 4600 2950 4600
Wire Wire Line
	3000 4500 2950 4500
Wire Wire Line
	3000 4400 2950 4400
Wire Wire Line
	3000 4300 2950 4300
Wire Wire Line
	3000 4200 2950 4200
Wire Wire Line
	3000 4100 2950 4100
Wire Wire Line
	3000 4000 2950 4000
Wire Wire Line
	3000 3900 2950 3900
Wire Wire Line
	3000 3000 2950 3000
Wire Wire Line
	3000 2900 2950 2900
Wire Wire Line
	3000 2800 2950 2800
Wire Wire Line
	3000 2700 2950 2700
Text GLabel 3000 5600 2    50   Input ~ 0
~RST
Text GLabel 3000 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	3200 5700 2950 5700
Wire Wire Line
	2900 1600 3000 1600
Wire Wire Line
	3000 1600 3000 1800
Text GLabel 3000 4000 2    50   Input ~ 0
FC
Text GLabel 3000 3900 2    50   Input ~ 0
FZ
Text GLabel 3000 3800 2    50   Input ~ 0
FV
Text GLabel 3000 3700 2    50   Input ~ 0
FN
Text GLabel 3000 4100 2    50   Input ~ 0
FB
Text GLabel 3000 4200 2    50   Input ~ 0
SE
Text GLabel 3000 4300 2    50   Input ~ 0
C1
Text GLabel 3000 4400 2    50   Input ~ 0
C0
Text GLabel 3000 4500 2    50   Input ~ 0
CS
Text GLabel 3000 4600 2    50   Input ~ 0
CC
Text GLabel 3000 4700 2    50   Input ~ 0
M1
Text GLabel 3000 4800 2    50   Input ~ 0
M0
Text GLabel 3000 4900 2    50   Input ~ 0
LF
Text GLabel 3000 5000 2    50   Input ~ 0
JE
Text GLabel 3000 5100 2    50   Input ~ 0
N
Text GLabel 3000 5200 2    50   Input ~ 0
PI
Text GLabel 3000 2900 2    50   Input ~ 0
WR3
Text GLabel 3000 3000 2    50   Input ~ 0
WR2
Text GLabel 3000 3100 2    50   Input ~ 0
WR1
Text GLabel 3000 3200 2    50   Input ~ 0
WR0
Text GLabel 3000 3300 2    50   Input ~ 0
RR3
Text GLabel 3000 3400 2    50   Input ~ 0
RR2
Text GLabel 3000 3500 2    50   Input ~ 0
RR1
Text GLabel 3000 3600 2    50   Input ~ 0
RR0
Text GLabel 3000 2100 2    50   Input ~ 0
D7
Text GLabel 3000 2200 2    50   Input ~ 0
D6
Text GLabel 3000 2300 2    50   Input ~ 0
D5
Text GLabel 3000 2400 2    50   Input ~ 0
D4
Text GLabel 3000 2500 2    50   Input ~ 0
D3
Text GLabel 3000 2600 2    50   Input ~ 0
D2
Text GLabel 3000 2700 2    50   Input ~ 0
D1
Text GLabel 3000 2800 2    50   Input ~ 0
D0
Wire Wire Line
	2950 5100 3000 5100
Wire Wire Line
	2950 5200 3000 5200
Wire Wire Line
	2950 5300 3000 5300
Wire Wire Line
	2950 5400 3000 5400
Wire Wire Line
	2950 5500 3000 5500
Wire Wire Line
	2950 5600 3000 5600
Wire Wire Line
	3200 5700 3200 5850
Wire Wire Line
	3200 5850 3150 5850
Text GLabel 3000 1900 2    50   Input ~ 0
nc1
Text GLabel 3000 2000 2    50   Input ~ 0
nc2
Text GLabel 3000 5400 2    50   Input ~ 0
nc3
Text GLabel 3000 5500 2    50   Input ~ 0
~JMP
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BD6B
P 3500 3700
AR Path="/6451BD6B" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BD6B" Ref="J12"  Part="1" 
F 0 "J12" H 3500 1575 50  0000 C CNN
F 1 "Bus" H 3475 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 3500 3700 50  0001 C CNN
F 3 "~" H 3500 3700 50  0001 C CNN
	1    3500 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BD71
P 3650 1600
AR Path="/6451BD71" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BD71" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 3650 1350 50  0001 C CNN
F 1 "GND" H 3655 1427 50  0000 C CNN
F 2 "" H 3650 1600 50  0001 C CNN
F 3 "" H 3650 1600 50  0001 C CNN
	1    3650 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BD77
P 3900 5850
AR Path="/6451BD77" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BD77" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 3900 5700 50  0001 C CNN
F 1 "+5V" H 3915 6023 50  0000 C CNN
F 2 "" H 3900 5850 50  0001 C CNN
F 3 "" H 3900 5850 50  0001 C CNN
	1    3900 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 2600 3700 2600
Wire Wire Line
	3750 1800 3700 1800
Wire Wire Line
	3750 2500 3700 2500
Wire Wire Line
	3750 2400 3700 2400
Wire Wire Line
	3750 2300 3700 2300
Wire Wire Line
	3750 2200 3700 2200
Wire Wire Line
	3750 2100 3700 2100
Wire Wire Line
	3750 2000 3700 2000
Wire Wire Line
	3750 1900 3700 1900
Wire Wire Line
	3750 3100 3700 3100
Wire Wire Line
	3750 3200 3700 3200
Wire Wire Line
	3750 3300 3700 3300
Wire Wire Line
	3750 3400 3700 3400
Wire Wire Line
	3750 3500 3700 3500
Wire Wire Line
	3750 3600 3700 3600
Wire Wire Line
	3750 3700 3700 3700
Wire Wire Line
	3750 3800 3700 3800
Wire Wire Line
	3750 5000 3700 5000
Wire Wire Line
	3750 4900 3700 4900
Wire Wire Line
	3750 4800 3700 4800
Wire Wire Line
	3750 4700 3700 4700
Wire Wire Line
	3750 4600 3700 4600
Wire Wire Line
	3750 4500 3700 4500
Wire Wire Line
	3750 4400 3700 4400
Wire Wire Line
	3750 4300 3700 4300
Wire Wire Line
	3750 4200 3700 4200
Wire Wire Line
	3750 4100 3700 4100
Wire Wire Line
	3750 4000 3700 4000
Wire Wire Line
	3750 3900 3700 3900
Wire Wire Line
	3750 3000 3700 3000
Wire Wire Line
	3750 2900 3700 2900
Wire Wire Line
	3750 2800 3700 2800
Wire Wire Line
	3750 2700 3700 2700
Text GLabel 3750 5600 2    50   Input ~ 0
~RST
Text GLabel 3750 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	3950 5700 3700 5700
Wire Wire Line
	3650 1600 3750 1600
Wire Wire Line
	3750 1600 3750 1800
Text GLabel 3750 4000 2    50   Input ~ 0
FC
Text GLabel 3750 3900 2    50   Input ~ 0
FZ
Text GLabel 3750 3800 2    50   Input ~ 0
FV
Text GLabel 3750 3700 2    50   Input ~ 0
FN
Text GLabel 3750 4100 2    50   Input ~ 0
FB
Text GLabel 3750 4200 2    50   Input ~ 0
SE
Text GLabel 3750 4300 2    50   Input ~ 0
C1
Text GLabel 3750 4400 2    50   Input ~ 0
C0
Text GLabel 3750 4500 2    50   Input ~ 0
CS
Text GLabel 3750 4600 2    50   Input ~ 0
CC
Text GLabel 3750 4700 2    50   Input ~ 0
M1
Text GLabel 3750 4800 2    50   Input ~ 0
M0
Text GLabel 3750 4900 2    50   Input ~ 0
LF
Text GLabel 3750 5100 2    50   Input ~ 0
N
Text GLabel 3750 5200 2    50   Input ~ 0
PI
Text GLabel 3750 2900 2    50   Input ~ 0
WR3
Text GLabel 3750 3000 2    50   Input ~ 0
WR2
Text GLabel 3750 3100 2    50   Input ~ 0
WR1
Text GLabel 3750 3200 2    50   Input ~ 0
WR0
Text GLabel 3750 3300 2    50   Input ~ 0
RR3
Text GLabel 3750 3400 2    50   Input ~ 0
RR2
Text GLabel 3750 3500 2    50   Input ~ 0
RR1
Text GLabel 3750 3600 2    50   Input ~ 0
RR0
Text GLabel 3750 2100 2    50   Input ~ 0
D7
Text GLabel 3750 2200 2    50   Input ~ 0
D6
Text GLabel 3750 2300 2    50   Input ~ 0
D5
Text GLabel 3750 2400 2    50   Input ~ 0
D4
Text GLabel 3750 2500 2    50   Input ~ 0
D3
Text GLabel 3750 2600 2    50   Input ~ 0
D2
Text GLabel 3750 2700 2    50   Input ~ 0
D1
Text GLabel 3750 2800 2    50   Input ~ 0
D0
Wire Wire Line
	3700 5100 3750 5100
Wire Wire Line
	3700 5200 3750 5200
Wire Wire Line
	3700 5300 3750 5300
Wire Wire Line
	3700 5400 3750 5400
Wire Wire Line
	3700 5500 3750 5500
Wire Wire Line
	3700 5600 3750 5600
Wire Wire Line
	3950 5700 3950 5850
Wire Wire Line
	3950 5850 3900 5850
Text GLabel 3750 1900 2    50   Input ~ 0
nc1
Text GLabel 3750 2000 2    50   Input ~ 0
nc2
Text GLabel 3750 5400 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BDCF
P 4250 3700
AR Path="/6451BDCF" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BDCF" Ref="J13"  Part="1" 
F 0 "J13" H 4250 1575 50  0000 C CNN
F 1 "Bus" H 4225 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 4250 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
	1    4250 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BDD5
P 4400 1600
AR Path="/6451BDD5" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BDD5" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4400 1350 50  0001 C CNN
F 1 "GND" H 4405 1427 50  0000 C CNN
F 2 "" H 4400 1600 50  0001 C CNN
F 3 "" H 4400 1600 50  0001 C CNN
	1    4400 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BDDB
P 4650 5850
AR Path="/6451BDDB" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BDDB" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4650 5700 50  0001 C CNN
F 1 "+5V" H 4665 6023 50  0000 C CNN
F 2 "" H 4650 5850 50  0001 C CNN
F 3 "" H 4650 5850 50  0001 C CNN
	1    4650 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 2600 4450 2600
Wire Wire Line
	4500 1800 4450 1800
Wire Wire Line
	4500 2500 4450 2500
Wire Wire Line
	4500 2400 4450 2400
Wire Wire Line
	4500 2300 4450 2300
Wire Wire Line
	4500 2200 4450 2200
Wire Wire Line
	4500 2100 4450 2100
Wire Wire Line
	4500 2000 4450 2000
Wire Wire Line
	4500 1900 4450 1900
Wire Wire Line
	4500 3100 4450 3100
Wire Wire Line
	4500 3200 4450 3200
Wire Wire Line
	4500 3300 4450 3300
Wire Wire Line
	4500 3400 4450 3400
Wire Wire Line
	4500 3500 4450 3500
Wire Wire Line
	4500 3600 4450 3600
Wire Wire Line
	4500 3700 4450 3700
Wire Wire Line
	4500 3800 4450 3800
Wire Wire Line
	4500 5000 4450 5000
Wire Wire Line
	4500 4900 4450 4900
Wire Wire Line
	4500 4800 4450 4800
Wire Wire Line
	4500 4700 4450 4700
Wire Wire Line
	4500 4600 4450 4600
Wire Wire Line
	4500 4500 4450 4500
Wire Wire Line
	4500 4400 4450 4400
Wire Wire Line
	4500 4300 4450 4300
Wire Wire Line
	4500 4200 4450 4200
Wire Wire Line
	4500 4100 4450 4100
Wire Wire Line
	4500 4000 4450 4000
Wire Wire Line
	4500 3900 4450 3900
Wire Wire Line
	4500 3000 4450 3000
Wire Wire Line
	4500 2900 4450 2900
Wire Wire Line
	4500 2800 4450 2800
Wire Wire Line
	4500 2700 4450 2700
Text GLabel 4500 5600 2    50   Input ~ 0
~RST
Text GLabel 4500 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	4700 5700 4450 5700
Wire Wire Line
	4400 1600 4500 1600
Wire Wire Line
	4500 1600 4500 1800
Text GLabel 4500 4000 2    50   Input ~ 0
FC
Text GLabel 4500 3900 2    50   Input ~ 0
FZ
Text GLabel 4500 3800 2    50   Input ~ 0
FV
Text GLabel 4500 3700 2    50   Input ~ 0
FN
Text GLabel 4500 4100 2    50   Input ~ 0
FB
Text GLabel 4500 4200 2    50   Input ~ 0
SE
Text GLabel 4500 4300 2    50   Input ~ 0
C1
Text GLabel 4500 4400 2    50   Input ~ 0
C0
Text GLabel 4500 4500 2    50   Input ~ 0
CS
Text GLabel 4500 4600 2    50   Input ~ 0
CC
Text GLabel 4500 4700 2    50   Input ~ 0
M1
Text GLabel 4500 4800 2    50   Input ~ 0
M0
Text GLabel 4500 4900 2    50   Input ~ 0
LF
Text GLabel 4500 5100 2    50   Input ~ 0
N
Text GLabel 4500 5200 2    50   Input ~ 0
PI
Text GLabel 4500 2900 2    50   Input ~ 0
WR3
Text GLabel 4500 3000 2    50   Input ~ 0
WR2
Text GLabel 4500 3100 2    50   Input ~ 0
WR1
Text GLabel 4500 3200 2    50   Input ~ 0
WR0
Text GLabel 4500 3300 2    50   Input ~ 0
RR3
Text GLabel 4500 3400 2    50   Input ~ 0
RR2
Text GLabel 4500 3500 2    50   Input ~ 0
RR1
Text GLabel 4500 3600 2    50   Input ~ 0
RR0
Text GLabel 4500 2100 2    50   Input ~ 0
D7
Text GLabel 4500 2200 2    50   Input ~ 0
D6
Text GLabel 4500 2300 2    50   Input ~ 0
D5
Text GLabel 4500 2400 2    50   Input ~ 0
D4
Text GLabel 4500 2500 2    50   Input ~ 0
D3
Text GLabel 4500 2600 2    50   Input ~ 0
D2
Text GLabel 4500 2700 2    50   Input ~ 0
D1
Text GLabel 4500 2800 2    50   Input ~ 0
D0
Wire Wire Line
	4450 5100 4500 5100
Wire Wire Line
	4450 5200 4500 5200
Wire Wire Line
	4450 5300 4500 5300
Wire Wire Line
	4450 5400 4500 5400
Wire Wire Line
	4450 5500 4500 5500
Wire Wire Line
	4450 5600 4500 5600
Wire Wire Line
	4700 5700 4700 5850
Wire Wire Line
	4700 5850 4650 5850
Text GLabel 4500 1900 2    50   Input ~ 0
nc1
Text GLabel 4500 2000 2    50   Input ~ 0
nc2
Text GLabel 4500 5400 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BE33
P 5000 3700
AR Path="/6451BE33" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BE33" Ref="J14"  Part="1" 
F 0 "J14" H 5000 1575 50  0000 C CNN
F 1 "Bus" H 4975 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 5000 3700 50  0001 C CNN
F 3 "~" H 5000 3700 50  0001 C CNN
	1    5000 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BE39
P 5150 1600
AR Path="/6451BE39" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BE39" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 5150 1350 50  0001 C CNN
F 1 "GND" H 5155 1427 50  0000 C CNN
F 2 "" H 5150 1600 50  0001 C CNN
F 3 "" H 5150 1600 50  0001 C CNN
	1    5150 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BE3F
P 5400 5850
AR Path="/6451BE3F" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BE3F" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 5400 5700 50  0001 C CNN
F 1 "+5V" H 5415 6023 50  0000 C CNN
F 2 "" H 5400 5850 50  0001 C CNN
F 3 "" H 5400 5850 50  0001 C CNN
	1    5400 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 2600 5200 2600
Wire Wire Line
	5250 1800 5200 1800
Wire Wire Line
	5250 2500 5200 2500
Wire Wire Line
	5250 2400 5200 2400
Wire Wire Line
	5250 2300 5200 2300
Wire Wire Line
	5250 2200 5200 2200
Wire Wire Line
	5250 2100 5200 2100
Wire Wire Line
	5250 2000 5200 2000
Wire Wire Line
	5250 1900 5200 1900
Wire Wire Line
	5250 3100 5200 3100
Wire Wire Line
	5250 3200 5200 3200
Wire Wire Line
	5250 3300 5200 3300
Wire Wire Line
	5250 3400 5200 3400
Wire Wire Line
	5250 3500 5200 3500
Wire Wire Line
	5250 3600 5200 3600
Wire Wire Line
	5250 3700 5200 3700
Wire Wire Line
	5250 3800 5200 3800
Wire Wire Line
	5250 5000 5200 5000
Wire Wire Line
	5250 4900 5200 4900
Wire Wire Line
	5250 4800 5200 4800
Wire Wire Line
	5250 4700 5200 4700
Wire Wire Line
	5250 4600 5200 4600
Wire Wire Line
	5250 4500 5200 4500
Wire Wire Line
	5250 4400 5200 4400
Wire Wire Line
	5250 4300 5200 4300
Wire Wire Line
	5250 4200 5200 4200
Wire Wire Line
	5250 4100 5200 4100
Wire Wire Line
	5250 4000 5200 4000
Wire Wire Line
	5250 3900 5200 3900
Wire Wire Line
	5250 3000 5200 3000
Wire Wire Line
	5250 2900 5200 2900
Wire Wire Line
	5250 2800 5200 2800
Wire Wire Line
	5250 2700 5200 2700
Text GLabel 5250 5600 2    50   Input ~ 0
~RST
Text GLabel 5250 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	5450 5700 5200 5700
Wire Wire Line
	5150 1600 5250 1600
Wire Wire Line
	5250 1600 5250 1800
Text GLabel 5250 4000 2    50   Input ~ 0
FC
Text GLabel 5250 3900 2    50   Input ~ 0
FZ
Text GLabel 5250 3800 2    50   Input ~ 0
FV
Text GLabel 5250 3700 2    50   Input ~ 0
FN
Text GLabel 5250 4100 2    50   Input ~ 0
FB
Text GLabel 5250 4200 2    50   Input ~ 0
SE
Text GLabel 5250 4300 2    50   Input ~ 0
C1
Text GLabel 5250 4400 2    50   Input ~ 0
C0
Text GLabel 5250 4500 2    50   Input ~ 0
CS
Text GLabel 5250 4600 2    50   Input ~ 0
CC
Text GLabel 5250 4700 2    50   Input ~ 0
M1
Text GLabel 5250 4800 2    50   Input ~ 0
M0
Text GLabel 5250 4900 2    50   Input ~ 0
LF
Text GLabel 5250 5100 2    50   Input ~ 0
N
Text GLabel 5250 5200 2    50   Input ~ 0
PI
Text GLabel 5250 2900 2    50   Input ~ 0
WR3
Text GLabel 5250 3000 2    50   Input ~ 0
WR2
Text GLabel 5250 3100 2    50   Input ~ 0
WR1
Text GLabel 5250 3200 2    50   Input ~ 0
WR0
Text GLabel 5250 3300 2    50   Input ~ 0
RR3
Text GLabel 5250 3400 2    50   Input ~ 0
RR2
Text GLabel 5250 3500 2    50   Input ~ 0
RR1
Text GLabel 5250 3600 2    50   Input ~ 0
RR0
Text GLabel 5250 2100 2    50   Input ~ 0
D7
Text GLabel 5250 2200 2    50   Input ~ 0
D6
Text GLabel 5250 2300 2    50   Input ~ 0
D5
Text GLabel 5250 2400 2    50   Input ~ 0
D4
Text GLabel 5250 2500 2    50   Input ~ 0
D3
Text GLabel 5250 2600 2    50   Input ~ 0
D2
Text GLabel 5250 2700 2    50   Input ~ 0
D1
Text GLabel 5250 2800 2    50   Input ~ 0
D0
Wire Wire Line
	5200 5100 5250 5100
Wire Wire Line
	5200 5200 5250 5200
Wire Wire Line
	5200 5300 5250 5300
Wire Wire Line
	5200 5400 5250 5400
Wire Wire Line
	5200 5500 5250 5500
Wire Wire Line
	5200 5600 5250 5600
Wire Wire Line
	5450 5700 5450 5850
Wire Wire Line
	5450 5850 5400 5850
Text GLabel 5250 1900 2    50   Input ~ 0
nc1
Text GLabel 5250 2000 2    50   Input ~ 0
nc2
Text GLabel 5250 5400 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BE97
P 5750 3700
AR Path="/6451BE97" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BE97" Ref="J15"  Part="1" 
F 0 "J15" H 5750 1575 50  0000 C CNN
F 1 "Bus" H 5725 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 5750 3700 50  0001 C CNN
F 3 "~" H 5750 3700 50  0001 C CNN
	1    5750 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BE9D
P 5900 1600
AR Path="/6451BE9D" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BE9D" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 5900 1350 50  0001 C CNN
F 1 "GND" H 5905 1427 50  0000 C CNN
F 2 "" H 5900 1600 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BEA3
P 6150 5850
AR Path="/6451BEA3" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BEA3" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 6150 5700 50  0001 C CNN
F 1 "+5V" H 6165 6023 50  0000 C CNN
F 2 "" H 6150 5850 50  0001 C CNN
F 3 "" H 6150 5850 50  0001 C CNN
	1    6150 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2600 5950 2600
Wire Wire Line
	6000 1800 5950 1800
Wire Wire Line
	6000 2500 5950 2500
Wire Wire Line
	6000 2400 5950 2400
Wire Wire Line
	6000 2300 5950 2300
Wire Wire Line
	6000 2200 5950 2200
Wire Wire Line
	6000 2100 5950 2100
Wire Wire Line
	6000 2000 5950 2000
Wire Wire Line
	6000 1900 5950 1900
Wire Wire Line
	6000 3100 5950 3100
Wire Wire Line
	6000 3200 5950 3200
Wire Wire Line
	6000 3300 5950 3300
Wire Wire Line
	6000 3400 5950 3400
Wire Wire Line
	6000 3500 5950 3500
Wire Wire Line
	6000 3600 5950 3600
Wire Wire Line
	6000 3700 5950 3700
Wire Wire Line
	6000 3800 5950 3800
Wire Wire Line
	6000 5000 5950 5000
Wire Wire Line
	6000 4900 5950 4900
Wire Wire Line
	6000 4800 5950 4800
Wire Wire Line
	6000 4700 5950 4700
Wire Wire Line
	6000 4600 5950 4600
Wire Wire Line
	6000 4500 5950 4500
Wire Wire Line
	6000 4400 5950 4400
Wire Wire Line
	6000 4300 5950 4300
Wire Wire Line
	6000 4200 5950 4200
Wire Wire Line
	6000 4100 5950 4100
Wire Wire Line
	6000 4000 5950 4000
Wire Wire Line
	6000 3900 5950 3900
Wire Wire Line
	6000 3000 5950 3000
Wire Wire Line
	6000 2900 5950 2900
Wire Wire Line
	6000 2800 5950 2800
Wire Wire Line
	6000 2700 5950 2700
Text GLabel 6000 5600 2    50   Input ~ 0
~RST
Text GLabel 6000 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	6200 5700 5950 5700
Wire Wire Line
	5900 1600 6000 1600
Wire Wire Line
	6000 1600 6000 1800
Text GLabel 6000 4000 2    50   Input ~ 0
FC
Text GLabel 6000 3900 2    50   Input ~ 0
FZ
Text GLabel 6000 3800 2    50   Input ~ 0
FV
Text GLabel 6000 3700 2    50   Input ~ 0
FN
Text GLabel 6000 4100 2    50   Input ~ 0
FB
Text GLabel 6000 4200 2    50   Input ~ 0
SE
Text GLabel 6000 4300 2    50   Input ~ 0
C1
Text GLabel 6000 4400 2    50   Input ~ 0
C0
Text GLabel 6000 4500 2    50   Input ~ 0
CS
Text GLabel 6000 4600 2    50   Input ~ 0
CC
Text GLabel 6000 4700 2    50   Input ~ 0
M1
Text GLabel 6000 4800 2    50   Input ~ 0
M0
Text GLabel 6000 4900 2    50   Input ~ 0
LF
Text GLabel 6000 5100 2    50   Input ~ 0
N
Text GLabel 6000 5200 2    50   Input ~ 0
PI
Text GLabel 6000 2900 2    50   Input ~ 0
WR3
Text GLabel 6000 3000 2    50   Input ~ 0
WR2
Text GLabel 6000 3100 2    50   Input ~ 0
WR1
Text GLabel 6000 3200 2    50   Input ~ 0
WR0
Text GLabel 6000 3300 2    50   Input ~ 0
RR3
Text GLabel 6000 3400 2    50   Input ~ 0
RR2
Text GLabel 6000 3500 2    50   Input ~ 0
RR1
Text GLabel 6000 3600 2    50   Input ~ 0
RR0
Text GLabel 6000 2100 2    50   Input ~ 0
D7
Text GLabel 6000 2200 2    50   Input ~ 0
D6
Text GLabel 6000 2300 2    50   Input ~ 0
D5
Text GLabel 6000 2400 2    50   Input ~ 0
D4
Text GLabel 6000 2500 2    50   Input ~ 0
D3
Text GLabel 6000 2600 2    50   Input ~ 0
D2
Text GLabel 6000 2700 2    50   Input ~ 0
D1
Text GLabel 6000 2800 2    50   Input ~ 0
D0
Wire Wire Line
	5950 5100 6000 5100
Wire Wire Line
	5950 5200 6000 5200
Wire Wire Line
	5950 5300 6000 5300
Wire Wire Line
	5950 5400 6000 5400
Wire Wire Line
	5950 5500 6000 5500
Wire Wire Line
	5950 5600 6000 5600
Wire Wire Line
	6200 5700 6200 5850
Wire Wire Line
	6200 5850 6150 5850
Text GLabel 6000 1900 2    50   Input ~ 0
nc1
Text GLabel 6000 2000 2    50   Input ~ 0
nc2
Text GLabel 6000 5400 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BEFB
P 6500 3700
AR Path="/6451BEFB" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BEFB" Ref="J16"  Part="1" 
F 0 "J16" H 6500 1575 50  0000 C CNN
F 1 "Bus" H 6475 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 6500 3700 50  0001 C CNN
F 3 "~" H 6500 3700 50  0001 C CNN
	1    6500 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BF01
P 6650 1600
AR Path="/6451BF01" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BF01" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 6650 1350 50  0001 C CNN
F 1 "GND" H 6655 1427 50  0000 C CNN
F 2 "" H 6650 1600 50  0001 C CNN
F 3 "" H 6650 1600 50  0001 C CNN
	1    6650 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BF07
P 6900 5850
AR Path="/6451BF07" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BF07" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6900 5700 50  0001 C CNN
F 1 "+5V" H 6915 6023 50  0000 C CNN
F 2 "" H 6900 5850 50  0001 C CNN
F 3 "" H 6900 5850 50  0001 C CNN
	1    6900 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2600 6700 2600
Wire Wire Line
	6750 1800 6700 1800
Wire Wire Line
	6750 2500 6700 2500
Wire Wire Line
	6750 2400 6700 2400
Wire Wire Line
	6750 2300 6700 2300
Wire Wire Line
	6750 2200 6700 2200
Wire Wire Line
	6750 2100 6700 2100
Wire Wire Line
	6750 2000 6700 2000
Wire Wire Line
	6750 1900 6700 1900
Wire Wire Line
	6750 3100 6700 3100
Wire Wire Line
	6750 3200 6700 3200
Wire Wire Line
	6750 3300 6700 3300
Wire Wire Line
	6750 3400 6700 3400
Wire Wire Line
	6750 3500 6700 3500
Wire Wire Line
	6750 3600 6700 3600
Wire Wire Line
	6750 3700 6700 3700
Wire Wire Line
	6750 3800 6700 3800
Wire Wire Line
	6750 5000 6700 5000
Wire Wire Line
	6750 4900 6700 4900
Wire Wire Line
	6750 4800 6700 4800
Wire Wire Line
	6750 4700 6700 4700
Wire Wire Line
	6750 4600 6700 4600
Wire Wire Line
	6750 4500 6700 4500
Wire Wire Line
	6750 4400 6700 4400
Wire Wire Line
	6750 4300 6700 4300
Wire Wire Line
	6750 4200 6700 4200
Wire Wire Line
	6750 4100 6700 4100
Wire Wire Line
	6750 4000 6700 4000
Wire Wire Line
	6750 3900 6700 3900
Wire Wire Line
	6750 3000 6700 3000
Wire Wire Line
	6750 2900 6700 2900
Wire Wire Line
	6750 2800 6700 2800
Wire Wire Line
	6750 2700 6700 2700
Text GLabel 6750 5600 2    50   Input ~ 0
~RST
Text GLabel 6750 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	6950 5700 6700 5700
Wire Wire Line
	6650 1600 6750 1600
Wire Wire Line
	6750 1600 6750 1800
Text GLabel 6750 4000 2    50   Input ~ 0
FC
Text GLabel 6750 3900 2    50   Input ~ 0
FZ
Text GLabel 6750 3800 2    50   Input ~ 0
FV
Text GLabel 6750 3700 2    50   Input ~ 0
FN
Text GLabel 6750 4100 2    50   Input ~ 0
FB
Text GLabel 6750 4200 2    50   Input ~ 0
SE
Text GLabel 6750 4300 2    50   Input ~ 0
C1
Text GLabel 6750 4400 2    50   Input ~ 0
C0
Text GLabel 6750 4500 2    50   Input ~ 0
CS
Text GLabel 6750 4600 2    50   Input ~ 0
CC
Text GLabel 6750 4700 2    50   Input ~ 0
M1
Text GLabel 6750 4800 2    50   Input ~ 0
M0
Text GLabel 6750 4900 2    50   Input ~ 0
LF
Text GLabel 6750 5100 2    50   Input ~ 0
N
Text GLabel 6750 5200 2    50   Input ~ 0
PI
Text GLabel 6750 2900 2    50   Input ~ 0
WR3
Text GLabel 6750 3000 2    50   Input ~ 0
WR2
Text GLabel 6750 3100 2    50   Input ~ 0
WR1
Text GLabel 6750 3200 2    50   Input ~ 0
WR0
Text GLabel 6750 3300 2    50   Input ~ 0
RR3
Text GLabel 6750 3400 2    50   Input ~ 0
RR2
Text GLabel 6750 3500 2    50   Input ~ 0
RR1
Text GLabel 6750 3600 2    50   Input ~ 0
RR0
Text GLabel 6750 2100 2    50   Input ~ 0
D7
Text GLabel 6750 2200 2    50   Input ~ 0
D6
Text GLabel 6750 2300 2    50   Input ~ 0
D5
Text GLabel 6750 2400 2    50   Input ~ 0
D4
Text GLabel 6750 2500 2    50   Input ~ 0
D3
Text GLabel 6750 2600 2    50   Input ~ 0
D2
Text GLabel 6750 2700 2    50   Input ~ 0
D1
Text GLabel 6750 2800 2    50   Input ~ 0
D0
Wire Wire Line
	6700 5100 6750 5100
Wire Wire Line
	6700 5200 6750 5200
Wire Wire Line
	6700 5300 6750 5300
Wire Wire Line
	6700 5400 6750 5400
Wire Wire Line
	6700 5500 6750 5500
Wire Wire Line
	6700 5600 6750 5600
Wire Wire Line
	6950 5700 6950 5850
Wire Wire Line
	6950 5850 6900 5850
Text GLabel 6750 1900 2    50   Input ~ 0
nc1
Text GLabel 6750 2000 2    50   Input ~ 0
nc2
Text GLabel 6750 5400 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BF5F
P 7250 3700
AR Path="/6451BF5F" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BF5F" Ref="J17"  Part="1" 
F 0 "J17" H 7250 1575 50  0000 C CNN
F 1 "Bus" H 7225 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 7250 3700 50  0001 C CNN
F 3 "~" H 7250 3700 50  0001 C CNN
	1    7250 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BF65
P 7400 1600
AR Path="/6451BF65" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BF65" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7400 1350 50  0001 C CNN
F 1 "GND" H 7405 1427 50  0000 C CNN
F 2 "" H 7400 1600 50  0001 C CNN
F 3 "" H 7400 1600 50  0001 C CNN
	1    7400 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BF6B
P 7650 5850
AR Path="/6451BF6B" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BF6B" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 7650 5700 50  0001 C CNN
F 1 "+5V" H 7665 6023 50  0000 C CNN
F 2 "" H 7650 5850 50  0001 C CNN
F 3 "" H 7650 5850 50  0001 C CNN
	1    7650 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 2600 7450 2600
Wire Wire Line
	7500 1800 7450 1800
Wire Wire Line
	7500 2500 7450 2500
Wire Wire Line
	7500 2400 7450 2400
Wire Wire Line
	7500 2300 7450 2300
Wire Wire Line
	7500 2200 7450 2200
Wire Wire Line
	7500 2100 7450 2100
Wire Wire Line
	7500 2000 7450 2000
Wire Wire Line
	7500 1900 7450 1900
Wire Wire Line
	7500 3100 7450 3100
Wire Wire Line
	7500 3200 7450 3200
Wire Wire Line
	7500 3300 7450 3300
Wire Wire Line
	7500 3400 7450 3400
Wire Wire Line
	7500 3500 7450 3500
Wire Wire Line
	7500 3600 7450 3600
Wire Wire Line
	7500 3700 7450 3700
Wire Wire Line
	7500 3800 7450 3800
Wire Wire Line
	7500 5000 7450 5000
Wire Wire Line
	7500 4900 7450 4900
Wire Wire Line
	7500 4800 7450 4800
Wire Wire Line
	7500 4700 7450 4700
Wire Wire Line
	7500 4600 7450 4600
Wire Wire Line
	7500 4500 7450 4500
Wire Wire Line
	7500 4400 7450 4400
Wire Wire Line
	7500 4300 7450 4300
Wire Wire Line
	7500 4200 7450 4200
Wire Wire Line
	7500 4100 7450 4100
Wire Wire Line
	7500 4000 7450 4000
Wire Wire Line
	7500 3900 7450 3900
Wire Wire Line
	7500 3000 7450 3000
Wire Wire Line
	7500 2900 7450 2900
Wire Wire Line
	7500 2800 7450 2800
Wire Wire Line
	7500 2700 7450 2700
Text GLabel 7500 5600 2    50   Input ~ 0
~RST
Text GLabel 7500 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	7700 5700 7450 5700
Wire Wire Line
	7400 1600 7500 1600
Wire Wire Line
	7500 1600 7500 1800
Text GLabel 7500 4000 2    50   Input ~ 0
FC
Text GLabel 7500 3900 2    50   Input ~ 0
FZ
Text GLabel 7500 3800 2    50   Input ~ 0
FV
Text GLabel 7500 3700 2    50   Input ~ 0
FN
Text GLabel 7500 4100 2    50   Input ~ 0
FB
Text GLabel 7500 4200 2    50   Input ~ 0
SE
Text GLabel 7500 4300 2    50   Input ~ 0
C1
Text GLabel 7500 4400 2    50   Input ~ 0
C0
Text GLabel 7500 4500 2    50   Input ~ 0
CS
Text GLabel 7500 4600 2    50   Input ~ 0
CC
Text GLabel 7500 4700 2    50   Input ~ 0
M1
Text GLabel 7500 4800 2    50   Input ~ 0
M0
Text GLabel 7500 4900 2    50   Input ~ 0
LF
Text GLabel 7500 5100 2    50   Input ~ 0
N
Text GLabel 7500 5200 2    50   Input ~ 0
PI
Text GLabel 7500 2900 2    50   Input ~ 0
WR3
Text GLabel 7500 3000 2    50   Input ~ 0
WR2
Text GLabel 7500 3100 2    50   Input ~ 0
WR1
Text GLabel 7500 3200 2    50   Input ~ 0
WR0
Text GLabel 7500 3300 2    50   Input ~ 0
RR3
Text GLabel 7500 3400 2    50   Input ~ 0
RR2
Text GLabel 7500 3500 2    50   Input ~ 0
RR1
Text GLabel 7500 3600 2    50   Input ~ 0
RR0
Text GLabel 7500 2100 2    50   Input ~ 0
D7
Text GLabel 7500 2200 2    50   Input ~ 0
D6
Text GLabel 7500 2300 2    50   Input ~ 0
D5
Text GLabel 7500 2400 2    50   Input ~ 0
D4
Text GLabel 7500 2500 2    50   Input ~ 0
D3
Text GLabel 7500 2600 2    50   Input ~ 0
D2
Text GLabel 7500 2700 2    50   Input ~ 0
D1
Text GLabel 7500 2800 2    50   Input ~ 0
D0
Wire Wire Line
	7450 5100 7500 5100
Wire Wire Line
	7450 5200 7500 5200
Wire Wire Line
	7450 5300 7500 5300
Wire Wire Line
	7450 5400 7500 5400
Wire Wire Line
	7450 5500 7500 5500
Wire Wire Line
	7450 5600 7500 5600
Wire Wire Line
	7700 5700 7700 5850
Wire Wire Line
	7700 5850 7650 5850
Text GLabel 7500 1900 2    50   Input ~ 0
nc1
Text GLabel 7500 2000 2    50   Input ~ 0
nc2
Text GLabel 7500 5400 2    50   Input ~ 0
nc3
$Comp
L Connector_Generic:Conn_01x40 J?
U 1 1 6451BFC3
P 8000 3700
AR Path="/6451BFC3" Ref="J?"  Part="1" 
AR Path="/654E5337/6451BFC3" Ref="J18"  Part="1" 
F 0 "J18" H 8000 1575 50  0000 C CNN
F 1 "Bus" H 7975 1475 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x40_P2.54mm_Vertical" H 8000 3700 50  0001 C CNN
F 3 "~" H 8000 3700 50  0001 C CNN
	1    8000 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6451BFC9
P 8150 1600
AR Path="/6451BFC9" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BFC9" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 8150 1350 50  0001 C CNN
F 1 "GND" H 8155 1427 50  0000 C CNN
F 2 "" H 8150 1600 50  0001 C CNN
F 3 "" H 8150 1600 50  0001 C CNN
	1    8150 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6451BFCF
P 8400 5850
AR Path="/6451BFCF" Ref="#PWR?"  Part="1" 
AR Path="/654E5337/6451BFCF" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 8400 5700 50  0001 C CNN
F 1 "+5V" H 8415 6023 50  0000 C CNN
F 2 "" H 8400 5850 50  0001 C CNN
F 3 "" H 8400 5850 50  0001 C CNN
	1    8400 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 2600 8200 2600
Wire Wire Line
	8250 1800 8200 1800
Wire Wire Line
	8250 2500 8200 2500
Wire Wire Line
	8250 2400 8200 2400
Wire Wire Line
	8250 2300 8200 2300
Wire Wire Line
	8250 2200 8200 2200
Wire Wire Line
	8250 2100 8200 2100
Wire Wire Line
	8250 2000 8200 2000
Wire Wire Line
	8250 1900 8200 1900
Wire Wire Line
	8250 3100 8200 3100
Wire Wire Line
	8250 3200 8200 3200
Wire Wire Line
	8250 3300 8200 3300
Wire Wire Line
	8250 3400 8200 3400
Wire Wire Line
	8250 3500 8200 3500
Wire Wire Line
	8250 3600 8200 3600
Wire Wire Line
	8250 3700 8200 3700
Wire Wire Line
	8250 3800 8200 3800
Wire Wire Line
	8250 5000 8200 5000
Wire Wire Line
	8250 4900 8200 4900
Wire Wire Line
	8250 4800 8200 4800
Wire Wire Line
	8250 4700 8200 4700
Wire Wire Line
	8250 4600 8200 4600
Wire Wire Line
	8250 4500 8200 4500
Wire Wire Line
	8250 4400 8200 4400
Wire Wire Line
	8250 4300 8200 4300
Wire Wire Line
	8250 4200 8200 4200
Wire Wire Line
	8250 4100 8200 4100
Wire Wire Line
	8250 4000 8200 4000
Wire Wire Line
	8250 3900 8200 3900
Wire Wire Line
	8250 3000 8200 3000
Wire Wire Line
	8250 2900 8200 2900
Wire Wire Line
	8250 2800 8200 2800
Wire Wire Line
	8250 2700 8200 2700
Text GLabel 8250 5600 2    50   Input ~ 0
~RST
Text GLabel 8250 5300 2    50   Input ~ 0
CLK
Wire Wire Line
	8450 5700 8200 5700
Wire Wire Line
	8150 1600 8250 1600
Wire Wire Line
	8250 1600 8250 1800
Text GLabel 8250 4000 2    50   Input ~ 0
FC
Text GLabel 8250 3900 2    50   Input ~ 0
FZ
Text GLabel 8250 3800 2    50   Input ~ 0
FV
Text GLabel 8250 3700 2    50   Input ~ 0
FN
Text GLabel 8250 4100 2    50   Input ~ 0
FB
Text GLabel 8250 4200 2    50   Input ~ 0
SE
Text GLabel 8250 4300 2    50   Input ~ 0
C1
Text GLabel 8250 4400 2    50   Input ~ 0
C0
Text GLabel 8250 4500 2    50   Input ~ 0
CS
Text GLabel 8250 4600 2    50   Input ~ 0
CC
Text GLabel 8250 4700 2    50   Input ~ 0
M1
Text GLabel 8250 4800 2    50   Input ~ 0
M0
Text GLabel 8250 4900 2    50   Input ~ 0
LF
Text GLabel 8250 5100 2    50   Input ~ 0
N
Text GLabel 8250 5200 2    50   Input ~ 0
PI
Text GLabel 8250 2900 2    50   Input ~ 0
WR3
Text GLabel 8250 3000 2    50   Input ~ 0
WR2
Text GLabel 8250 3100 2    50   Input ~ 0
WR1
Text GLabel 8250 3200 2    50   Input ~ 0
WR0
Text GLabel 8250 3300 2    50   Input ~ 0
RR3
Text GLabel 8250 3400 2    50   Input ~ 0
RR2
Text GLabel 8250 3500 2    50   Input ~ 0
RR1
Text GLabel 8250 3600 2    50   Input ~ 0
RR0
Text GLabel 8250 2100 2    50   Input ~ 0
D7
Text GLabel 8250 2200 2    50   Input ~ 0
D6
Text GLabel 8250 2300 2    50   Input ~ 0
D5
Text GLabel 8250 2400 2    50   Input ~ 0
D4
Text GLabel 8250 2500 2    50   Input ~ 0
D3
Text GLabel 8250 2600 2    50   Input ~ 0
D2
Text GLabel 8250 2700 2    50   Input ~ 0
D1
Text GLabel 8250 2800 2    50   Input ~ 0
D0
Wire Wire Line
	8200 5100 8250 5100
Wire Wire Line
	8200 5200 8250 5200
Wire Wire Line
	8200 5300 8250 5300
Wire Wire Line
	8200 5400 8250 5400
Wire Wire Line
	8200 5500 8250 5500
Wire Wire Line
	8200 5600 8250 5600
Wire Wire Line
	8450 5700 8450 5850
Wire Wire Line
	8450 5850 8400 5850
Text GLabel 8250 1900 2    50   Input ~ 0
nc1
Text GLabel 8250 2000 2    50   Input ~ 0
nc2
Text GLabel 8250 5400 2    50   Input ~ 0
nc3
Text GLabel 3750 5000 2    50   Input ~ 0
JE
Text GLabel 3750 5500 2    50   Input ~ 0
~JMP
Text GLabel 4500 5000 2    50   Input ~ 0
JE
Text GLabel 4500 5500 2    50   Input ~ 0
~JMP
Text GLabel 5250 5000 2    50   Input ~ 0
JE
Text GLabel 6000 5000 2    50   Input ~ 0
JE
Text GLabel 6750 5000 2    50   Input ~ 0
JE
Text GLabel 7500 5000 2    50   Input ~ 0
JE
Text GLabel 8250 5000 2    50   Input ~ 0
JE
Text GLabel 5250 5500 2    50   Input ~ 0
~JMP
Text GLabel 6000 5500 2    50   Input ~ 0
~JMP
Text GLabel 6750 5500 2    50   Input ~ 0
~JMP
Text GLabel 7500 5500 2    50   Input ~ 0
~JMP
Text GLabel 8250 5500 2    50   Input ~ 0
~JMP
$EndSCHEMATC
