EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:7SEG
LIBS:7SegClock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "4 Digit 7 Segment Clock"
Date "12/27/14"
Rev ""
Comp "Alavas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L P8X32A U1
U 1 1 549F5799
P 2250 2550
F 0 "U1" H 2250 2400 60  0000 C CNN
F 1 "P8X32A" H 2250 2700 60  0000 C CNN
F 2 "SMD_Packages:TQFP-44" H 1950 2950 60  0001 C CNN
F 3 "" H 1950 2950 60  0000 C CNN
	1    2250 2550
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 549F5996
P 2650 4100
F 0 "X1" H 2650 4250 60  0000 C CNN
F 1 "5mhz CRYSTAL" H 2650 3950 60  0000 C CNN
F 2 "Crystals_Oscillators_SMD:Q_49U3HMS" H 2650 4100 60  0001 C CNN
F 3 "" H 2650 4100 60  0000 C CNN
	1    2650 4100
	1    0    0    -1  
$EndComp
Text GLabel 3250 2100 2    50   Input ~ 0
SCL
Text GLabel 3250 2000 2    50   Input ~ 0
SDA
$Comp
L USB-MINI-B CON1
U 1 1 549F617F
P 5050 4050
F 0 "CON1" H 4750 4400 50  0000 C CNN
F 1 "USB-MINI-B" H 4900 3700 50  0000 C CNN
F 2 "Connect:USB_Mini-B" H 5050 3950 50  0001 C CNN
F 3 "" H 5050 3950 50  0000 C CNN
	1    5050 4050
	1    0    0    -1  
$EndComp
$Comp
L 24LC256 U2
U 1 1 549F6837
P 2250 5050
F 0 "U2" H 2250 4700 60  0000 C CNN
F 1 "24LC256" H 2250 5400 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 2250 5050 60  0001 C CNN
F 3 "" H 2250 5050 60  0000 C CNN
	1    2250 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 549F6A6A
P 1500 5300
F 0 "#PWR01" H 1500 5050 60  0001 C CNN
F 1 "GND" H 1500 5150 60  0000 C CNN
F 2 "" H 1500 5300 60  0000 C CNN
F 3 "" H 1500 5300 60  0000 C CNN
	1    1500 5300
	1    0    0    -1  
$EndComp
Text GLabel 3050 5100 2    50   Input ~ 0
SCL
Text GLabel 3050 5200 2    50   Input ~ 0
SDA
$Comp
L GND #PWR02
U 1 1 549F6C2C
P 3350 5300
F 0 "#PWR02" H 3350 5050 60  0001 C CNN
F 1 "GND" H 3350 5150 60  0000 C CNN
F 2 "" H 3350 5300 60  0000 C CNN
F 3 "" H 3350 5300 60  0000 C CNN
	1    3350 5300
	1    0    0    -1  
$EndComp
$Comp
L FT232RL U3
U 1 1 549F7855
P 5050 2550
F 0 "U3" H 5050 1700 50  0000 C CNN
F 1 "FT232RL" H 5050 3400 50  0000 C CNN
F 2 "SMD_Packages:SSOP-28" H 4900 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0000 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 549F7C95
P 5850 3400
F 0 "#PWR03" H 5850 3150 60  0001 C CNN
F 1 "GND" H 5850 3250 60  0000 C CNN
F 2 "" H 5850 3400 60  0000 C CNN
F 3 "" H 5850 3400 60  0000 C CNN
	1    5850 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 549F8071
P 3100 1350
F 0 "#PWR04" H 3100 1100 60  0001 C CNN
F 1 "GND" H 3100 1200 60  0000 C CNN
F 2 "" H 3100 1350 60  0000 C CNN
F 3 "" H 3100 1350 60  0000 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 549F8247
P 4200 1800
F 0 "#PWR05" H 4200 1650 60  0001 C CNN
F 1 "+5V" H 4200 1940 60  0000 C CNN
F 2 "" H 4200 1800 60  0000 C CNN
F 3 "" H 4200 1800 60  0000 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 549F825B
P 5450 1000
F 0 "#PWR06" H 5450 850 60  0001 C CNN
F 1 "+5V" H 5450 1140 60  0000 C CNN
F 2 "" H 5450 1000 60  0000 C CNN
F 3 "" H 5450 1000 60  0000 C CNN
	1    5450 1000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 549F8426
