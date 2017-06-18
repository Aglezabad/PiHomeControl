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
LIBS:sensors
LIBS:Central device-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Central device"
Date "2017-06-05"
Rev ""
Comp "Aglezabad"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Raspberry_Pi_2_3 U?
U 1 1 59353BE3
P 3550 3000
F 0 "U?" H 4250 1750 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 3150 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 4550 4250 50  0001 C CNN
F 3 "" H 3600 2850 50  0001 C CNN
	1    3550 3000
	-1   0    0    1   
$EndComp
$Comp
L DHT11 U?
U 1 1 593E3675
P 5200 2600
F 0 "U?" H 5350 2850 50  0000 C CNN
F 1 "DHT11" H 5300 2350 50  0000 C CNN
F 2 "" H 5350 2850 50  0001 C CNN
F 3 "" H 5350 2850 50  0001 C CNN
	1    5200 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 4300 3750 4500
Wire Wire Line
	3750 4500 5300 4500
Wire Wire Line
	5300 4500 5300 2900
Wire Wire Line
	5300 2300 5300 1500
Wire Wire Line
	5300 1500 3950 1500
Wire Wire Line
	3950 1500 3950 1700
Wire Wire Line
	4900 2600 4800 2600
Wire Wire Line
	4800 2600 4800 4450
Wire Wire Line
	4800 4450 2500 4450
Wire Wire Line
	2500 4450 2500 3700
Wire Wire Line
	2500 3700 2650 3700
$Comp
L PCF8574A U?
U 1 1 5946C7CE
P 6600 3800
F 0 "U?" H 6250 4400 50  0000 L CNN
F 1 "PCF8574A" H 6700 4400 50  0000 L CNN
F 2 "" H 6600 3800 50  0000 C CNN
F 3 "" H 6600 3800 50  0000 C CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3400 4850 3400
Wire Wire Line
	4850 3400 4850 4400
Wire Wire Line
	4850 4400 2550 4400
Wire Wire Line
	2550 4400 2550 3800
Wire Wire Line
	2550 3800 2650 3800
Wire Wire Line
	6100 3500 4900 3500
Wire Wire Line
	4900 3500 4900 4350
Wire Wire Line
	4900 4350 2600 4350
Wire Wire Line
	2600 4350 2600 3900
Wire Wire Line
	2600 3900 2650 3900
Wire Wire Line
	3650 4300 3650 4550
Wire Wire Line
	6600 4550 6600 4500
Wire Wire Line
	6600 3100 6600 3050
Wire Wire Line
	5950 3050 9250 3050
Wire Wire Line
	5950 3050 5950 4550
$Comp
L LCD-016N002L DS?
U 1 1 5946CA00
P 8600 2350
F 0 "DS?" H 7800 2750 50  0000 C CNN
F 1 "LCD-016N002L" H 9300 2750 50  0000 C CNN
F 2 "WC1602A" H 8600 2300 50  0000 C CIN
F 3 "" H 8600 2350 50  0000 C CNN
	1    8600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3050 7950 2850
Connection ~ 6600 3050
Wire Wire Line
	7850 4550 7850 2850
Wire Wire Line
	7100 3400 8450 3400
Wire Wire Line
	8450 3400 8450 2850
Wire Wire Line
	7100 3500 8550 3500
Wire Wire Line
	8550 3500 8550 2850
Wire Wire Line
	7100 3600 8650 3600
Wire Wire Line
	8650 3600 8650 2850
Wire Wire Line
	7100 3700 8750 3700
Wire Wire Line
	8750 3700 8750 2850
Wire Wire Line
	7100 3800 8850 3800
Wire Wire Line
	8850 3800 8850 2850
Wire Wire Line
	7100 3900 8950 3900
Wire Wire Line
	8950 3900 8950 2850
Wire Wire Line
	7100 4000 9050 4000
Wire Wire Line
	9050 4000 9050 2850
Wire Wire Line
	7100 4100 9150 4100
Wire Wire Line
	9150 4100 9150 2850
Wire Wire Line
	5950 4550 3650 4550
Wire Wire Line
	6200 4550 9350 4550
Wire Wire Line
	3850 1700 3850 1450
Wire Wire Line
	3850 1450 5500 1450
Wire Wire Line
	5500 1450 5500 4500
Wire Wire Line
	6200 4500 6200 4550
Connection ~ 6600 4550
Wire Wire Line
	5500 4500 6200 4500
Wire Wire Line
	9250 3050 9250 2850
Connection ~ 7950 3050
Wire Wire Line
	9350 4550 9350 2850
Connection ~ 7850 4550
Wire Notes Line
	6050 1800 6050 4800
Wire Notes Line
	6050 4800 9750 4800
Wire Notes Line
	9750 4800 9750 1800
Wire Notes Line
	9750 1800 6050 1800
Text Notes 6100 1750 0    60   ~ 0
These two components are already unified in one single product.\nConnection between them come from my imagination.\n(Need help to get the good connection).
$EndSCHEMATC
