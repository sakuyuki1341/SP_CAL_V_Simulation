EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "CAL_V_Simulation"
Date "2020-03-26"
Rev ""
Comp "Sleep System Lab."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5950 3850 5950 3950
Wire Wire Line
	6600 3850 6600 3950
$Comp
L CAL_V_Simulation_circuit-rescue:2SK4017_Q_-LibraryLoader Q4
U 1 1 5E7ED628
P 7900 3950
F 0 "Q4" H 8728 3896 50  0000 L CNN
F 1 "2SK4017_Q_" H 8728 3805 50  0000 L CNN
F 2 "LibraryLoader:TO230P250X650X900-3P" H 8750 4050 50  0001 L CNN
F 3 "http://toshiba.semicon-storage.com/us/product/mosfet/detail.2SK4017.html" H 8750 3950 50  0001 L CNN
F 4 "MOSFET,Nch,60V/5A/0.1ohm,New Pw-Mold2" H 8750 3850 50  0001 L CNN "Description"
F 5 "2.5" H 8750 3750 50  0001 L CNN "Height"
F 6 "Toshiba" H 8750 3650 50  0001 L CNN "Manufacturer_Name"
F 7 "2SK4017(Q)" H 8750 3550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 8750 3450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 8750 3350 50  0001 L CNN "Mouser Price/Stock"
F 10 "0185580" H 8750 3250 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/0185580" H 8750 3150 50  0001 L CNN "RS Price/Stock"
	1    7900 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3850 6600 3850
Wire Wire Line
	7250 3950 7250 3850
Connection ~ 7250 3850
Wire Wire Line
	7900 3950 7900 3850
Wire Wire Line
	7250 3850 7900 3850
Wire Wire Line
	5850 3950 5850 3750
Wire Wire Line
	6500 3750 6500 3950
Wire Wire Line
	7150 3950 7150 3750
Wire Wire Line
	7800 3750 7800 3950
$Comp
L CAL_V_Simulation_circuit-rescue:2SJ681_Q_-LibraryLoader Q5
U 1 1 5E846E27
P 7150 3050
F 0 "Q5" H 7978 2996 50  0000 L CNN
F 1 "2SJ681_Q_" H 7978 2905 50  0000 L CNN
F 2 "LibraryLoader:TO230P250X650X900-3P" H 8000 3150 50  0001 L CNN
F 3 "http://docs-asia.electrocomponents.com/webdocs/0c29/0900766b80c29c40.pdf" H 8000 3050 50  0001 L CNN
F 4 "TOSHIBA Field Effect Transistor Silicon P Channel MOS Type (UMOSIII)" H 8000 2950 50  0001 L CNN "Description"
F 5 "2.5" H 8000 2850 50  0001 L CNN "Height"
F 6 "Toshiba" H 8000 2750 50  0001 L CNN "Manufacturer_Name"
F 7 "2SJ681(Q)" H 8000 2650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 8000 2550 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 8000 2450 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 8000 2350 50  0001 L CNN "RS Part Number"
F 11 "" H 8000 2250 50  0001 L CNN "RS Price/Stock"
	1    7150 3050
	0    -1   -1   0   
$EndComp
$Comp
L CAL_V_Simulation_circuit-rescue:2SK4017_Q_-LibraryLoader Q6
U 1 1 5E846E35
P 7800 3050
F 0 "Q6" H 8628 2996 50  0000 L CNN
F 1 "2SK4017_Q_" H 8628 2905 50  0000 L CNN
F 2 "LibraryLoader:TO230P250X650X900-3P" H 8650 3150 50  0001 L CNN
F 3 "http://toshiba.semicon-storage.com/us/product/mosfet/detail.2SK4017.html" H 8650 3050 50  0001 L CNN
F 4 "MOSFET,Nch,60V/5A/0.1ohm,New Pw-Mold2" H 8650 2950 50  0001 L CNN "Description"
F 5 "2.5" H 8650 2850 50  0001 L CNN "Height"
F 6 "Toshiba" H 8650 2750 50  0001 L CNN "Manufacturer_Name"
F 7 "2SK4017(Q)" H 8650 2650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 8650 2550 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 8650 2450 50  0001 L CNN "Mouser Price/Stock"
F 10 "0185580" H 8650 2350 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/0185580" H 8650 2250 50  0001 L CNN "RS Price/Stock"
	1    7800 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3050 7150 3150