P 5700 4400
F 0 "#PWR07" H 5700 4150 60  0001 C CNN
F 1 "GND" H 5700 4250 60  0000 C CNN
F 2 "" H 5700 4400 60  0000 C CNN
F 3 "" H 5700 4400 60  0000 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 549F84C5
P 4400 4400
F 0 "#PWR08" H 4400 4150 60  0001 C CNN
F 1 "GND" H 4400 4250 60  0000 C CNN
F 2 "" H 4400 4400 60  0000 C CNN
F 3 "" H 4400 4400 60  0000 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
NoConn ~ 5700 1900
NoConn ~ 5700 2000
NoConn ~ 4550 4150
$Comp
L +3V3 #PWR09
U 1 1 549F87F3
P 1400 1050
F 0 "#PWR09" H 1400 900 60  0001 C CNN
F 1 "+3V3" H 1400 1190 60  0000 C CNN
F 2 "" H 1400 1050 60  0000 C CNN
F 3 "" H 1400 1050 60  0000 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 549F88B8
P 6350 2100
F 0 "C3" H 6350 2200 40  0000 L CNN
F 1 "10nF" H 6356 2015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6388 1950 30  0001 C CNN
F 3 "" H 6350 2100 60  0000 C CNN
	1    6350 2100
	0    1    1    0   
$EndComp
$Comp
L NPN Q1
U 1 1 549F89D8
P 7100 2100
F 0 "Q1" H 7100 1950 50  0000 R CNN
F 1 "NPN" H 7100 2250 50  0000 R CNN
F 2 "Transistors_SMD:sot23" H 7100 2100 60  0001 C CNN
F 3 "" H 7100 2100 60  0000 C CNN
	1    7100 2100
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 549F8BBE
P 6750 2550
F 0 "R6" V 6830 2550 40  0000 C CNN
F 1 "10K" V 6757 2551 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 2550 30  0001 C CNN
F 3 "" H 6750 2550 30  0000 C CNN
	1    6750 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 549F8E76
P 7200 3050
F 0 "#PWR010" H 7200 2800 60  0001 C CNN
F 1 "GND" H 7200 2900 60  0000 C CNN
F 2 "" H 7200 3050 60  0000 C CNN
F 3 "" H 7200 3050 60  0000 C CNN
	1    7200 3050
	1    0    0    -1  
$EndComp
Text GLabel 2000 3900 3    50   Input ~ 0
DTR
Text GLabel 7200 1600 1    50   Input ~ 0
DTR
$Comp
L R R5
U 1 1 549F93DF
P 6750 1450
F 0 "R5" V 6830 1450 40  0000 C CNN
F 1 "10K" V 6757 1451 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 1450 30  0001 C CNN
F 3 "" H 6750 1450 30  0000 C CNN
	1    6750 1450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR011
U 1 1 549F951B
P 6750 1050
F 0 "#PWR011" H 6750 900 60  0001 C CNN
F 1 "+3V3" H 6750 1190 60  0000 C CNN
F 2 "" H 6750 1050 60  0000 C CNN
F 3 "" H 6750 1050 60  0000 C CNN
	1    6750 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 549F9839
P 1900 4150
F 0 "#PWR012" H 1900 3900 60  0001 C CNN
F 1 "GND" H 1900 4000 60  0000 C CNN
F 2 "" H 1900 4150 60  0000 C CNN
F 3 "" H 1900 4150 60  0000 C CNN
	1    1900 4150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 549F993F
P 3000 4800
F 0 "#PWR013" H 3000 4650 60  0001 C CNN
F 1 "+3V3" H 3000 4940 60  0000 C CNN
F 2 "" H 3000 4800 60  0000 C CNN
F 3 "" H 3000 4800 60  0000 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 549F9252
P 6200 3000
F 0 "D1" H 6200 3100 50  0000 C CNN
F 1 "LED" H 6200 2900 50  0000 C CNN
F 2 "LEDs:LED-0805" H 6200 3000 60  0001 C CNN
F 3 "" H 6200 3000 60  0000 C CNN
	1    6200 3000
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 549F92C9
P 6500 3000
F 0 "D2" H 6500 3100 50  0000 C CNN
F 1 "LED" H 6500 2900 50  0000 C CNN
F 2 "LEDs:LED-0805" H 6500 3000 60  0001 C CNN
F 3 "" H 6500 3000 60  0000 C CNN
	1    6500 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 549F945E
P 6350 3650
F 0 "R4" V 6430 3650 40  0000 C CNN
F 1 "1K" V 6357 3651 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6280 3650 30  0001 C CNN
F 3 "" H 6350 3650 30  0000 C CNN
	1    6350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3750 2950 3750
Wire Wire Line
	2950 3750 2950 4100
Wire Wire Line
	2600 3750 2350 3750
Wire Wire Line
	2350 3750 2350 4100
