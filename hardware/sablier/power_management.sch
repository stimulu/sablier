EESchema Schematic File Version 5
LIBS:sablier-cache
EELAYER 29 0
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
Connection ~ 5800 5100
Text HLabel 2800 3050 0    50   Input ~ 0
LIPO_IN
Text HLabel 2800 3250 0    50   Input ~ 0
VIN
Text HLabel 9750 3750 2    50   Output ~ 0
VOUT
$Comp
L Battery_Management:MCP73831-2-OT U?
U 1 1 5CDDC2CC
P 5800 4600
F 0 "U?" H 6100 4900 50  0000 C CNN
F 1 "MCP73831-2-OT" H 5400 4900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5850 4350 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 5650 4550 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
Text HLabel 9750 4700 2    50   Output ~ 0
STAT
$Comp
L power:GND #PWR?
U 1 1 5CDDC2CD
P 5800 5300
F 0 "#PWR?" H 5800 5050 50  0001 C CNN
F 1 "GND" H 5805 5127 50  0000 C CNN
F 2 "" H 5800 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CDDC2CE
P 5300 4950
F 0 "R?" H 5370 4996 50  0000 L CNN
F 1 "10K CALIB CHRG" H 5370 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 4950 50  0001 C CNN
F 3 "~" H 5300 4950 50  0001 C CNN
	1    5300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5100 5800 5300
Wire Wire Line
	5800 4900 5800 5100
Wire Wire Line
	5300 4800 5300 4700
Wire Wire Line
	5300 4700 5400 4700
$Comp
L Device:R R?
U 1 1 5CDDC2CF
P 8900 4300
F 0 "R?" H 8970 4346 50  0000 L CNN
F 1 "47K PULLUP 3V" H 8950 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 4300 50  0001 C CNN
F 3 "~" H 8900 4300 50  0001 C CNN
	1    8900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4500 6400 4500
Text Notes 5200 5050 2    50   ~ 0
iReg = 1000 V / rProg\nrProg = 1000 V / iReg\niReg is 100 mA for a 120 mAh\nso rProg is 10 kOhm
Wire Wire Line
	8550 4050 8550 5100
$Comp
L Device:Q_PMOS_DGS Q?
U 1 1 5CDDC2D1
P 6700 3650
F 0 "Q?" V 6950 3650 50  0000 C CNN
F 1 "DMP1045U" V 7041 3650 50  0000 C CNN
F 2 "procsynth:SOT23_FET" H 6900 3750 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6700 3650
	0    -1   1    0   
$EndComp
Wire Wire Line
	6400 3050 6400 3750
Wire Wire Line
	5800 3250 6700 3250
Wire Wire Line
	6700 3250 6700 3450
Connection ~ 5800 3250
Wire Wire Line
	5800 3250 5800 4300
Wire Wire Line
	6400 3750 6500 3750
Connection ~ 6400 3750
Wire Wire Line
	6400 3750 6400 4500
$Comp
L Device:D_Schottky D?
U 1 1 5CDDC2D2
P 7300 3450
F 0 "D?" V 7346 3371 50  0000 R CNN
F 1 "BAT60JFILM" H 7450 3550 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 7300 3450 50  0001 C CNN
F 3 "~" H 7300 3450 50  0001 C CNN
	1    7300 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 3250 7300 3300
Wire Wire Line
	7300 3600 7300 3750
Connection ~ 7300 3750
$Comp
L Device:C C?
U 1 1 5CDDC2D3
P 7300 4300
F 0 "C?" H 7415 4346 50  0000 L CNN
F 1 "4.7µF" H 7415 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7338 4150 50  0001 C CNN
F 3 "~" H 7300 4300 50  0001 C CNN
	1    7300 4300
	1    0    0    -1  
$EndComp
Connection ~ 8900 4700
Wire Wire Line
	7300 3750 7300 4150
Wire Wire Line
	7300 4450 7300 5100
Wire Wire Line
	6700 3250 7300 3250
Connection ~ 6700 3250
Wire Wire Line
	6900 3750 7300 3750