Wire Wire Line
	7800 3150 7800 3050
Wire Wire Line
	7250 3050 7250 3250
Wire Wire Line
	7250 3250 7900 3250
Wire Wire Line
	7900 3250 7900 3050
$Comp
L power:GND #PWR0101
U 1 1 5E87393A
P 7700 3950
F 0 "#PWR0101" H 7700 3700 50  0001 C CNN
F 1 "GND" V 7705 3822 50  0000 R CNN
F 2 "" H 7700 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    7700 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3850 7250 3850
Connection ~ 6600 3850
$Comp
L power:GND #PWR0102
U 1 1 5E887540
P 6400 3950
F 0 "#PWR0102" H 6400 3700 50  0001 C CNN
F 1 "GND" V 6405 3822 50  0000 R CNN
F 2 "" H 6400 3950 50  0001 C CNN
F 3 "" H 6400 3950 50  0001 C CNN
	1    6400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3150 7800 3150
Wire Wire Line
	5850 3750 6500 3750
$Comp
L power:GND #PWR0103
U 1 1 5E8AA8E7
P 8000 3050
F 0 "#PWR0103" H 8000 2800 50  0001 C CNN
F 1 "GND" V 8005 2922 50  0000 R CNN
F 2 "" H 8000 3050 50  0001 C CNN
F 3 "" H 8000 3050 50  0001 C CNN
	1    8000 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3150 7150 3350
Connection ~ 7150 3150
Connection ~ 7150 3750
Wire Wire Line
	6500 3750 6500 3550
Connection ~ 6500 3750
Wire Wire Line
	7900 3250 7900 3450
Connection ~ 7900 3250
$Comp
L Device:L L1
U 1 1 5E8BA7EC
P 8700 3550
F 0 "L1" V 8519 3550 50  0000 C CNN
F 1 "100μH" V 8610 3550 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D9.5mm_P5.00mm_Fastron_07HVP" H 8700 3550 50  0001 C CNN
F 3 "~" H 8700 3550 50  0001 C CNN
	1    8700 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L2
U 1 1 5E8BC48D
P 8700 3450
F 0 "L2" V 8890 3450 50  0000 C CNN
F 1 "100μH" V 8799 3450 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D9.5mm_P5.00mm_Fastron_07HVP" H 8700 3450 50  0001 C CNN
F 3 "~" H 8700 3450 50  0001 C CNN
	1    8700 3450
	0    -1   -1   0   
$EndComp
$Comp
L CAL_V_Simulation_circuit-rescue:2SJ681_Q_-LibraryLoader Q1
U 1 1 5E7E2107
P 5950 3950
F 0 "Q1" H 6778 3896 50  0000 L CNN
F 1 "2SJ681_Q_" H 6778 3805 50  0000 L CNN
F 2 "LibraryLoader:TO230P250X650X900-3P" H 6800 4050 50  0001 L CNN
F 3 "http://docs-asia.electrocomponents.com/webdocs/0c29/0900766b80c29c40.pdf" H 6800 3950 50  0001 L CNN
F 4 "TOSHIBA Field Effect Transistor Silicon P Channel MOS Type (UMOSIII)" H 6800 3850 50  0001 L CNN "Description"
F 5 "2.5" H 6800 3750 50  0001 L CNN "Height"
F 6 "Toshiba" H 6800 3650 50  0001 L CNN "Manufacturer_Name"
F 7 "2SJ681(Q)" H 6800 3550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 6800 3450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 6800 3350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 6800 3250 50  0001 L CNN "RS Part Number"
F 11 "" H 6800 3150 50  0001 L CNN "RS Price/Stock"
	1    5950 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3750 7800 3750