Wire Wire Line
	3100 2000 3250 2000
Wire Wire Line
	3100 2100 3250 2100
Wire Wire Line
	1650 4900 1500 4900
Wire Wire Line
	1500 4900 1500 5300
Wire Wire Line
	1650 5200 1500 5200
Connection ~ 1500 5200
Wire Wire Line
	1650 5100 1500 5100
Connection ~ 1500 5100
Wire Wire Line
	1650 5000 1500 5000
Connection ~ 1500 5000
Wire Wire Line
	3050 5100 2850 5100
Wire Wire Line
	3050 5200 2850 5200
Wire Wire Line
	2850 5000 3350 5000
Wire Wire Line
	3350 5000 3350 5300
Wire Wire Line
	5700 2800 5850 2800
Wire Wire Line
	5850 2800 5850 3400
Wire Wire Line
	5700 2900 5850 2900
Connection ~ 5850 2900
Wire Wire Line
	5700 3000 5850 3000
Connection ~ 5850 3000
Wire Wire Line
	5700 3100 5850 3100
Connection ~ 5850 3100
Wire Wire Line
	5700 3200 5850 3200
Connection ~ 5850 3200
Wire Wire Line
	4350 2450 4200 2450
Wire Wire Line
	4200 2450 4200 2550
Wire Wire Line
	4200 2550 4350 2550
Wire Wire Line
	2400 1350 2400 1200
Wire Wire Line
	2400 1200 3100 1200
Wire Wire Line
	3100 1200 3100 1350
Wire Wire Line
	2500 1350 2500 1200
Connection ~ 2500 1200
Wire Wire Line
	2600 1350 2600 1200
Connection ~ 2600 1200
Wire Wire Line
	2700 1350 2700 1200
Connection ~ 2700 1200
Wire Wire Line
	5550 3850 5700 3850
Wire Wire Line
	5700 3850 5700 4400
Wire Wire Line
	5550 4250 5700 4250
Connection ~ 5700 4250
Wire Wire Line
	5550 4150 5700 4150
Connection ~ 5700 4150
Wire Wire Line
	5550 3950 5700 3950
Connection ~ 5700 3950
Wire Wire Line
	4550 4250 4400 4250
Wire Wire Line
	4400 4250 4400 4400
Wire Wire Line
	4200 1800 4200 2000
Wire Wire Line
	4200 2000 4350 2000
Wire Wire Line
	4350 1900 4200 1900
Connection ~ 4200 1900
Wire Wire Line
	2100 1200 2100 1350
Wire Wire Line
	1400 1200 2100 1200
Wire Wire Line
	1800 1350 1800 1200
Connection ~ 1800 1200
Wire Wire Line
	1900 1350 1900 1200
Connection ~ 1900 1200
Wire Wire Line
	2000 1350 2000 1200
Connection ~ 2000 1200
Wire Wire Line
	6150 2100 5700 2100
Wire Wire Line
	6550 2100 6900 2100
Wire Wire Line
	7200 2300 7200 3050
Wire Wire Line
	7200 2900 6750 2900
Wire Wire Line
	6750 2900 6750 2800
Wire Wire Line
	6750 2300 6750 2100
Connection ~ 6750 2100
Connection ~ 7200 2900
Wire Wire Line
	2000 3750 2000 3900
Wire Wire Line
	7200 1600 7200 1900
Wire Wire Line
	6750 1700 6750 1800
Wire Wire Line
	6750 1800 7200 1800
Connection ~ 7200 1800
Wire Wire Line
	6750 1200 6750 1050
Wire Wire Line
	1900 3750 1900 4150
Wire Wire Line
	3000 4800 3000 4900
Wire Wire Line
	3000 4900 2850 4900
Wire Wire Line
	1400 1200 1400 1050
Wire Wire Line
	5700 2450 6500 2450
Wire Wire Line
	6500 2450 6500 2800
Wire Wire Line
	5700 2550 6200 2550
Wire Wire Line
	6200 2550 6200 2800
Wire Wire Line
	6200 3200 6200 3300
Wire Wire Line
	6200 3300 6500 3300
Wire Wire Line
	6500 3300 6500 3200
Wire Wire Line
	6350 3400 6350 3300
Connection ~ 6350 3300
Wire Wire Line
	6350 3900 6350 4050
$Comp
L +5V #PWR014
U 1 1 549F97BA
P 6350 4050
F 0 "#PWR014" H 6350 3900 60  0001 C CNN
F 1 "+5V" H 6350 4190 60  0000 C CNN
F 2 "" H 6350 4050 60  0000 C CNN
F 3 "" H 6350 4050 60  0000 C CNN
	1    6350 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1800 4000 1800
