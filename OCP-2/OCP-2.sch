EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A1 33110 23386
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L eo-engine:МК*ATmega88*TQFP32 DD2
U 1 1 61923900
P 12500 10000
F 0 "DD2" H 15900 10350 138 0000 C CNN
F 1 "МК*ATmega88*TQFP32" H 15250 8400 50  0001 C CNN
F 2 "N_DD:микросхема_ATMEGA-8-161AU" H 12600 10000 50  0001 C CNN
F 3 "" H 12600 10000 50  0001 C CNN
F 4 "ATmega88" H 14500 5150 138 0000 C CNN "INFO"
F 5 "130" H 12800 10200 50  0001 C CNN "COST"
F 6 "https://www.terraelectronica.ru/product/1908354" H 12650 10350 50  0001 C CNN "LINK"
	1    12500 10000
	1    0    0    -1  
$EndComp
Text Notes 2000 8500 0    138  ~ 0
10 входов\n10 выходов\nETH
$Comp
L eo-engine:МК*ATmega168*TQFP32 DD1
U 1 1 61926053
P 5000 10000
F 0 "DD1" H 8500 10350 138 0000 C CNN
F 1 "МК*ATmega168*TQFP32" H 7750 8400 50  0001 C CNN
F 2 "N_DD:микросхема_ATMEGA-8-161AU" H 5100 10000 50  0001 C CNN
F 3 "" H 5100 10000 50  0001 C CNN
F 4 "ATmega168" H 7000 5150 138 0000 C CNN "INFO"
F 5 "205" H 5300 10200 50  0001 C CNN "COST"
F 6 "https://www.terraelectronica.ru/product/1907917" H 5150 10350 50  0001 C CNN "LINK"
	1    5000 10000
	1    0    0    -1  
$EndComp
$Comp
L eo-engine:Преобразователь*ETH-SPI*SSOP28 DD3
U 1 1 61929E60
P 20000 10000
F 0 "DD3" H 22900 10350 138 0000 C CNN
F 1 "Преобразователь*ETH-SPI*SSOP28" H 20200 10500 138 0001 C CNN
F 2 "N_DD:SSOP-28" H 20900 10200 138 0001 C CNN
F 3 "https://www.terraelectronica.ru/pdf/show?pdf_file=http%253A%252F%252Fwww.farnell.com%252Fdatasheets%252F1700966.pdf" H 19100 10200 138 0001 C CNN
F 4 "https://www.terraelectronica.ru/product/336057" H 20200 10500 138 0001 C CNN "LINK"
F 5 "350" H 19100 10200 138 0001 C CNN "COST"
F 6 "ENC28J60" H 21750 5650 138 0000 C CNN "INFO"
	1    20000 10000
	1    0    0    -1  
$EndComp
$Comp
L eo-engine:Конденсатор*10мкФ*16В*0805 C1
U 1 1 61914C39
P 20500 18500
F 0 "C1" V 20200 18100 138 0000 L CNN
F 1 "Конденсатор*10мкФ*16В*0805" H 20400 18600 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0805" H 20500 18500 50  0001 C CNN
F 3 "" H 20500 18500 50  0001 C CNN
F 4 "10мкФ 16В" V 20750 17700 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863492" H 20500 18500 50  0001 C CNN "LINK"
	1    20500 18500
	0    1    1    0   
$EndComp
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C2
U 1 1 619169D1
P 22000 15000
F 0 "C2" V 21700 14600 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 21900 15100 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 22000 15000 50  0001 C CNN
F 3 "" H 22000 15000 50  0001 C CNN
F 4 "0,1мкФ 25В" V 22250 14150 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 22000 15000 50  0001 C CNN "LINK"
	1    22000 15000
	0    1    1    0   
