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
L eo-engine:#метка-3V3 #3V31
U 1 1 619171FE
P 8500 9050
F 0 "#3V31" H 8500 9000 50  0001 C CNN
F 1 "#метка-3V3" H 8450 8900 50  0001 C CNN
F 2 "" H 8500 9050 50  0001 C CNN
F 3 "" H 8500 9050 50  0001 C CNN
	1    8500 9050
	1    0    0    -1  
$EndComp
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
$EndSCHEMATC
