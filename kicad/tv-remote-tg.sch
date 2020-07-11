EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tv-remote-g"
Date "2020-07-11"
Rev "1.0.1"
Comp "cxcorp"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 5F08CBA3
P 3450 3700
F 0 "U1" H 3700 4500 50  0000 C CNN
F 1 "WeMos_D1_mini" V 3050 3300 50  0000 C CNN
F 2 "tv-remote-tg:WEMOS_D1_mini_light" H 3450 2550 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 1600 2550 50  0001 C CNN
	1    3450 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 5F08ECC1
P 6600 3100
F 0 "D9" V 6639 2983 50  0000 R CNN
F 1 "LED" V 6548 2983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6600 3100 50  0001 C CNN
F 3 "~" H 6600 3100 50  0001 C CNN
	1    6600 3100
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5F091FA8
P 6500 3600
F 0 "Q1" H 6706 3646 50  0000 L CNN
F 1 "2N7000" H 6706 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6700 3525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 6500 3600 50  0001 L CNN
	1    6500 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F0979F9
P 6600 4250
F 0 "R1" H 6670 4296 50  0000 L CNN
F 1 "4R7" H 6670 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6530 4250 50  0001 C CNN
F 3 "~" H 6600 4250 50  0001 C CNN
	1    6600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4400 6600 4450
$Comp
L power:GND #PWR?
U 1 1 5F098D9E
P 6600 4450
F 0 "#PWR?" H 6600 4200 50  0001 C CNN
F 1 "GND" H 6605 4277 50  0000 C CNN
F 2 "" H 6600 4450 50  0001 C CNN
F 3 "" H 6600 4450 50  0001 C CNN
	1    6600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4500 3450 4650
$Comp
L power:GND #PWR?
U 1 1 5F09C226
P 3450 4850
F 0 "#PWR?" H 3450 4600 50  0001 C CNN
F 1 "GND" H 3455 4677 50  0000 C CNN
F 2 "" H 3450 4850 50  0001 C CNN
F 3 "" H 3450 4850 50  0001 C CNN
	1    3450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2750 3350 2900
NoConn ~ 3550 2900
NoConn ~ 3050 3700
NoConn ~ 3050 3600
NoConn ~ 3050 3300
$Comp
L Device:C C1
U 1 1 5F09FD55
P 6750 2800
F 0 "C1" V 7002 2800 50  0000 C CNN
F 1 "1000n" V 6911 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6788 2650 50  0001 C CNN
F 3 "~" H 6750 2800 50  0001 C CNN
	1    6750 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 2500 6600 2800
Wire Wire Line
	6900 2800 7000 2800
$Comp
L power:GND #PWR?
U 1 1 5F0A2ADF
P 7000 2800
F 0 "#PWR?" H 7000 2550 50  0001 C CNN
F 1 "GND" H 7005 2627 50  0000 C CNN
F 2 "" H 7000 2800 50  0001 C CNN
F 3 "" H 7000 2800 50  0001 C CNN
	1    7000 2800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F0A56AD
P 3350 2750
F 0 "#FLG?" H 3350 2825 50  0001 C CNN
F 1 "PWR_FLAG" V 3350 2877 50  0000 L CNN
F 2 "" H 3350 2750 50  0001 C CNN
F 3 "~" H 3350 2750 50  0001 C CNN
	1    3350 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F0A64FC
P 3450 4650
F 0 "#FLG?" H 3450 4725 50  0001 C CNN
F 1 "PWR_FLAG" V 3450 4777 50  0000 L CNN
F 2 "" H 3450 4650 50  0001 C CNN
F 3 "~" H 3450 4650 50  0001 C CNN
	1    3450 4650
	0    -1   -1   0   
$EndComp
Connection ~ 3450 4650
Wire Wire Line
	3450 4650 3450 4850
$Comp
L power:+5V #PWR?
U 1 1 5F0A8A14
P 6600 2500
F 0 "#PWR?" H 6600 2350 50  0001 C CNN
F 1 "+5V" H 6615 2673 50  0000 C CNN
F 2 "" H 6600 2500 50  0001 C CNN
F 3 "" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
Text GLabel 5450 3600 0    50   Input ~ 0
FET_PIN
Wire Wire Line
	3350 2650 3350 2750
Connection ~ 3350 2750
$Comp
L power:+5V #PWR?
U 1 1 5F0B7B66
P 3350 2650
F 0 "#PWR?" H 3350 2500 50  0001 C CNN
F 1 "+5V" H 3365 2823 50  0000 C CNN
F 2 "" H 3350 2650 50  0001 C CNN
F 3 "" H 3350 2650 50  0001 C CNN
	1    3350 2650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D0
U 1 1 5F0BDEEB
P 4000 3300
F 0 "D0" H 4200 3300 50  0000 L CNN
F 1 "JP" H 4000 3300 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3300 50  0001 C CNN
F 3 "~" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D1
U 1 1 5F0BE710
P 4000 3400
F 0 "D1" H 4200 3400 50  0000 L CNN
F 1 "JP" H 4000 3400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3400 50  0001 C CNN
F 3 "~" H 4000 3400 50  0001 C CNN
	1    4000 3400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D2