$EndComp
Text Label 19000 10000 0    138  ~ 0
EXR.CAP
Text Label 19000 10300 0    138  ~ 0
VSS
Text Label 19000 13000 0    138  ~ 0
VSS.RX
Text Label 24500 10000 2    138  ~ 0
VDD
Text Label 24500 10900 2    138  ~ 0
VDD.OSC
Text Label 24500 11800 2    138  ~ 0
VSS.OSC
Text Label 24500 12100 2    138  ~ 0
VSS.PLL
Text Label 24500 13000 2    138  ~ 0
VSS.TX
Text Label 24500 12700 2    138  ~ 0
VDD.RX
Text Label 24500 12400 2    138  ~ 0
VDD.PLL
Entry Wire Line
	18750 10100 18850 10000
Entry Wire Line
	18750 10400 18850 10300
Wire Bus Line
	18750 20000 24750 20000
Wire Wire Line
	18850 10300 20000 10300
Wire Wire Line
	18850 10000 20000 10000
Entry Wire Line
	18750 13100 18850 13000
Wire Wire Line
	18850 13000 20000 13000
$Comp
L eo-engine:#метка-GND #GND1
U 1 1 6191F2BD
P 21000 18750
F 0 "#GND1" H 21000 18800 50  0001 C CNN
F 1 "#метка-GND" H 21050 18900 50  0001 C CNN
F 2 "" H 21000 18750 50  0001 C CNN
F 3 "" H 21000 18750 50  0001 C CNN
	1    21000 18750
	1    0    0    -1  
$EndComp
Entry Wire Line
	24650 10000 24750 10100
Wire Wire Line
	23500 10000 24650 10000
Entry Wire Line
	24650 10900 24750 11000
Entry Wire Line
	24650 11800 24750 11900
Entry Wire Line
	24650 12100 24750 12200
Entry Wire Line
	24650 12400 24750 12500
Entry Wire Line
	24650 12700 24750 12800
Entry Wire Line
	24650 13000 24750 13100
Wire Wire Line
	23500 13000 24650 13000
Wire Wire Line
	23500 12700 24650 12700
Wire Wire Line
	23500 12400 24650 12400
Wire Wire Line
	23500 12100 24650 12100
Wire Wire Line
	23500 11800 24650 11800
Wire Wire Line
	23500 10900 24650 10900
Text Label 19000 15000 0    138  ~ 0
VSS
Text Label 24500 15000 2    138  ~ 0
VDD
Text Label 19000 15750 0    138  ~ 0
VSS.RX
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C3
U 1 1 619289AC
P 22000 15750
F 0 "C3" V 21700 15350 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 21900 15850 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 22000 15750 50  0001 C CNN
F 3 "" H 22000 15750 50  0001 C CNN
F 4 "0,1мкФ 25В" V 22250 14900 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 22000 15750 50  0001 C CNN "LINK"
	1    22000 15750
	0    1    1    0   
$EndComp
Text Label 24500 15750 2    138  ~ 0
VDD.RX
Text Label 19000 16500 0    138  ~ 0
VSS.TX
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C4
U 1 1 619290C7
P 22000 16500
F 0 "C4" V 21700 16100 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 21900 16600 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 22000 16500 50  0001 C CNN
F 3 "" H 22000 16500 50  0001 C CNN
F 4 "0,1мкФ 25В" V 22250 15650 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 22000 16500 50  0001 C CNN "LINK"
	1    22000 16500
	0    1    1    0   
$EndComp
Text Label 24500 13900 2    138  ~ 0
VDD.TX
Entry Wire Line
	24650 13900 24750 14000
Wire Wire Line
	23500 13900 24650 13900
Text Label 24500 16500 2    138  ~ 0
VDD.TX
Text Label 24500 17250 2    138  ~ 0
VDD.PLL
Text Label 19000 17250 0    138  ~ 0
VSS.PLL
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C5
U 1 1 6192B495
P 22000 17250
F 0 "C5" V 21700 16850 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 21900 17350 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 22000 17250 50  0001 C CNN
F 3 "" H 22000 17250 50  0001 C CNN
F 4 "0,1мкФ 25В" V 22250 16400 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 22000 17250 50  0001 C CNN "LINK"
	1    22000 17250
	0    1    1    0   
