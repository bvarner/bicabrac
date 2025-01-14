EESchema Schematic File Version 4
LIBS:upipower-injector-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Raspberry Pi Zero (W) uHAT Template Board"
Date "2019-02-28"
Rev "1.0"
Comp ""
Comment1 "This Schematic is licensed under MIT Open Source License."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5C77771F
P 5250 2950
F 0 "J1" H 5300 4067 50  0000 C CNN
F 1 "GPIO_CONNECTOR" H 5300 3976 50  0000 C CNN
F 2 "lib:PinSocket_2x20_P2.54mm_Vertical_Centered_Anchor" H 5250 2950 50  0001 C CNN
F 3 "~" H 5250 2950 50  0001 C CNN
	1    5250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C777805
P 4850 4100
F 0 "#PWR03" H 4850 3850 50  0001 C CNN
F 1 "GND" H 4855 3927 50  0001 C CNN
F 2 "" H 4850 4100 50  0001 C CNN
F 3 "" H 4850 4100 50  0001 C CNN
	1    4850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C777838
P 5750 4100
F 0 "#PWR04" H 5750 3850 50  0001 C CNN
F 1 "GND" H 5755 3927 50  0001 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2450 4850 2450
Wire Wire Line
	4850 2450 4850 3250
Wire Wire Line
	5050 3250 4850 3250
Connection ~ 4850 3250
Wire Wire Line
	4850 3250 4850 3950
Wire Wire Line
	5050 3950 4850 3950
Connection ~ 4850 3950
Wire Wire Line
	4850 3950 4850 4100
Wire Wire Line
	5550 2950 5750 2950
Connection ~ 5750 2950
Wire Wire Line
	5550 3450 5750 3450
Connection ~ 5750 3450
Wire Wire Line
	5750 3450 5750 3650
Wire Wire Line
	5550 3650 5750 3650
Connection ~ 5750 3650
Wire Wire Line
	5750 3650 5750 4100
$Comp
L power:+3.3V #PWR02
U 1 1 5C777AB0
P 4800 1950
F 0 "#PWR02" H 4800 1800 50  0001 C CNN
F 1 "+3.3V" H 4815 2123 50  0000 C CNN
F 2 "" H 4800 1950 50  0001 C CNN
F 3 "" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2050 4800 1950
Wire Wire Line
	5050 2850 4800 2850
Wire Wire Line
	4800 2850 4800 2050
Connection ~ 4800 2050
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C77824A
P 4400 1950
F 0 "#FLG01" H 4400 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 4400 2124 50  0000 C CNN
F 2 "" H 4400 1950 50  0001 C CNN
F 3 "~" H 4400 1950 50  0001 C CNN
	1    4400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C778504
P 4450 4200
F 0 "#PWR01" H 4450 3950 50  0001 C CNN
F 1 "GND" H 4455 4027 50  0001 C CNN
F 2 "" H 4450 4200 50  0001 C CNN
F 3 "" H 4450 4200 50  0001 C CNN
	1    4450 4200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C778511
P 4450 4150
F 0 "#FLG02" H 4450 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 4324 50  0000 C CNN
F 2 "" H 4450 4150 50  0001 C CNN
F 3 "~" H 4450 4150 50  0001 C CNN
	1    4450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4150 4450 4200
Wire Wire Line
	4800 2050 5050 2050
Wire Wire Line
	4400 2050 4400 1950
Wire Wire Line
	4400 2050 4800 2050
Text Label 4100 2150 0    50   ~ 0
GPIO2_SDA1
Text Label 4100 2250 0    50   ~ 0
GPIO3_SCL1
Text Label 4100 2350 0    50   ~ 0
GPIO4_GPIO_GCLK
Text Label 4100 2550 0    50   ~ 0
GPIO17_GEN0
Text Label 4100 2650 0    50   ~ 0
GPIO27_GEN2
Text Label 4100 2750 0    50   ~ 0
GPIO22_GEN3
Text Label 4100 2950 0    50   ~ 0
GPIO10_SPI_MOSI
Wire Wire Line
	4000 2950 5050 2950
Wire Wire Line
	4000 3050 5050 3050
Wire Wire Line
	4000 3150 5050 3150
Wire Wire Line
	4000 3350 5050 3350
Wire Wire Line
	4000 3450 5050 3450
Wire Wire Line
	4000 3550 5050 3550
Wire Wire Line
	4000 3650 5050 3650
Wire Wire Line
	4000 3750 5050 3750