$Comp
L CAL_V_Simulation_circuit-rescue:2SJ681_Q_-LibraryLoader Q3
U 1 1 5E7ED61A
P 7250 3950
F 0 "Q3" H 8078 3896 50  0000 L CNN
F 1 "2SJ681_Q_" H 8078 3805 50  0000 L CNN
F 2 "LibraryLoader:TO230P250X650X900-3P" H 8100 4050 50  0001 L CNN
F 3 "http://docs-asia.electrocomponents.com/webdocs/0c29/0900766b80c29c40.pdf" H 8100 3950 50  0001 L CNN
F 4 "TOSHIBA Field Effect Transistor Silicon P Channel MOS Type (UMOSIII)" H 8100 3850 50  0001 L CNN "Description"
F 5 "2.5" H 8100 3750 50  0001 L CNN "Height"
F 6 "Toshiba" H 8100 3650 50  0001 L CNN "Manufacturer_Name"
F 7 "2SJ681(Q)" H 8100 3550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 8100 3450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 8100 3350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 8100 3250 50  0001 L CNN "RS Part Number"
F 11 "" H 8100 3150 50  0001 L CNN "RS Price/Stock"
	1    7250 3950
	0    1    1    0   
$EndComp
$Comp
L CAL_V_Simulation_circuit-rescue:2SK4017_Q_-LibraryLoader Q2
U 1 1 5E7E3E4A
P 6600 3950
F 0 "Q2" H 7428 3896 50  0000 L CNN
F 1 "2SK4017_Q_" H 7428 3805 50  0000 L CNN
F 2 "LibraryLoader:TO230P250X650X900-3P" H 7450 4050 50  0001 L CNN
F 3 "http://toshiba.semicon-storage.com/us/product/mosfet/detail.2SK4017.html" H 7450 3950 50  0001 L CNN
F 4 "MOSFET,Nch,60V/5A/0.1ohm,New Pw-Mold2" H 7450 3850 50  0001 L CNN "Description"
F 5 "2.5" H 7450 3750 50  0001 L CNN "Height"
F 6 "Toshiba" H 7450 3650 50  0001 L CNN "Manufacturer_Name"
F 7 "2SK4017(Q)" H 7450 3550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 7450 3450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 7450 3350 50  0001 L CNN "Mouser Price/Stock"
F 10 "0185580" H 7450 3250 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/0185580" H 7450 3150 50  0001 L CNN "RS Price/Stock"
	1    6600 3950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E920BA5
P 9250 3450
F 0 "J1" H 9330 3442 50  0000 L CNN
F 1 "SPK" H 9330 3351 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 9250 3450 50  0001 C CNN
F 3 "~" H 9250 3450 50  0001 C CNN
	1    9250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3450 8950 3450
Wire Wire Line
	8850 3550 8950 3550
Wire Wire Line
	8950 3550 8950 3750
Connection ~ 8950 3550
Wire Wire Line
	8950 3550 9050 3550
Wire Wire Line
	8950 3450 8950 3250
Connection ~ 8950 3450
Wire Wire Line
	8950 3450 9050 3450
$Comp
L Device:CP_Small C1
U 1 1 5E92DF82
P 8950 3850
F 0 "C1" H 9038 3896 50  0000 L CNN
F 1 "470μF" H 9038 3805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 8950 3850 50  0001 C CNN
F 3 "~" H 8950 3850 50  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5E9310D5
P 8950 3150
F 0 "C2" H 8862 3104 50  0000 R CNN
F 1 "470μF" H 8862 3195 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 8950 3150 50  0001 C CNN
F 3 "~" H 8950 3150 50  0001 C CNN
	1    8950 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E93DD2C
P 8950 3000
F 0 "#PWR0104" H 8950 2750 50  0001 C CNN
F 1 "GND" V 8955 2872 50  0000 R CNN
F 2 "" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 50  0001 C CNN
	1    8950 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 3000 8950 3050