$EndComp
Text Label 24500 18000 2    138  ~ 0
VDD.OSC
Text Label 19000 18000 0    138  ~ 0
VSS.OSC
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C6
U 1 1 6192C861
P 22000 18000
F 0 "C6" V 21700 17600 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 21900 18100 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 22000 18000 50  0001 C CNN
F 3 "" H 22000 18000 50  0001 C CNN
F 4 "0,1мкФ 25В" V 22250 17150 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 22000 18000 50  0001 C CNN "LINK"
	1    22000 18000
	0    1    1    0   
$EndComp
Entry Wire Line
	18750 14900 18850 15000
Wire Wire Line
	18850 15000 21000 15000
Entry Wire Line
	24650 15000 24750 14900
Wire Wire Line
	22000 15000 22500 15000
Entry Wire Line
	24650 15750 24750 15650
Entry Wire Line
	24650 16500 24750 16400
Entry Wire Line
	24650 17250 24750 17150
Entry Wire Line
	24650 18000 24750 17900
Wire Wire Line
	22000 18000 22500 18000
Wire Wire Line
	22000 17250 22500 17250
Wire Wire Line
	22000 16500 22500 16500
Wire Wire Line
	22000 15750 22500 15750
Entry Wire Line
	18850 15750 18750 15650
Wire Wire Line
	18850 15750 21000 15750
Entry Wire Line
	18750 16600 18850 16500
Entry Wire Line
	18750 17350 18850 17250
Entry Wire Line
	18750 18100 18850 18000
Wire Wire Line
	18850 18000 21000 18000
Wire Wire Line
	18850 17250 21000 17250
Wire Wire Line
	18850 16500 21000 16500
Wire Wire Line
	21000 15000 21000 15750
Connection ~ 21000 15000
Wire Wire Line
	21000 15000 21500 15000
Connection ~ 21000 18000
Wire Wire Line
	21000 18000 21500 18000
Text Label 19000 18500 0    138  ~ 0
EXR.CAP
Entry Wire Line
	18750 18400 18850 18500
Wire Wire Line
	18850 18500 20000 18500
Wire Wire Line
	20500 18500 21000 18500
Wire Wire Line
	21000 18500 21000 18000
Wire Wire Line
	21000 18500 21000 18750
Connection ~ 21000 18500
Wire Wire Line
	22500 18000 22500 17250
Connection ~ 22500 18000
Wire Wire Line
	22500 18000 24650 18000
Connection ~ 22500 15000
Wire Wire Line
	22500 15000 24650 15000
$Comp
L eo-engine:#метка-3V3 #3V1
U 1 1 6194132E
P 22500 15000
F 0 "#3V1" H 22500 14950 50  0001 C CNN
F 1 "#метка-3V3" H 22450 14850 50  0001 C CNN
F 2 "" H 22500 15000 50  0001 C CNN
F 3 "" H 22500 15000 50  0001 C CNN
	1    22500 15000
	1    0    0    -1  
$EndComp
Connection ~ 21000 15750
Wire Wire Line
	21000 15750 21500 15750
Wire Wire Line
	21000 15750 21000 16500
Connection ~ 21000 16500
Wire Wire Line
	21000 16500 21500 16500
Wire Wire Line
	21000 16500 21000 17250
Connection ~ 21000 17250
Wire Wire Line
	21000 17250 21500 17250
Wire Wire Line
	21000 17250 21000 18000
Connection ~ 22500 17250
Wire Wire Line
	22500 17250 24650 17250
Wire Wire Line
	22500 17250 22500 16500
Connection ~ 22500 16500
Wire Wire Line
	22500 16500 24650 16500
Wire Wire Line
	22500 16500 22500 15750
Connection ~ 22500 15750
Wire Wire Line
	22500 15750 24650 15750