Wire Wire Line
	4000 3850 5050 3850
Wire Wire Line
	4000 2750 5050 2750
Wire Wire Line
	4000 2650 5050 2650
Wire Wire Line
	4000 2550 5050 2550
Wire Wire Line
	4000 2350 5050 2350
Wire Wire Line
	4000 2250 5050 2250
Wire Wire Line
	4000 2150 5050 2150
Text Label 4100 3050 0    50   ~ 0
GPIO9_SPI_MISO
Text Label 4100 3150 0    50   ~ 0
GPIO11_SPI_SCLK
Text Label 4100 3350 0    50   ~ 0
ID_SD
Text Label 4100 3450 0    50   ~ 0
GPIO5
Text Label 4100 3550 0    50   ~ 0
GPIO6
Text Label 4100 3650 0    50   ~ 0
GPIO13
Text Label 4100 3750 0    50   ~ 0
GPIO19
Text Label 4100 3850 0    50   ~ 0
GPIO26
NoConn ~ 4000 2150
NoConn ~ 4000 2250
NoConn ~ 4000 2350
NoConn ~ 4000 2550
NoConn ~ 4000 2650
NoConn ~ 4000 2750
NoConn ~ 4000 2950
NoConn ~ 4000 3050
NoConn ~ 4000 3150
NoConn ~ 4000 3350
NoConn ~ 4000 3450
NoConn ~ 4000 3550
NoConn ~ 4000 3650
NoConn ~ 4000 3750
NoConn ~ 4000 3850
Text Label 5900 2750 0    50   ~ 0
GPIO23_GEN4
Text Label 5900 2850 0    50   ~ 0
GPIO24_GEN5
Text Label 5900 3050 0    50   ~ 0
GPIO25_GEN6
Text Label 5900 3150 0    50   ~ 0
GPIO8_SPI_CE0_N
Text Label 5900 3250 0    50   ~ 0
GPIO7_SPI_CE1_N
Wire Wire Line
	5550 3150 6600 3150
Wire Wire Line
	5550 3250 6600 3250
Text Label 5900 3350 0    50   ~ 0
ID_SC
Text Label 5900 3550 0    50   ~ 0
GPIO12
Text Label 5900 3750 0    50   ~ 0
GPIO16
Text Label 5900 3850 0    50   ~ 0
GPIO20
Text Label 5900 3950 0    50   ~ 0
GPIO21
Wire Wire Line
	5550 2750 6600 2750
Wire Wire Line
	5550 3050 6600 3050
Wire Wire Line
	5550 3350 6600 3350
Wire Wire Line
	5550 3550 6600 3550
Wire Wire Line
	5550 3750 6600 3750
Wire Wire Line
	5550 3850 6600 3850
NoConn ~ 6600 2750
NoConn ~ 6600 2850
NoConn ~ 6600 3050
NoConn ~ 6600 3150
NoConn ~ 6600 3250
NoConn ~ 6600 3350
NoConn ~ 6600 3550
NoConn ~ 6600 3750
NoConn ~ 6600 3850
NoConn ~ 6600 3950
Wire Wire Line
	5550 3950 6600 3950
$Comp
L Mechanical:MountingHole H1
U 1 1 5C7C4C81
P 7700 3200
F 0 "H1" H 7800 3246 50  0000 L CNN
F 1 "MountingHole" H 7800 3155 50  0000 L CNN
F 2 "lib:MountingHole_2.7mm_M2.5_uHAT_RPi" H 7700 3200 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
	1    7700 3200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C7C7FBC
P 7700 3400
F 0 "H2" H 7800 3446 50  0000 L CNN
F 1 "MountingHole" H 7800 3355 50  0000 L CNN
F 2 "lib:MountingHole_2.7mm_M2.5_uHAT_RPi" H 7700 3400 50  0001 C CNN
F 3 "~" H 7700 3400 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C7C8014
P 7700 3600
F 0 "H3" H 7800 3646 50  0000 L CNN
F 1 "MountingHole" H 7800 3555 50  0000 L CNN
F 2 "lib:MountingHole_2.7mm_M2.5_uHAT_RPi" H 7700 3600 50  0001 C CNN
F 3 "~" H 7700 3600 50  0001 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C7C8030
P 7700 3800
F 0 "H4" H 7800 3846 50  0000 L CNN
F 1 "MountingHole" H 7800 3755 50  0000 L CNN
F 2 "lib:MountingHole_2.7mm_M2.5_uHAT_RPi" H 7700 3800 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2850 6600 2850
Wire Wire Line
	5750 2950 5750 3450