$Comp
L power:GND #PWR0105
U 1 1 5E94365C
P 8950 4000
F 0 "#PWR0105" H 8950 3750 50  0001 C CNN
F 1 "GND" V 8955 3872 50  0000 R CNN
F 2 "" H 8950 4000 50  0001 C CNN
F 3 "" H 8950 4000 50  0001 C CNN
	1    8950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3950 8950 4000
Text Label 5250 3850 0    50   ~ 0
PWM
$Comp
L Connector:TestPoint TP1
U 1 1 5E95C144
P 5500 3850
F 0 "TP1" V 5454 4038 50  0000 L CNN
F 1 "TestPoint" V 5545 4038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D3.50mm_Drill0.9mm_Beaded" H 5700 3850 50  0001 C CNN
F 3 "~" H 5700 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Connection ~ 5950 3850
Wire Wire Line
	5500 3850 5950 3850
Wire Wire Line
	5250 3850 5500 3850
Connection ~ 5500 3850
$Comp
L Connector:TestPoint TP2
U 1 1 5E99E818
P 7150 3350
F 0 "TP2" V 7104 3538 50  0000 L CNN
F 1 "TestPoint" V 7195 3538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D3.50mm_Drill0.9mm_Beaded" H 7350 3350 50  0001 C CNN
F 3 "~" H 7350 3350 50  0001 C CNN
	1    7150 3350
	0    -1   -1   0   
$EndComp
Connection ~ 7150 3350
Wire Wire Line
	7150 3350 7150 3750
$Comp
L Connector:TestPoint TP3
U 1 1 5E9ACD72
P 8450 3550
F 0 "TP3" V 8404 3738 50  0000 L CNN
F 1 "TestPoint" V 8495 3738 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D3.50mm_Drill0.9mm_Beaded" H 8650 3550 50  0001 C CNN
F 3 "~" H 8650 3550 50  0001 C CNN
	1    8450 3550
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5E9AF8DC
P 8450 3450
F 0 "TP4" V 8404 3638 50  0000 L CNN
F 1 "TestPoint" V 8495 3638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D3.50mm_Drill0.9mm_Beaded" H 8650 3450 50  0001 C CNN
F 3 "~" H 8650 3450 50  0001 C CNN
	1    8450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3550 8450 3550
Connection ~ 8450 3550
Wire Wire Line
	8450 3550 8550 3550
Wire Wire Line
	7900 3450 8450 3450
Connection ~ 8450 3450
Wire Wire Line
	8450 3450 8550 3450
Wire Wire Line
	5650 2600 5450 2600
Connection ~ 5550 2400
Wire Wire Line
	5550 2400 5450 2400
$Comp
L power:GND #PWR0106
U 1 1 5E66A46E
P 5450 2400
F 0 "#PWR0106" H 5450 2150 50  0001 C CNN
F 1 "GND" V 5455 2272 50  0000 R CNN
F 2 "" H 5450 2400 50  0001 C CNN
F 3 "" H 5450 2400 50  0001 C CNN
	1    5450 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2400 5650 2400
Wire Wire Line
	5550 2500 5550 2400
Wire Wire Line
	5650 2500 5550 2500
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 5E64CA84
P 5950 2500
F 0 "J2" H 6007 2817 50  0000 C CNN
F 1 "POWER" H 6007 2726 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 6000 2460 50  0001 C CNN
F 3 "~" H 6000 2460 50  0001 C CNN
	1    5950 2500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5EA032C7
P 5450 2600
F 0 "#PWR0108" H 5450 2450 50  0001 C CNN
F 1 "+5V" H 5465 2773 50  0000 C CNN
F 2 "" H 5450 2600 50  0001 C CNN
F 3 "" H 5450 2600 50  0001 C CNN
	1    5450 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5EA0C453
P 7350 3050
F 0 "#PWR0110" H 7350 2900 50  0001 C CNN
F 1 "+5V" H 7365 3223 50  0000 C CNN
F 2 "" H 7350 3050 50  0001 C CNN
F 3 "" H 7350 3050 50  0001 C CNN
	1    7350 3050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5EA0D591
