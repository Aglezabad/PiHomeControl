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
	4900 2600 4900 2700
Wire Wire Line
	4900 2700 4450 2700
$EndSCHEMATC