Wire Wire Line
	5800 5100 7300 5100
Connection ~ 7300 5100
$Comp
L Device:Jumper JP?
U 1 1 5CDDC2D4
P 3400 3050
F 0 "JP?" H 3400 3314 50  0000 C CNN
F 1 "Current test point" H 3400 3223 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 3400 3050 50  0001 C CNN
F 3 "~" H 3400 3050 50  0001 C CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CDDC2D5
P 3900 4300
F 0 "C?" H 4015 4346 50  0000 L CNN
F 1 "4.7µF" H 4015 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 4150 50  0001 C CNN
F 3 "~" H 3900 4300 50  0001 C CNN
	1    3900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4450 3900 5100
Wire Wire Line
	2800 3050 3100 3050
Wire Wire Line
	2800 3250 3400 3250
Wire Wire Line
	3700 3050 3900 3050
Wire Wire Line
	3900 3050 3900 4150
Connection ~ 3900 3050
Wire Wire Line
	3900 3050 6400 3050
$Comp
L Device:C C?
U 1 1 5CDDC2D6
P 3400 4300
F 0 "C?" H 3515 4346 50  0000 L CNN
F 1 "4.7µF" H 3515 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3438 4150 50  0001 C CNN
F 3 "~" H 3400 4300 50  0001 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4150 3400 3250
Connection ~ 3400 3250
Wire Wire Line
	3400 3250 5800 3250
Wire Wire Line
	3400 4450 3400 5100
Wire Wire Line
	3400 5100 3900 5100
Connection ~ 3900 5100
Wire Wire Line
	6200 4700 8900 4700
Wire Wire Line
	7300 5100 7800 5100
Wire Wire Line
	7300 3750 8250 3750
$Comp
L Device:R R?
U 1 1 5CDDC2D7
P 7800 4300
F 0 "R?" H 7870 4346 50  0000 L CNN
F 1 "100K CHRG INIT LOAD" H 7870 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 4300 50  0001 C CNN
F 3 "~" H 7800 4300 50  0001 C CNN
	1    7800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4150 7800 3250
Connection ~ 7300 3250
Wire Wire Line
	7800 3250 7300 3250
Wire Wire Line
	7800 4450 7800 5100
Connection ~ 7800 5100
Wire Wire Line
	7800 5100 8550 5100
$Comp
L Device:C C?
U 1 1 5CDDC2D8
P 9300 4300
F 0 "C?" H 9415 4346 50  0000 L CNN
F 1 "1µF" H 9415 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9338 4150 50  0001 C CNN
F 3 "~" H 9300 4300 50  0001 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4700 9750 4700
Wire Wire Line
	8850 3750 8900 3750
Wire Wire Line
	8550 5100 9300 5100
Wire Wire Line
	9300 5100 9300 4450
Connection ~ 8550 5100
Wire Wire Line
	8900 4450 8900 4700
Wire Wire Line
	8900 4150 8900 3750
Connection ~ 8900 3750
Wire Wire Line
	8900 3750 9300 3750
Wire Wire Line
	9300 4150 9300 3750
Connection ~ 9300 3750
Wire Wire Line
	9300 3750 9750 3750
Text Notes 9700 2800 2    50   ~ 0
based on the charger described by Zak Kemble at http://blog.zakkemble.net/a-lithium-battery-charger-with-load-sharing/
Wire Notes Line
	2800 2700 9750 2700
Wire Notes Line
	9750 2700 9750 5300
Wire Notes Line
	9750 5300 2800 5300
Wire Notes Line
	2800 5300 2800 2700
Text Notes 2800 2650 0    50   ~ 0
3.75V - 6V in, min 100mAh 3.7V LiPo, 3V max 250mA out
Text Label 7400 3750 0    50   ~ 0
V_UNREG
Wire Wire Line
	3900 5100 5800 5100
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 U?
U 1 1 5CDDE523
P 8550 3750
F 0 "U?" H 8550 3992 50  0000 C CNN
F 1 "MCP1700-3302E_SOT23" H 8550 3901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8550 3975 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 8550 3750 50  0001 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