Wire Wire Line
	4000 1800 4000 2750
Wire Wire Line
	4000 2750 4350 2750
Wire Wire Line
	4350 2850 3900 2850
Wire Wire Line
	3900 2850 3900 1900
Wire Wire Line
	3900 1900 3100 1900
$Comp
L R R2
U 1 1 54A04352
P 2400 6500
F 0 "R2" V 2480 6500 40  0000 C CNN
F 1 "10K" V 2407 6501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2330 6500 30  0001 C CNN
F 3 "" H 2400 6500 30  0000 C CNN
	1    2400 6500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54A043D7
P 2150 6500
F 0 "R1" V 2230 6500 40  0000 C CNN
F 1 "10K" V 2157 6501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 6500 30  0001 C CNN
F 3 "" H 2150 6500 30  0000 C CNN
	1    2150 6500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR015
U 1 1 54A044E3
P 2150 6100
F 0 "#PWR015" H 2150 5950 60  0001 C CNN
F 1 "+3V3" H 2150 6240 60  0000 C CNN
F 2 "" H 2150 6100 60  0000 C CNN
F 3 "" H 2150 6100 60  0000 C CNN
	1    2150 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR016
U 1 1 54A044FC
P 2400 6100
F 0 "#PWR016" H 2400 5950 60  0001 C CNN
F 1 "+3V3" H 2400 6240 60  0000 C CNN
F 2 "" H 2400 6100 60  0000 C CNN
F 3 "" H 2400 6100 60  0000 C CNN
	1    2400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6100 2400 6250
Wire Wire Line
	2150 6100 2150 6250
Text GLabel 2400 6900 3    50   Input ~ 0
SDA
Text GLabel 2150 6900 3    50   Input ~ 0
SCL
Wire Wire Line
	2150 6750 2150 6900
Wire Wire Line
	2400 6750 2400 6900
$Comp
L DS3231 U4
U 1 1 54A09D3F
P 5050 5650
F 0 "U4" H 5200 4900 60  0000 C CNN
F 1 "DS3231" H 5300 6100 60  0000 C CNN
F 2 "SMD_Packages:SO-16-W" H 5050 5650 60  0001 C CNN
F 3 "" H 5050 5650 60  0000 C CNN
	1    5050 5650
	1    0    0    -1  
$EndComp
Text GLabel 4300 5450 0    50   Input ~ 0
SCL
Text GLabel 4300 5550 0    50   Input ~ 0
SDA
Wire Wire Line
	4450 5450 4300 5450
Wire Wire Line
	4450 5550 4300 5550
NoConn ~ 4450 5700
$Comp
L BATTERY BT1
U 1 1 54A0A224
P 6250 6100
F 0 "BT1" H 6250 6300 50  0000 C CNN
F 1 "BATTERY" H 6250 5910 50  0000 C CNN
F 2 "" H 6250 6100 60  0001 C CNN
F 3 "" H 6250 6100 60  0000 C CNN
	1    6250 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 5850 5800 5850
Wire Wire Line
	5800 5850 5800 6700
Wire Wire Line
	5800 6700 4300 6700
Wire Wire Line
	4300 6700 4300 5850
Wire Wire Line
	4300 5850 4450 5850
Wire Wire Line
	5050 6550 5050 6850
Connection ~ 5050 6700
Wire Wire Line
	4450 5950 4300 5950
Connection ~ 4300 5950
Wire Wire Line
	4450 6050 4300 6050
Connection ~ 4300 6050
Wire Wire Line
	4450 6150 4300 6150
Connection ~ 4300 6150
Wire Wire Line
	5650 5950 5800 5950
Connection ~ 5800 5950
Wire Wire Line
	5650 6050 5800 6050
Connection ~ 5800 6050
Wire Wire Line
	5650 6150 5800 6150
Connection ~ 5800 6150
$Comp
L GND #PWR017
U 1 1 54A0A7A2
P 5050 6850
F 0 "#PWR017" H 5050 6600 60  0001 C CNN
F 1 "GND" H 5050 6700 60  0000 C CNN
F 2 "" H 5050 6850 60  0000 C CNN
F 3 "" H 5050 6850 60  0000 C CNN
	1    5050 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 54A0A7CD
P 6250 6550
F 0 "#PWR018" H 6250 6300 60  0001 C CNN
F 1 "GND" H 6250 6400 60  0000 C CNN
F 2 "" H 6250 6550 60  0000 C CNN
F 3 "" H 6250 6550 60  0000 C CNN
	1    6250 6550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR019