Wire Wire Line
	22500 15750 22500 15000
$Comp
L eo-engine:Вилка*PLD*6контактов*2ряда*вертикальная*AVR XP1
U 1 1 6194E68F
P 13750 8000
F 0 "XP1" H 14650 8300 138 0000 L CNN
F 1 "Вилка*PLD*6контактов*2ряда*вертикальная*AVR" H 13750 8500 50  0001 C CNN
F 2 "N_X:Вилка_PLD6_вертикальная_AB" H 13750 8700 50  0001 C CNN
F 3 "" H 13750 8000 50  0001 C CNN
F 4 "PLD6" H 14250 7100 138 0000 L CNN "INFO"
F 5 "https://www.chipdip.ru/product/pld-6" H 13750 8600 50  0001 C CNN "LINK"
	1    13750 8000
	1    0    0    -1  
$EndComp
Text Label 17500 10000 2    138  ~ 0
SCK.S
Text Label 11500 14200 0    138  ~ 0
MOSI.S
Text Label 11500 14500 0    138  ~ 0
MISO.S
Text Label 17500 13600 2    138  ~ 0
RES.S
Wire Wire Line
	16500 13600 17650 13600
Wire Wire Line
	16500 10000 17650 10000
Entry Wire Line
	17750 10100 17650 10000
Entry Wire Line
	17750 13700 17650 13600
Entry Wire Line
	11250 14300 11350 14200
Entry Wire Line
	11250 14400 11350 14500
Wire Wire Line
	12500 14200 11350 14200
Wire Wire Line
	11350 14500 12500 14500
Wire Bus Line
	11250 20000 17750 20000
Text Label 11500 8300 0    138  ~ 0
SCK.S
Entry Wire Line
	11250 8400 11350 8300
Wire Wire Line
	11350 8300 13750 8300
Entry Wire Line
	11250 8100 11350 8000
Wire Wire Line
	11350 8000 13750 8000
Text Label 11500 8000 0    138  ~ 0
MISO.S
Entry Wire Line
	11250 8700 11350 8600
Wire Wire Line
	11350 8600 12500 8600
Text Label 11500 8600 0    138  ~ 0
RES.S
$Comp
L eo-engine:#метка-GND #GND3
U 1 1 6196ECEF
P 15500 8750
F 0 "#GND3" H 15500 8800 50  0001 C CNN
F 1 "#метка-GND" H 15550 8900 50  0001 C CNN
F 2 "" H 15500 8750 50  0001 C CNN
F 3 "" H 15500 8750 50  0001 C CNN
	1    15500 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	15250 8600 15500 8600
Wire Wire Line
	15500 8600 15500 8750
Wire Wire Line
	15250 8000 15500 8000
Wire Wire Line
	15500 8000 15500 7500
Wire Wire Line
	15250 8300 17650 8300
Entry Wire Line
	17750 8400 17650 8300
Text Label 17500 8300 2    138  ~ 0
MOSI.S
Text Label 4000 14200 0    138  ~ 0
MOSI.M
Text Label 4000 14500 0    138  ~ 0
MISO.M
Entry Wire Line
	3750 14300 3850 14200
Entry Wire Line
	3750 14400 3850 14500
Wire Wire Line
	5000 14200 3850 14200
Wire Wire Line
	3850 14500 5000 14500
Wire Bus Line
	3750 20000 10250 20000
Text Label 4000 8300 0    138  ~ 0
SCK.M
Entry Wire Line
	3750 8400 3850 8300
Wire Wire Line
	3850 8300 6250 8300
Entry Wire Line
	3750 8100 3850 8000
Wire Wire Line
	3850 8000 6250 8000
Text Label 4000 8000 0    138  ~ 0
MISO.M
Entry Wire Line
	3750 8700 3850 8600
Wire Wire Line
	3850 8600 5000 8600