U 1 1 5F0BE71B
P 4000 3500
F 0 "D2" H 4200 3500 50  0000 L CNN
F 1 "JP" H 4000 3500 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3500 50  0001 C CNN
F 3 "~" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D3
U 1 1 5F0BFA6A
P 4000 3600
F 0 "D3" H 4200 3600 50  0000 L CNN
F 1 "JP" H 4000 3600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3600 50  0001 C CNN
F 3 "~" H 4000 3600 50  0001 C CNN
	1    4000 3600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D4
U 1 1 5F0BFA75
P 4000 3700
F 0 "D4" H 4200 3700 50  0000 L CNN
F 1 "JP" H 4000 3700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3700 50  0001 C CNN
F 3 "~" H 4000 3700 50  0001 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D5
U 1 1 5F0BFA80
P 4000 3800
F 0 "D5" H 4200 3800 50  0000 L CNN
F 1 "JP" H 4000 3800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3800 50  0001 C CNN
F 3 "~" H 4000 3800 50  0001 C CNN
	1    4000 3800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D6
U 1 1 5F0BFA8B
P 4000 3900
F 0 "D6" H 4200 3900 50  0000 L CNN
F 1 "JP" H 4000 3900 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3900 50  0001 C CNN
F 3 "~" H 4000 3900 50  0001 C CNN
	1    4000 3900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open D8
U 1 1 5F0C30B1
P 4000 4100
F 0 "D8" H 4200 4100 50  0000 L CNN
F 1 "JP" H 4000 4100 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 4100 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3250 6600 3400
Wire Wire Line
	6600 2950 6600 2800
Connection ~ 6600 2800
$Comp
L Device:R R2
U 1 1 5F0E78DC
P 5800 3600
F 0 "R2" V 5593 3600 50  0000 C CNN
F 1 "0R" V 5684 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5730 3600 50  0001 C CNN
F 3 "~" H 5800 3600 50  0001 C CNN
	1    5800 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3600 5450 3600
Wire Wire Line
	6600 3800 6600 3950
$Comp
L Device:R R3
U 1 1 5F0EA9C3
P 6350 3950
F 0 "R3" V 6143 3950 50  0000 C CNN
F 1 "100K" V 6234 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 3950 50  0001 C CNN
F 3 "~" H 6350 3950 50  0001 C CNN
	1    6350 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3950 6600 3950
Wire Wire Line
	5950 3600 6100 3600
Wire Wire Line
	6200 3950 6100 3950
Wire Wire Line
	6100 3950 6100 3600
Connection ~ 6100 3600
Wire Wire Line
	6100 3600 6300 3600
Wire Wire Line
	6600 3950 6600 4100
Connection ~ 6600 3950
Text GLabel 8350 3500 1    50   Input ~ 0
FET_PIN
$Comp
L Device:C C2
U 1 1 5F105D76
P 8350 3650
F 0 "C2" H 8465 3696 50  0000 L CNN
F 1 "22p" H 8465 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8388 3500 50  0001 C CNN
F 3 "~" H 8350 3650 50  0001 C CNN
	1    8350 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F106DE3
P 8350 3800
F 0 "#PWR?" H 8350 3550 50  0001 C CNN
F 1 "GND" H 8355 3627 50  0000 C CNN
F 2 "" H 8350 3800 50  0001 C CNN
F 3 "" H 8350 3800 50  0001 C CNN
	1    8350 3800
	1    0    0    -1  
$EndComp
Text Notes 8750 3700 0    50   ~ 0
2.4GHz decoupling
$Comp
L Jumper:SolderJumper_2_Open D7
U 1 1 5F0C30A6
P 4000 4000
F 0 "D7" H 4200 4000 50  0000 L CNN
F 1 "JP" H 4000 4000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 4000 50  0001 C CNN
F 3 "~" H 4000 4000 50  0001 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open A0
U 1 1 5F0BBB64
P 4000 3200
F 0 "A0" H 4200 3200 50  0000 L CNN
F 1 "JP" H 4000 3200 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4000 3200 50  0001 C CNN
F 3 "~" H 4000 3200 50  0001 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3200 4150 3300
Connection ~ 4150 3300
Wire Wire Line
	4150 3300 4150 3400
Connection ~ 4150 3400
Wire Wire Line
	4150 3400 4150 3500
Connection ~ 4150 3500
Wire Wire Line
	4150 3500 4150 3600
Connection ~ 4150 3600
Wire Wire Line
	4150 3600 4150 3700
Connection ~ 4150 3700
Wire Wire Line
	4150 3700 4150 3800
Connection ~ 4150 3800
Wire Wire Line
	4150 3800 4150 3900
Connection ~ 4150 3900
Wire Wire Line
	4150 3900 4150 4000
Connection ~ 4150 4000
Wire Wire Line
	4150 4000 4150 4100
Connection ~ 4150 4100
Text GLabel 4250 4300 2    50   Input ~ 0
FET_PIN
Wire Wire Line
	4150 4300 4250 4300
Wire Wire Line
	4150 4100 4150 4300
$EndSCHEMATC