Text Label 10650 1750 2    50   ~ 0
P5V
Text Label 6600 2050 2    50   ~ 0
P5V
Wire Wire Line
	5850 2050 6200 2050
Wire Wire Line
	9400 3000 9400 3100
Wire Wire Line
	10250 3000 10250 3100
$Comp
L power:GND #PWR010
U 1 1 5E6A1FC1
P 10250 3100
F 0 "#PWR010" H 10250 2850 50  0001 C CNN
F 1 "GND" H 10255 2927 50  0001 C CNN
F 2 "" H 10250 3100 50  0001 C CNN
F 3 "" H 10250 3100 50  0001 C CNN
	1    10250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E6A1AF5
P 9400 3100
F 0 "#PWR09" H 9400 2850 50  0001 C CNN
F 1 "GND" H 9405 2927 50  0001 C CNN
F 2 "" H 9400 3100 50  0001 C CNN
F 3 "" H 9400 3100 50  0001 C CNN
	1    9400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E6A165C
P 10250 2850
F 0 "R2" H 10320 2896 50  0000 L CNN
F 1 "47K" H 10320 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10180 2850 50  0001 C CNN
F 3 "~" H 10250 2850 50  0001 C CNN
	1    10250 2850
	1    0    0    -1  
$EndComp
Connection ~ 10250 2650
Wire Wire Line
	10250 2650 10250 2700
Wire Wire Line
	10250 1750 10650 1750
Connection ~ 10250 1750
Wire Wire Line
	10250 2150 10250 1750
Wire Wire Line
	9950 1750 10250 1750
Wire Wire Line
	9400 1750 9550 1750
Connection ~ 9400 1750
Wire Wire Line
	9400 1750 9400 2150
$Comp
L Device:R R1
U 1 1 5E69B337
P 9400 2850
F 0 "R1" H 9470 2896 50  0000 L CNN
F 1 "10K" H 9470 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 2850 50  0001 C CNN
F 3 "~" H 9400 2850 50  0001 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
Connection ~ 9400 2600
Wire Wire Line
	9400 2600 9400 2700
Connection ~ 9700 2600
Wire Wire Line
	9400 2600 9400 2550
Wire Wire Line
	9700 2600 9400 2600
Wire Wire Line
	9700 2600 9700 2350
Wire Wire Line
	9950 2600 9700 2600
Wire Wire Line
	9950 2350 9950 2600
Wire Wire Line
	10250 2650 10250 2550
Wire Wire Line
	9850 2650 10250 2650
Wire Wire Line
	9850 2050 9850 2650
$Comp
L dmmt5401:DMMT5401-raspberrypi_hat-powerpiHAT-rescue-powerpiHAT-rescue Q1
U 1 1 5E68FFD0
P 9500 2350
F 0 "Q1" H 9691 2259 50  0000 L CNN
F 1 "DMMT5401" H 9691 2350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9691 2441 50  0000 L CIN
F 3 "" H 9500 2350 50  0000 L CNN
	1    9500 2350
	-1   0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q2
U 1 1 5E736AD0
P 9750 1750
F 0 "Q2" V 10017 1750 60  0000 C CNN
F 1 "DMG2305UX-13" V 9911 1750 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9950 1950 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 9950 2050 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 9950 2150 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 9950 2250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9950 2350 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9950 2450 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 9950 2550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 9950 2650 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 9950 2750 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 9950 2850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9950 2950 60  0001 L CNN "Status"
	1    9750 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR06
U 1 1 5E6FA8F9
P 7400 1750
F 0 "#PWR06" H 7400 1600 50  0001 C CNN
F 1 "+12V" H 7415 1923 50  0000 C CNN
F 2 "" H 7400 1750 50  0001 C CNN
F 3 "" H 7400 1750 50  0001 C CNN
	1    7400 1750
	-1   0    0    -1  
$EndComp
Connection ~ 7900 1750
Wire Wire Line
	7900 1750 7400 1750
Wire Wire Line
	7900 1750 7900 1550
Wire Wire Line
	8200 1750 7900 1750
Wire Wire Line
	8500 2050 8500 2150
$Comp
L power:GND #PWR08
U 1 1 5E6ED3D5
P 8500 2150
F 0 "#PWR08" H 8500 1900 50  0001 C CNN
F 1 "GND" H 8505 1977 50  0001 C CNN
F 2 "" H 8500 2150 50  0001 C CNN
F 3 "" H 8500 2150 50  0001 C CNN
	1    8500 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 2450 6600 2450