Text Label 4000 8600 0    138  ~ 0
RES.M
Text Label 10000 10000 2    138  ~ 0
SCK.M
Text Label 10000 13600 2    138  ~ 0
RES.M
Wire Wire Line
	9000 13600 10150 13600
Wire Wire Line
	9000 10000 10150 10000
Entry Wire Line
	10250 10100 10150 10000
Entry Wire Line
	10250 13700 10150 13600
Wire Wire Line
	7750 8300 10150 8300
Entry Wire Line
	10250 8400 10150 8300
Text Label 10000 8300 2    138  ~ 0
MOSI.M
$Comp
L eo-engine:Вилка*PLD*6контактов*2ряда*вертикальная*AVR XP2
U 1 1 6197BBCB
P 6250 8000
F 0 "XP2" H 7150 8300 138 0000 L CNN
F 1 "Вилка*PLD*6контактов*2ряда*вертикальная*AVR" H 6250 8500 50  0001 C CNN
F 2 "N_X:Вилка_PLD6_вертикальная_AB" H 6250 8700 50  0001 C CNN
F 3 "" H 6250 8000 50  0001 C CNN
F 4 "PLD6" H 6750 7100 138 0000 L CNN "INFO"
F 5 "https://www.chipdip.ru/product/pld-6" H 6250 8600 50  0001 C CNN "LINK"
	1    6250 8000
	1    0    0    -1  
$EndComp
$Comp
L eo-engine:#метка-GND #GND2
U 1 1 6197CC43
P 8000 8750
F 0 "#GND2" H 8000 8800 50  0001 C CNN
F 1 "#метка-GND" H 8050 8900 50  0001 C CNN
F 2 "" H 8000 8750 50  0001 C CNN
F 3 "" H 8000 8750 50  0001 C CNN
	1    8000 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 8600 8000 8600
Wire Wire Line
	8000 8600 8000 8750
NoConn ~ 16500 10900
NoConn ~ 9000 10900
Wire Wire Line
	9000 10300 10150 10300
Entry Wire Line
	10250 10400 10150 10300
Text Label 10000 10300 2    138  ~ 0
AVCC.M
Wire Wire Line
	9000 11200 10150 11200
Entry Wire Line
	10250 11300 10150 11200
Text Label 10000 11200 2    138  ~ 0
AGND.M
Wire Wire Line
	5000 10900 3850 10900
Entry Wire Line
	3750 11000 3850 10900
Text Label 4000 10900 0    138  ~ 0
VCC1.M
Wire Wire Line
	5000 10600 3850 10600
Entry Wire Line
	3750 10700 3850 10600
Text Label 4000 10600 0    138  ~ 0
GND1.M
Wire Wire Line
	5000 11500 3850 11500
Entry Wire Line
	3750 11600 3850 11500
Text Label 4000 11500 0    138  ~ 0
VCC2.M
Wire Wire Line
	5000 11200 3850 11200
Entry Wire Line
	3750 11300 3850 11200
Text Label 4000 11200 0    138  ~ 0
GND2.M
Wire Wire Line
	12500 10900 11350 10900
Entry Wire Line
	11250 11000 11350 10900
Text Label 11500 10900 0    138  ~ 0
VCC1.S
Wire Wire Line
	12500 10600 11350 10600
Entry Wire Line
	11250 10700 11350 10600
Text Label 11500 10600 0    138  ~ 0
GND1.S
Wire Wire Line
	12500 11500 11350 11500
Entry Wire Line
	11250 11600 11350 11500
Text Label 11500 11500 0    138  ~ 0
VCC2.S
Wire Wire Line
	12500 11200 11350 11200
Entry Wire Line
	11250 11300 11350 11200
Text Label 11500 11200 0    138  ~ 0
GND2.S
Wire Wire Line
	16500 10300 17650 10300
Entry Wire Line
	17750 10400 17650 10300
Text Label 17500 10300 2    138  ~ 0
AVCC.S
Wire Wire Line
	16500 11200 17650 11200
Entry Wire Line
	17750 11300 17650 11200