P 7050 3950
F 0 "#PWR0111" H 7050 3800 50  0001 C CNN
F 1 "+5V" H 7065 4123 50  0000 C CNN
F 2 "" H 7050 3950 50  0001 C CNN
F 3 "" H 7050 3950 50  0001 C CNN
	1    7050 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5EA0E4FD
P 5750 3950
F 0 "#PWR0112" H 5750 3800 50  0001 C CNN
F 1 "+5V" H 5765 4123 50  0000 C CNN
F 2 "" H 5750 3950 50  0001 C CNN
F 3 "" H 5750 3950 50  0001 C CNN
	1    5750 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3500 2200 3500
$Comp
L power:GND #PWR0113
U 1 1 5E7DD16F
P 2200 3500
F 0 "#PWR0113" H 2200 3250 50  0001 C CNN
F 1 "GND" V 2205 3372 50  0000 R CNN
F 2 "" H 2200 3500 50  0001 C CNN
F 3 "" H 2200 3500 50  0001 C CNN
	1    2200 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 3500 2700 3500
$Comp
L Switch:SW_Push SW1
U 1 1 5E7DA151
P 2500 3500
F 0 "SW1" H 2500 3785 50  0000 C CNN
F 1 "SW_Push" H 2500 3694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2500 3700 50  0001 C CNN
F 3 "~" H 2500 3700 50  0001 C CNN
	1    2500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5EA089F8
P 3400 1750
F 0 "#PWR0109" H 3400 1600 50  0001 C CNN
F 1 "+5V" H 3415 1923 50  0000 C CNN
F 2 "" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 U1
U 1 1 5E642A4F
P 3700 3300
F 0 "U1" H 3700 4781 50  0000 C CNN
F 1 "Raspberry_Pi_2" H 3700 4690 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 3700 3300 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3700 3300 50  0001 C CNN
	1    3700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E6612FA
P 3200 4700
F 0 "#PWR0107" H 3200 4450 50  0001 C CNN
F 1 "GND" V 3205 4572 50  0000 R CNN
F 2 "" H 3200 4700 50  0001 C CNN
F 3 "" H 3200 4700 50  0001 C CNN
	1    3200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4600 4000 4700
Wire Wire Line
	3700 4600 3700 4700
Connection ~ 3700 4700
Wire Wire Line
	3400 4600 3400 4700
Connection ~ 3400 4700
Wire Wire Line
	3500 1750 3400 1750
Wire Wire Line
	3500 1750 3600 1750
Connection ~ 3500 1750
Wire Wire Line
	3500 1750 3500 2000
Wire Wire Line
	3600 1750 3600 2000
NoConn ~ 4500 3800
NoConn ~ 4500 3700
NoConn ~ 4500 3600
NoConn ~ 4500 3500
NoConn ~ 4500 3400
NoConn ~ 4500 3200
NoConn ~ 4500 3100
NoConn ~ 4500 3000
NoConn ~ 4500 2800
NoConn ~ 4500 2700
NoConn ~ 4500 2500
NoConn ~ 4500 2400
NoConn ~ 2900 4000
NoConn ~ 2900 3900
NoConn ~ 2900 3800
NoConn ~ 2900 3700
NoConn ~ 2900 3600
NoConn ~ 2900 3300
NoConn ~ 2900 3200
NoConn ~ 2900 3100
NoConn ~ 2900 2900
NoConn ~ 2900 2800
NoConn ~ 2900 2700
NoConn ~ 2900 2500
NoConn ~ 2900 2400
NoConn ~ 3800 2000
NoConn ~ 3900 2000
Text Label 4750 4100 2    50   ~ 0
PWM
Wire Wire Line
	4500 4100 4750 4100
NoConn ~ 4500 4000
Wire Wire Line
	3200 4700 3400 4700
Wire Wire Line
	3400 4700 3700 4700
Wire Wire Line
	3700 4700 4000 4700
NoConn ~ 3900 4600
NoConn ~ 3800 4600
NoConn ~ 3600 4600
NoConn ~ 3500 4600
NoConn ~ 3300 4600
$EndSCHEMATC