Wire Wire Line
	5850 2050 5850 1950
NoConn ~ 6600 2550
NoConn ~ 6600 2450
NoConn ~ 6600 2350
Wire Wire Line
	5550 2550 6600 2550
Wire Wire Line
	5550 2350 6600 2350
Text Label 5900 2550 0    50   ~ 0
GPIO18_GEN1
Text Label 5900 2450 0    50   ~ 0
GPIO15_RXD0
Text Label 5900 2350 0    50   ~ 0
GPIO14_TXD0
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5C77CEFA
P 7900 1550
F 0 "#FLG04" H 7900 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 7900 1724 50  0000 C CNN
F 2 "" H 7900 1550 50  0001 C CNN
F 3 "~" H 7900 1550 50  0001 C CNN
	1    7900 1550
	-1   0    0    -1  
$EndComp
Connection ~ 5850 2050
Wire Wire Line
	5850 2150 5850 2050
Wire Wire Line
	5550 2150 5850 2150
Wire Wire Line
	5550 2050 5850 2050
$Comp
L power:+5V #PWR05
U 1 1 5C777E01
P 5850 1950
F 0 "#PWR05" H 5850 1800 50  0001 C CNN
F 1 "+5V" H 5865 2123 50  0000 C CNN
F 2 "" H 5850 1950 50  0001 C CNN
F 3 "" H 5850 1950 50  0001 C CNN
	1    5850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2650 5750 2950
Connection ~ 5750 2650
Wire Wire Line
	5550 2650 5750 2650
Wire Wire Line
	5750 2250 5750 2650
Wire Wire Line
	5550 2250 5750 2250
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E744A65
P 6200 2050
F 0 "#FLG03" H 6200 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 2224 50  0000 C CNN
F 2 "" H 6200 2050 50  0001 C CNN
F 3 "~" H 6200 2050 50  0001 C CNN
	1    6200 2050
	-1   0    0    -1  
$EndComp
Connection ~ 6200 2050
Wire Wire Line
	6200 2050 6600 2050
$Comp
L dmmt5401:DMMT5401-raspberrypi_hat-powerpiHAT-rescue-powerpiHAT-rescue Q1
U 2 1 5E75B15A
P 10150 2350
F 0 "Q1" H 10340 2259 50  0000 L CNN
F 1 "DMMT5401" H 10340 2350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 10340 2441 50  0000 L CIN
F 3 "" H 10150 2350 50  0000 L CNN
	2    10150 2350
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5E76A476
P 7200 1750
F 0 "J2" H 7092 1935 50  0000 C CNN
F 1 "Conn_01x02_Female" H 7092 1844 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P7.62mm_Drill2.5mm" H 7200 1750 50  0001 C CNN
F 3 "~" H 7200 1750 50  0001 C CNN
	1    7200 1750
	-1   0    0    -1  
$EndComp
Connection ~ 7400 1750
$Comp
L power:GND #PWR07
U 1 1 5E76AFF3
P 7400 1950
F 0 "#PWR07" H 7400 1700 50  0001 C CNN
F 1 "GND" H 7405 1777 50  0001 C CNN
F 2 "" H 7400 1950 50  0001 C CNN
F 3 "" H 7400 1950 50  0001 C CNN
	1    7400 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 1850 7400 1950
$Comp
L Device:C C1
U 1 1 5E718E50
P 7900 1900
F 0 "C1" H 8015 1946 50  0000 L CNN
F 1 "10uf" H 8015 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7938 1750 50  0001 C CNN
F 3 "~" H 7900 1900 50  0001 C CNN
	1    7900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2050 8500 2050
Connection ~ 8500 2050
Wire Wire Line
	9000 2050 8500 2050
Wire Wire Line
	8800 1750 9000 1750
$Comp
L Device:C C2
U 1 1 5E720D78
P 9000 1900
F 0 "C2" H 9115 1946 50  0000 L CNN
F 1 "10uf" H 9115 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9038 1750 50  0001 C CNN
F 3 "~" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
Connection ~ 9000 1750
Wire Wire Line
	9000 1750 9400 1750
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5E87BCA6
P 8500 1750
F 0 "U1" H 8500 1992 50  0000 C CNN
F 1 "LM7805_TO220" H 8500 1901 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8500 1975 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 8500 1700 50  0001 C CNN
	1    8500 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