Text Label 17500 11200 2    138  ~ 0
AGND.S
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C9
U 1 1 619A0B32
P 7250 17000
F 0 "C9" V 6950 16600 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 7150 17100 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 7250 17000 50  0001 C CNN
F 3 "" H 7250 17000 50  0001 C CNN
F 4 "0,1мкФ 25В" V 7500 16150 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 7250 17000 50  0001 C CNN "LINK"
	1    7250 17000
	0    1    1    0   
$EndComp
Entry Wire Line
	3750 15400 3850 15500
Wire Wire Line
	3850 15500 6250 15500
Entry Wire Line
	10250 15600 10150 15500
Wire Wire Line
	7250 15500 7750 15500
Entry Wire Line
	10250 16350 10150 16250
Entry Wire Line
	10150 17000 10250 16900
Wire Wire Line
	7250 17000 7750 17000
Wire Wire Line
	7250 16250 7750 16250
Entry Wire Line
	3850 16250 3750 16150
Wire Wire Line
	3850 16250 6250 16250
Entry Wire Line
	3750 17100 3850 17000
Wire Wire Line
	3850 17000 6250 17000
Wire Wire Line
	6250 15500 6250 16250
Connection ~ 6250 15500
Wire Wire Line
	6250 15500 6750 15500
Connection ~ 7750 15500
Wire Wire Line
	7750 15500 10150 15500
$Comp
L eo-engine:#метка-3V3 #3V2
U 1 1 619A0B4E
P 7750 15500
F 0 "#3V2" H 7750 15450 50  0001 C CNN
F 1 "#метка-3V3" H 7700 15350 50  0001 C CNN
F 2 "" H 7750 15500 50  0001 C CNN
F 3 "" H 7750 15500 50  0001 C CNN
	1    7750 15500
	1    0    0    -1  
$EndComp
Connection ~ 6250 16250
Wire Wire Line
	6250 16250 6750 16250
Wire Wire Line
	6250 16250 6250 17000
Connection ~ 6250 17000
Wire Wire Line
	6250 17000 6750 17000
Connection ~ 7750 17000
Wire Wire Line
	7750 17000 10150 17000
Wire Wire Line
	7750 17000 7750 16250
Connection ~ 7750 16250
Wire Wire Line
	7750 16250 10150 16250
Wire Wire Line
	7750 16250 7750 15500
$Comp
L eo-engine:#метка-GND #GND4
U 1 1 619A9F50
P 6250 17250
F 0 "#GND4" H 6250 17300 50  0001 C CNN
F 1 "#метка-GND" H 6300 17400 50  0001 C CNN
F 2 "" H 6250 17250 50  0001 C CNN
F 3 "" H 6250 17250 50  0001 C CNN
	1    6250 17250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 17000 6250 17250
$Comp
L eo-engine:Конденсатор*10мкФ*16В*0805 C7
U 1 1 619B3B0D
P 7250 15500
F 0 "C7" V 6950 15100 138 0000 L CNN
F 1 "Конденсатор*10мкФ*16В*0805" H 7150 15600 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0805" H 7250 15500 50  0001 C CNN
F 3 "" H 7250 15500 50  0001 C CNN
F 4 "10мкФ 16В" V 7500 14700 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863492" H 7250 15500 50  0001 C CNN "LINK"
	1    7250 15500
	0    1    1    0   
$EndComp
$Comp
L eo-engine:Конденсатор*10мкФ*16В*0805 C8
U 1 1 619B8D04
P 7250 16250
F 0 "C8" V 6950 15850 138 0000 L CNN
F 1 "Конденсатор*10мкФ*16В*0805" H 7150 16350 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0805" H 7250 16250 50  0001 C CNN
F 3 "" H 7250 16250 50  0001 C CNN
F 4 "10мкФ 16В" V 7500 15450 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863492" H 7250 16250 50  0001 C CNN "LINK"
	1    7250 16250
	0    1    1    0   