U 1 1 54A0A98E
P 5050 4900
F 0 "#PWR019" H 5050 4750 60  0001 C CNN
F 1 "+3V3" H 5050 5040 60  0000 C CNN
F 2 "" H 5050 4900 60  0000 C CNN
F 3 "" H 5050 4900 60  0000 C CNN
	1    5050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4900 5050 5050
$Comp
L C C2
U 1 1 54A0AA7F
P 5600 4950
F 0 "C2" H 5600 5050 40  0000 L CNN
F 1 "0.1uF" H 5606 4865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5638 4800 30  0001 C CNN
F 3 "" H 5600 4950 60  0000 C CNN
	1    5600 4950
	0    1    1    0   
$EndComp
NoConn ~ 5650 5550
$Comp
L GND #PWR020
U 1 1 54A0AFDC
P 5900 5050
F 0 "#PWR020" H 5900 4800 60  0001 C CNN
F 1 "GND" H 5900 4900 60  0000 C CNN
F 2 "" H 5900 5050 60  0000 C CNN
F 3 "" H 5900 5050 60  0000 C CNN
	1    5900 5050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54A0B1CB
P 3550 4850
F 0 "C1" H 3550 4950 40  0000 L CNN
F 1 "0.1uF" H 3556 4765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3588 4700 30  0001 C CNN
F 3 "" H 3550 4850 60  0000 C CNN
	1    3550 4850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 54A0B233
P 3900 4950
F 0 "#PWR021" H 3900 4700 60  0001 C CNN
F 1 "GND" H 3900 4800 60  0000 C CNN
F 2 "" H 3900 4950 60  0000 C CNN
F 3 "" H 3900 4950 60  0000 C CNN
	1    3900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4850 3900 4850
Wire Wire Line
	3900 4850 3900 4950
Wire Wire Line
	3350 4850 3000 4850
Connection ~ 3000 4850
Wire Wire Line
	5650 5700 6250 5700
Wire Wire Line
	6250 5700 6250 5800
Wire Wire Line
	6250 6400 6250 6550
Wire Wire Line
	5650 5450 6500 5450
Text GLabel 6500 5450 2    50   Input ~ 0
CLK_INT
$Comp
L R R3
U 1 1 54A0C1E4
P 6300 5050
F 0 "R3" V 6380 5050 40  0000 C CNN
F 1 "10K" V 6307 5051 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6230 5050 30  0001 C CNN
F 3 "" H 6300 5050 30  0000 C CNN
	1    6300 5050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR022
U 1 1 54A0C24B
P 6300 4650
F 0 "#PWR022" H 6300 4500 60  0001 C CNN
F 1 "+3V3" H 6300 4790 60  0000 C CNN
F 2 "" H 6300 4650 60  0000 C CNN
F 3 "" H 6300 4650 60  0000 C CNN
	1    6300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4800 6300 4650
Wire Wire Line
	6300 5300 6300 5450
Connection ~ 6300 5450
Wire Wire Line
	5400 4950 5050 4950
Connection ~ 5050 4950
Wire Wire Line
	5800 4950 5900 4950
Wire Wire Line
	5900 4950 5900 5050
$Comp
L FUSE F?
U 1 1 54A0D025
P 5050 1000
F 0 "F?" H 5150 1050 40  0000 C CNN
F 1 "FUSE" H 4950 950 40  0000 C CNN
F 2 "" H 5050 1000 60  0000 C CNN
F 3 "" H 5050 1000 60  0000 C CNN
	1    5050 1000
	1    0    0    -1  
$EndComp
$Comp
L TPS62172DSGT U?
U 1 1 54A0D0C2
P 9500 2450
F 0 "U?" H 9500 2150 60  0000 C CNN
F 1 "TPS62172DSGT" H 9500 2750 60  0000 C CNN
F 2 "" H 9500 2450 60  0000 C CNN
F 3 "" H 9500 2450 60  0000 C CNN
	1    9500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1000 5300 1000
Text GLabel 4650 1000 0    50   Input ~ 0
VIN
Wire Wire Line
	4800 1000 4650 1000
Text GLabel 4400 3850 0    50   Input ~ 0
VIN
Wire Wire Line
	4550 3850 4400 3850
Wire Wire Line
	4550 3950 4100 3950
Wire Wire Line
	4100 3950 4100 3200
Wire Wire Line
	4100 3200 4350 3200
Wire Wire Line
	4350 3100 4000 3100
Wire Wire Line
	4000 3100 4000 4050
Wire Wire Line
	4000 4050 4550 4050
$EndSCHEMATC