$EndComp
Text Label 4000 15500 0    138  ~ 0
GND1.M
Text Label 4000 16250 0    138  ~ 0
GND2.M
Text Label 4000 17000 0    138  ~ 0
AGND.M
Text Label 10000 15500 2    138  ~ 0
VCC1.M
Text Label 10000 16250 2    138  ~ 0
VCC2.M
$Comp
L eo-engine:Конденсатор*0,1мкФ*25В*0603 C12
U 1 1 619F37B8
P 14750 17000
F 0 "C12" V 14450 16600 138 0000 L CNN
F 1 "Конденсатор*0,1мкФ*25В*0603" H 14650 17100 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0603" H 14750 17000 50  0001 C CNN
F 3 "" H 14750 17000 50  0001 C CNN
F 4 "0,1мкФ 25В" V 15000 16150 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863311" H 14750 17000 50  0001 C CNN "LINK"
	1    14750 17000
	0    1    1    0   
$EndComp
Entry Wire Line
	11250 15400 11350 15500
Wire Wire Line
	11350 15500 13750 15500
Entry Wire Line
	17750 15600 17650 15500
Wire Wire Line
	14750 15500 15250 15500
Entry Wire Line
	17750 16350 17650 16250
Entry Wire Line
	17650 17000 17750 16900
Wire Wire Line
	14750 17000 15250 17000
Wire Wire Line
	14750 16250 15250 16250
Entry Wire Line
	11350 16250 11250 16150
Wire Wire Line
	11350 16250 13750 16250
Entry Wire Line
	11250 17100 11350 17000
Wire Wire Line
	11350 17000 13750 17000
Wire Wire Line
	13750 15500 13750 16250
Connection ~ 13750 15500
Wire Wire Line
	13750 15500 14250 15500
Connection ~ 15250 15500
Wire Wire Line
	15250 15500 17650 15500
$Comp
L eo-engine:#метка-3V3 #3V3
U 1 1 619F37D3
P 15250 15500
F 0 "#3V3" H 15250 15450 50  0001 C CNN
F 1 "#метка-3V3" H 15200 15350 50  0001 C CNN
F 2 "" H 15250 15500 50  0001 C CNN
F 3 "" H 15250 15500 50  0001 C CNN
	1    15250 15500
	1    0    0    -1  
$EndComp
Connection ~ 13750 16250
Wire Wire Line
	13750 16250 14250 16250
Wire Wire Line
	13750 16250 13750 17000
Connection ~ 13750 17000
Wire Wire Line
	13750 17000 14250 17000
Connection ~ 15250 17000
Wire Wire Line
	15250 17000 17650 17000
Wire Wire Line
	15250 17000 15250 16250
Connection ~ 15250 16250
Wire Wire Line
	15250 16250 17650 16250
Wire Wire Line
	15250 16250 15250 15500
$Comp
L eo-engine:#метка-GND #GND5
U 1 1 619F37E8
P 13750 17250
F 0 "#GND5" H 13750 17300 50  0001 C CNN
F 1 "#метка-GND" H 13800 17400 50  0001 C CNN
F 2 "" H 13750 17250 50  0001 C CNN
F 3 "" H 13750 17250 50  0001 C CNN
	1    13750 17250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 17000 13750 17250
$Comp
L eo-engine:Конденсатор*10мкФ*16В*0805 C10
U 1 1 619F37F5
P 14750 15500
F 0 "C10" V 14450 15100 138 0000 L CNN
F 1 "Конденсатор*10мкФ*16В*0805" H 14650 15600 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0805" H 14750 15500 50  0001 C CNN
F 3 "" H 14750 15500 50  0001 C CNN
F 4 "10мкФ 16В" V 15000 14700 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863492" H 14750 15500 50  0001 C CNN "LINK"
	1    14750 15500
	0    1    1    0   
$EndComp
$Comp
L eo-engine:Конденсатор*10мкФ*16В*0805 C11
U 1 1 619F3801
P 14750 16250
F 0 "C11" V 14450 15850 138 0000 L CNN
F 1 "Конденсатор*10мкФ*16В*0805" H 14650 16350 50  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_IEC_0805" H 14750 16250 50  0001 C CNN
F 3 "" H 14750 16250 50  0001 C CNN
F 4 "10мкФ 16В" V 15000 15450 138 0000 L CNN "INFO"
F 5 "https://www.terraelectronica.ru/product/863492" H 14750 16250 50  0001 C CNN "LINK"
	1    14750 16250
	0    1    1    0   
$EndComp
Text Label 11500 15500 0    138  ~ 0
GND1.S
Text Label 11500 16250 0    138  ~ 0
GND2.S
Text Label 11500 17000 0    138  ~ 0
AGND.S
Text Label 17500 15500 2    138  ~ 0
VCC1.S
Text Label 17500 16250 2    138  ~ 0
VCC2.S
Text Label 17500 17000 2    138  ~ 0
AVCC.S
Text Label 10000 17000 2    138  ~ 0
AVCC.M
Wire Wire Line
	7750 8000 8000 8000
Wire Wire Line
	8000 8000 8000 7500
$Comp
L eo-engine:#метка-3V3 #3V4
U 1 1 61A09916
P 5000 7000
F 0 "#3V4" H 5000 6950 50  0001 C CNN
F 1 "#метка-3V3" H 4950 6850 50  0001 C CNN
F 2 "" H 5000 7000 50  0001 C CNN
F 3 "" H 5000 7000 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L eo-engine:Резистор*10кОм*0603 R1
U 1 1 61A0B893
P 5000 7250
F 0 "R1" V 5266 7384 138 0000 L CNN
F 1 "Резистор*10кОм*0603" H 5000 7850 50  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 5100 7750 50  0001 C CNN
F 3 "" V 5000 7250 50  0001 C CNN
F 4 "10кОм" V 5489 7384 138 0000 L CNN "INFO"
F 5 "" H 5100 7750 50  0001 C CNN "LINK"
F 6 "" V 5000 7250 50  0001 C CNN "COST"
	1    5000 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 7000 5000 7250
Wire Wire Line
	5000 7850 5000 8600
Connection ~ 5000 8600
Wire Wire Line
	5000 8600 6250 8600
$Comp
L eo-engine:#метка-3V3 #3V5
U 1 1 61A26EEF
P 12500 7000
F 0 "#3V5" H 12500 6950 50  0001 C CNN
F 1 "#метка-3V3" H 12450 6850 50  0001 C CNN
F 2 "" H 12500 7000 50  0001 C CNN
F 3 "" H 12500 7000 50  0001 C CNN
	1    12500 7000
	1    0    0    -1  
$EndComp
$Comp
L eo-engine:Резистор*10кОм*0603 R2
U 1 1 61A26F08
P 12500 7250
F 0 "R2" V 12766 7384 138 0000 L CNN
F 1 "Резистор*10кОм*0603" H 12500 7850 50  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 12600 7750 50  0001 C CNN
F 3 "" V 12500 7250 50  0001 C CNN
F 4 "10кОм" V 12989 7384 138 0000 L CNN "INFO"
F 5 "" H 12600 7750 50  0001 C CNN "LINK"
F 6 "" V 12500 7250 50  0001 C CNN "COST"
	1    12500 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	12500 7000 12500 7250
Wire Wire Line
	12500 7850 12500 8600
Connection ~ 12500 8600
Wire Wire Line
	12500 8600 13750 8600
Wire Bus Line
	17750 8000 17750 20000
Wire Bus Line
	10250 8000 10250 20000
Wire Bus Line
	18750 9500 18750 20000
Wire Bus Line
	24750 9500 24750 20000
Wire Bus Line
	3750 8000 3750 20000
Wire Bus Line
	11250 8000 11250 20000
$EndSCHEMATC
