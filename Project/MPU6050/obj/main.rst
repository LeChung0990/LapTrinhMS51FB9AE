                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _ReadData
                                     13 	.globl _InitMPU6050
                                     14 	.globl _fabsf
                                     15 	.globl _sqrtf
                                     16 	.globl _atanf
                                     17 	.globl _UART0_NUMBER
                                     18 	.globl _UART0_NLINE
                                     19 	.globl _UART0_STRING
                                     20 	.globl _UART0_Init
                                     21 	.globl _Delay_Ms
                                     22 	.globl _I2C_Read
                                     23 	.globl _I2C_Write
                                     24 	.globl _I2C_Address
                                     25 	.globl _I2C_RepeatedStart
                                     26 	.globl _I2C_start
                                     27 	.globl _send_stop
                                     28 	.globl _I2C_Init
                                     29 	.globl _MOSI
                                     30 	.globl _P00
                                     31 	.globl _MISO
                                     32 	.globl _P01
                                     33 	.globl _RXD_1
                                     34 	.globl _P02
                                     35 	.globl _P03
                                     36 	.globl _STADC
                                     37 	.globl _P04
                                     38 	.globl _P05
                                     39 	.globl _TXD
                                     40 	.globl _P06
                                     41 	.globl _RXD
                                     42 	.globl _P07
                                     43 	.globl _IT0
                                     44 	.globl _IE0
                                     45 	.globl _IT1
                                     46 	.globl _IE1
                                     47 	.globl _TR0
                                     48 	.globl _TF0
                                     49 	.globl _TR1
                                     50 	.globl _TF1
                                     51 	.globl _P10
                                     52 	.globl _P11
                                     53 	.globl _P12
                                     54 	.globl _SCL
                                     55 	.globl _P13
                                     56 	.globl _SDA
                                     57 	.globl _P14
                                     58 	.globl _P15
                                     59 	.globl _TXD_1
                                     60 	.globl _P16
                                     61 	.globl _P17
                                     62 	.globl _RI
                                     63 	.globl _TI
                                     64 	.globl _RB8
                                     65 	.globl _TB8
                                     66 	.globl _REN
                                     67 	.globl _SM2
                                     68 	.globl _SM1
                                     69 	.globl _FE
                                     70 	.globl _SM0
                                     71 	.globl _P20
                                     72 	.globl _EX0
                                     73 	.globl _ET0
                                     74 	.globl _EX1
                                     75 	.globl _ET1
                                     76 	.globl _ES
                                     77 	.globl _EBOD
                                     78 	.globl _EADC
                                     79 	.globl _EA
                                     80 	.globl _P30
                                     81 	.globl _PX0
                                     82 	.globl _PT0
                                     83 	.globl _PX1
                                     84 	.globl _PT1
                                     85 	.globl _PS
                                     86 	.globl _PBOD
                                     87 	.globl _PADC
                                     88 	.globl _I2CPX
                                     89 	.globl _AA
                                     90 	.globl _SI
                                     91 	.globl _STO
                                     92 	.globl _STA
                                     93 	.globl _I2CEN
                                     94 	.globl _CM_RL2
                                     95 	.globl _TR2
                                     96 	.globl _TF2
                                     97 	.globl _P
                                     98 	.globl _OV
                                     99 	.globl _RS0
                                    100 	.globl _RS1
                                    101 	.globl _F0
                                    102 	.globl _AC
                                    103 	.globl _CY
                                    104 	.globl _CLRPWM
                                    105 	.globl _PWMF
                                    106 	.globl _LOAD
                                    107 	.globl _PWMRUN
                                    108 	.globl _ADCHS0
                                    109 	.globl _ADCHS1
                                    110 	.globl _ADCHS2
                                    111 	.globl _ADCHS3
                                    112 	.globl _ETGSEL0
                                    113 	.globl _ETGSEL1
                                    114 	.globl _ADCS
                                    115 	.globl _ADCF
                                    116 	.globl _RI_1
                                    117 	.globl _TI_1
                                    118 	.globl _RB8_1
                                    119 	.globl _TB8_1
                                    120 	.globl _REN_1
                                    121 	.globl _SM2_1
                                    122 	.globl _SM1_1
                                    123 	.globl _FE_1
                                    124 	.globl _SM0_1
                                    125 	.globl _EIPH1
                                    126 	.globl _EIP1
                                    127 	.globl _PMD
                                    128 	.globl _PMEN
                                    129 	.globl _PDTCNT
                                    130 	.globl _PDTEN
                                    131 	.globl _SCON_1
                                    132 	.globl _EIPH
                                    133 	.globl _AINDIDS
                                    134 	.globl _SPDR
                                    135 	.globl _SPSR
                                    136 	.globl _SPCR2
                                    137 	.globl _SPCR
                                    138 	.globl _CAPCON4
                                    139 	.globl _CAPCON3
                                    140 	.globl _B
                                    141 	.globl _EIP
                                    142 	.globl _C2H
                                    143 	.globl _C2L
                                    144 	.globl _PIF
                                    145 	.globl _PIPEN
                                    146 	.globl _PINEN
                                    147 	.globl _PICON
                                    148 	.globl _ADCCON0
                                    149 	.globl _C1H
                                    150 	.globl _C1L
                                    151 	.globl _C0H
                                    152 	.globl _C0L
                                    153 	.globl _ADCDLY
                                    154 	.globl _ADCCON2
                                    155 	.globl _ADCCON1
                                    156 	.globl _ACC
                                    157 	.globl _PWMCON1
                                    158 	.globl _PIOCON0
                                    159 	.globl _PWM3L
                                    160 	.globl _PWM2L
                                    161 	.globl _PWM1L
                                    162 	.globl _PWM0L
                                    163 	.globl _PWMPL
                                    164 	.globl _PWMCON0
                                    165 	.globl _FBD
                                    166 	.globl _PNP
                                    167 	.globl _PWM3H
                                    168 	.globl _PWM2H
                                    169 	.globl _PWM1H
                                    170 	.globl _PWM0H
                                    171 	.globl _PWMPH
                                    172 	.globl _PSW
                                    173 	.globl _ADCMPH
                                    174 	.globl _ADCMPL
                                    175 	.globl _PWM5L
                                    176 	.globl _TH2
                                    177 	.globl _PWM4L
                                    178 	.globl _TL2
                                    179 	.globl _RCMP2H
                                    180 	.globl _RCMP2L
                                    181 	.globl _T2MOD
                                    182 	.globl _T2CON
                                    183 	.globl _TA
                                    184 	.globl _PIOCON1
                                    185 	.globl _RH3
                                    186 	.globl _PWM5H
                                    187 	.globl _RL3
                                    188 	.globl _PWM4H
                                    189 	.globl _T3CON
                                    190 	.globl _ADCRH
                                    191 	.globl _ADCRL
                                    192 	.globl _I2ADDR
                                    193 	.globl _I2CON
                                    194 	.globl _I2TOC
                                    195 	.globl _I2CLK
                                    196 	.globl _I2STAT
                                    197 	.globl _I2DAT
                                    198 	.globl _SADDR_1
                                    199 	.globl _SADEN_1
                                    200 	.globl _SADEN
                                    201 	.globl _IP
                                    202 	.globl _PWMINTC
                                    203 	.globl _IPH
                                    204 	.globl _P2S
                                    205 	.globl _P1SR
                                    206 	.globl _P1M2
                                    207 	.globl _P1S
                                    208 	.globl _P1M1
                                    209 	.globl _P0SR
                                    210 	.globl _P0M2
                                    211 	.globl _P0S
                                    212 	.globl _P0M1
                                    213 	.globl _P3
                                    214 	.globl _IAPCN
                                    215 	.globl _IAPFD
                                    216 	.globl _P3SR
                                    217 	.globl _P3M2
                                    218 	.globl _P3S
                                    219 	.globl _P3M1
                                    220 	.globl _BODCON1
                                    221 	.globl _WDCON
                                    222 	.globl _SADDR
                                    223 	.globl _IE
                                    224 	.globl _IAPAH
                                    225 	.globl _IAPAL
                                    226 	.globl _IAPUEN
                                    227 	.globl _IAPTRG
                                    228 	.globl _BODCON0
                                    229 	.globl _AUXR1
                                    230 	.globl _P2
                                    231 	.globl _CHPCON
                                    232 	.globl _EIE1
                                    233 	.globl _EIE
                                    234 	.globl _SBUF_1
                                    235 	.globl _SBUF
                                    236 	.globl _SCON
                                    237 	.globl _CKEN
                                    238 	.globl _CKSWT
                                    239 	.globl _CKDIV
                                    240 	.globl _CAPCON2
                                    241 	.globl _CAPCON1
                                    242 	.globl _CAPCON0
                                    243 	.globl _SFRS
                                    244 	.globl _P1
                                    245 	.globl _WKCON
                                    246 	.globl _CKCON
                                    247 	.globl _TH1
                                    248 	.globl _TH0
                                    249 	.globl _TL1
                                    250 	.globl _TL0
                                    251 	.globl _TMOD
                                    252 	.globl _TCON
                                    253 	.globl _PCON
                                    254 	.globl _RWK
                                    255 	.globl _RCTRIM1
                                    256 	.globl _RCTRIM0
                                    257 	.globl _DPH
                                    258 	.globl _DPL
                                    259 	.globl _SP
                                    260 	.globl _P0
                                    261 	.globl _checkAddress
                                    262 	.globl _u8Data
                                    263 	.globl _AccZMSB
                                    264 	.globl _AccZLSB
                                    265 	.globl _AccYMSB
                                    266 	.globl _AccYLSB
                                    267 	.globl _AccXMSB
                                    268 	.globl _AccXLSB
                                    269 	.globl _AnglePitch
                                    270 	.globl _AngleRoll
                                    271 	.globl _AccZ
                                    272 	.globl _AccY
                                    273 	.globl _AccX
                                    274 	.globl _Res
                                    275 	.globl _High
                                    276 	.globl _Low
                                    277 ;--------------------------------------------------------
                                    278 ; special function registers
                                    279 ;--------------------------------------------------------
                                    280 	.area RSEG    (ABS,DATA)
      000000                        281 	.org 0x0000
                           000080   282 _P0	=	0x0080
                           000081   283 _SP	=	0x0081
                           000082   284 _DPL	=	0x0082
                           000083   285 _DPH	=	0x0083
                           000084   286 _RCTRIM0	=	0x0084
                           000085   287 _RCTRIM1	=	0x0085
                           000086   288 _RWK	=	0x0086
                           000087   289 _PCON	=	0x0087
                           000088   290 _TCON	=	0x0088
                           000089   291 _TMOD	=	0x0089
                           00008A   292 _TL0	=	0x008a
                           00008B   293 _TL1	=	0x008b
                           00008C   294 _TH0	=	0x008c
                           00008D   295 _TH1	=	0x008d
                           00008E   296 _CKCON	=	0x008e
                           00008F   297 _WKCON	=	0x008f
                           000090   298 _P1	=	0x0090
                           000091   299 _SFRS	=	0x0091
                           000092   300 _CAPCON0	=	0x0092
                           000093   301 _CAPCON1	=	0x0093
                           000094   302 _CAPCON2	=	0x0094
                           000095   303 _CKDIV	=	0x0095
                           000096   304 _CKSWT	=	0x0096
                           000097   305 _CKEN	=	0x0097
                           000098   306 _SCON	=	0x0098
                           000099   307 _SBUF	=	0x0099
                           00009A   308 _SBUF_1	=	0x009a
                           00009B   309 _EIE	=	0x009b
                           00009C   310 _EIE1	=	0x009c
                           00009F   311 _CHPCON	=	0x009f
                           0000A0   312 _P2	=	0x00a0
                           0000A2   313 _AUXR1	=	0x00a2
                           0000A3   314 _BODCON0	=	0x00a3
                           0000A4   315 _IAPTRG	=	0x00a4
                           0000A5   316 _IAPUEN	=	0x00a5
                           0000A6   317 _IAPAL	=	0x00a6
                           0000A7   318 _IAPAH	=	0x00a7
                           0000A8   319 _IE	=	0x00a8
                           0000A9   320 _SADDR	=	0x00a9
                           0000AA   321 _WDCON	=	0x00aa
                           0000AB   322 _BODCON1	=	0x00ab
                           0000AC   323 _P3M1	=	0x00ac
                           0000AC   324 _P3S	=	0x00ac
                           0000AD   325 _P3M2	=	0x00ad
                           0000AD   326 _P3SR	=	0x00ad
                           0000AE   327 _IAPFD	=	0x00ae
                           0000AF   328 _IAPCN	=	0x00af
                           0000B0   329 _P3	=	0x00b0
                           0000B1   330 _P0M1	=	0x00b1
                           0000B1   331 _P0S	=	0x00b1
                           0000B2   332 _P0M2	=	0x00b2
                           0000B2   333 _P0SR	=	0x00b2
                           0000B3   334 _P1M1	=	0x00b3
                           0000B3   335 _P1S	=	0x00b3
                           0000B4   336 _P1M2	=	0x00b4
                           0000B4   337 _P1SR	=	0x00b4
                           0000B5   338 _P2S	=	0x00b5
                           0000B7   339 _IPH	=	0x00b7
                           0000B7   340 _PWMINTC	=	0x00b7
                           0000B8   341 _IP	=	0x00b8
                           0000B9   342 _SADEN	=	0x00b9
                           0000BA   343 _SADEN_1	=	0x00ba
                           0000BB   344 _SADDR_1	=	0x00bb
                           0000BC   345 _I2DAT	=	0x00bc
                           0000BD   346 _I2STAT	=	0x00bd
                           0000BE   347 _I2CLK	=	0x00be
                           0000BF   348 _I2TOC	=	0x00bf
                           0000C0   349 _I2CON	=	0x00c0
                           0000C1   350 _I2ADDR	=	0x00c1
                           0000C2   351 _ADCRL	=	0x00c2
                           0000C3   352 _ADCRH	=	0x00c3
                           0000C4   353 _T3CON	=	0x00c4
                           0000C4   354 _PWM4H	=	0x00c4
                           0000C5   355 _RL3	=	0x00c5
                           0000C5   356 _PWM5H	=	0x00c5
                           0000C6   357 _RH3	=	0x00c6
                           0000C6   358 _PIOCON1	=	0x00c6
                           0000C7   359 _TA	=	0x00c7
                           0000C8   360 _T2CON	=	0x00c8
                           0000C9   361 _T2MOD	=	0x00c9
                           0000CA   362 _RCMP2L	=	0x00ca
                           0000CB   363 _RCMP2H	=	0x00cb
                           0000CC   364 _TL2	=	0x00cc
                           0000CC   365 _PWM4L	=	0x00cc
                           0000CD   366 _TH2	=	0x00cd
                           0000CD   367 _PWM5L	=	0x00cd
                           0000CE   368 _ADCMPL	=	0x00ce
                           0000CF   369 _ADCMPH	=	0x00cf
                           0000D0   370 _PSW	=	0x00d0
                           0000D1   371 _PWMPH	=	0x00d1
                           0000D2   372 _PWM0H	=	0x00d2
                           0000D3   373 _PWM1H	=	0x00d3
                           0000D4   374 _PWM2H	=	0x00d4
                           0000D5   375 _PWM3H	=	0x00d5
                           0000D6   376 _PNP	=	0x00d6
                           0000D7   377 _FBD	=	0x00d7
                           0000D8   378 _PWMCON0	=	0x00d8
                           0000D9   379 _PWMPL	=	0x00d9
                           0000DA   380 _PWM0L	=	0x00da
                           0000DB   381 _PWM1L	=	0x00db
                           0000DC   382 _PWM2L	=	0x00dc
                           0000DD   383 _PWM3L	=	0x00dd
                           0000DE   384 _PIOCON0	=	0x00de
                           0000DF   385 _PWMCON1	=	0x00df
                           0000E0   386 _ACC	=	0x00e0
                           0000E1   387 _ADCCON1	=	0x00e1
                           0000E2   388 _ADCCON2	=	0x00e2
                           0000E3   389 _ADCDLY	=	0x00e3
                           0000E4   390 _C0L	=	0x00e4
                           0000E5   391 _C0H	=	0x00e5
                           0000E6   392 _C1L	=	0x00e6
                           0000E7   393 _C1H	=	0x00e7
                           0000E8   394 _ADCCON0	=	0x00e8
                           0000E9   395 _PICON	=	0x00e9
                           0000EA   396 _PINEN	=	0x00ea
                           0000EB   397 _PIPEN	=	0x00eb
                           0000EC   398 _PIF	=	0x00ec
                           0000ED   399 _C2L	=	0x00ed
                           0000EE   400 _C2H	=	0x00ee
                           0000EF   401 _EIP	=	0x00ef
                           0000F0   402 _B	=	0x00f0
                           0000F1   403 _CAPCON3	=	0x00f1
                           0000F2   404 _CAPCON4	=	0x00f2
                           0000F3   405 _SPCR	=	0x00f3
                           0000F3   406 _SPCR2	=	0x00f3
                           0000F4   407 _SPSR	=	0x00f4
                           0000F5   408 _SPDR	=	0x00f5
                           0000F6   409 _AINDIDS	=	0x00f6
                           0000F7   410 _EIPH	=	0x00f7
                           0000F8   411 _SCON_1	=	0x00f8
                           0000F9   412 _PDTEN	=	0x00f9
                           0000FA   413 _PDTCNT	=	0x00fa
                           0000FB   414 _PMEN	=	0x00fb
                           0000FC   415 _PMD	=	0x00fc
                           0000FE   416 _EIP1	=	0x00fe
                           0000FF   417 _EIPH1	=	0x00ff
                                    418 ;--------------------------------------------------------
                                    419 ; special function bits
                                    420 ;--------------------------------------------------------
                                    421 	.area RSEG    (ABS,DATA)
      000000                        422 	.org 0x0000
                           0000FF   423 _SM0_1	=	0x00ff
                           0000FF   424 _FE_1	=	0x00ff
                           0000FE   425 _SM1_1	=	0x00fe
                           0000FD   426 _SM2_1	=	0x00fd
                           0000FC   427 _REN_1	=	0x00fc
                           0000FB   428 _TB8_1	=	0x00fb
                           0000FA   429 _RB8_1	=	0x00fa
                           0000F9   430 _TI_1	=	0x00f9
                           0000F8   431 _RI_1	=	0x00f8
                           0000EF   432 _ADCF	=	0x00ef
                           0000EE   433 _ADCS	=	0x00ee
                           0000ED   434 _ETGSEL1	=	0x00ed
                           0000EC   435 _ETGSEL0	=	0x00ec
                           0000EB   436 _ADCHS3	=	0x00eb
                           0000EA   437 _ADCHS2	=	0x00ea
                           0000E9   438 _ADCHS1	=	0x00e9
                           0000E8   439 _ADCHS0	=	0x00e8
                           0000DF   440 _PWMRUN	=	0x00df
                           0000DE   441 _LOAD	=	0x00de
                           0000DD   442 _PWMF	=	0x00dd
                           0000DC   443 _CLRPWM	=	0x00dc
                           0000D7   444 _CY	=	0x00d7
                           0000D6   445 _AC	=	0x00d6
                           0000D5   446 _F0	=	0x00d5
                           0000D4   447 _RS1	=	0x00d4
                           0000D3   448 _RS0	=	0x00d3
                           0000D2   449 _OV	=	0x00d2
                           0000D0   450 _P	=	0x00d0
                           0000CF   451 _TF2	=	0x00cf
                           0000CA   452 _TR2	=	0x00ca
                           0000C8   453 _CM_RL2	=	0x00c8
                           0000C6   454 _I2CEN	=	0x00c6
                           0000C5   455 _STA	=	0x00c5
                           0000C4   456 _STO	=	0x00c4
                           0000C3   457 _SI	=	0x00c3
                           0000C2   458 _AA	=	0x00c2
                           0000C0   459 _I2CPX	=	0x00c0
                           0000BE   460 _PADC	=	0x00be
                           0000BD   461 _PBOD	=	0x00bd
                           0000BC   462 _PS	=	0x00bc
                           0000BB   463 _PT1	=	0x00bb
                           0000BA   464 _PX1	=	0x00ba
                           0000B9   465 _PT0	=	0x00b9
                           0000B8   466 _PX0	=	0x00b8
                           0000B0   467 _P30	=	0x00b0
                           0000AF   468 _EA	=	0x00af
                           0000AE   469 _EADC	=	0x00ae
                           0000AD   470 _EBOD	=	0x00ad
                           0000AC   471 _ES	=	0x00ac
                           0000AB   472 _ET1	=	0x00ab
                           0000AA   473 _EX1	=	0x00aa
                           0000A9   474 _ET0	=	0x00a9
                           0000A8   475 _EX0	=	0x00a8
                           0000A0   476 _P20	=	0x00a0
                           00009F   477 _SM0	=	0x009f
                           00009F   478 _FE	=	0x009f
                           00009E   479 _SM1	=	0x009e
                           00009D   480 _SM2	=	0x009d
                           00009C   481 _REN	=	0x009c
                           00009B   482 _TB8	=	0x009b
                           00009A   483 _RB8	=	0x009a
                           000099   484 _TI	=	0x0099
                           000098   485 _RI	=	0x0098
                           000097   486 _P17	=	0x0097
                           000096   487 _P16	=	0x0096
                           000096   488 _TXD_1	=	0x0096
                           000095   489 _P15	=	0x0095
                           000094   490 _P14	=	0x0094
                           000094   491 _SDA	=	0x0094
                           000093   492 _P13	=	0x0093
                           000093   493 _SCL	=	0x0093
                           000092   494 _P12	=	0x0092
                           000091   495 _P11	=	0x0091
                           000090   496 _P10	=	0x0090
                           00008F   497 _TF1	=	0x008f
                           00008E   498 _TR1	=	0x008e
                           00008D   499 _TF0	=	0x008d
                           00008C   500 _TR0	=	0x008c
                           00008B   501 _IE1	=	0x008b
                           00008A   502 _IT1	=	0x008a
                           000089   503 _IE0	=	0x0089
                           000088   504 _IT0	=	0x0088
                           000087   505 _P07	=	0x0087
                           000087   506 _RXD	=	0x0087
                           000086   507 _P06	=	0x0086
                           000086   508 _TXD	=	0x0086
                           000085   509 _P05	=	0x0085
                           000084   510 _P04	=	0x0084
                           000084   511 _STADC	=	0x0084
                           000083   512 _P03	=	0x0083
                           000082   513 _P02	=	0x0082
                           000082   514 _RXD_1	=	0x0082
                           000081   515 _P01	=	0x0081
                           000081   516 _MISO	=	0x0081
                           000080   517 _P00	=	0x0080
                           000080   518 _MOSI	=	0x0080
                                    519 ;--------------------------------------------------------
                                    520 ; overlayable register banks
                                    521 ;--------------------------------------------------------
                                    522 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        523 	.ds 8
                                    524 ;--------------------------------------------------------
                                    525 ; internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area DSEG    (DATA)
      000021                        528 _Low::
      000021                        529 	.ds 1
      000022                        530 _High::
      000022                        531 	.ds 1
      000023                        532 _Res::
      000023                        533 	.ds 2
      000025                        534 _AccX::
      000025                        535 	.ds 4
      000029                        536 _AccY::
      000029                        537 	.ds 4
      00002D                        538 _AccZ::
      00002D                        539 	.ds 4
      000031                        540 _AngleRoll::
      000031                        541 	.ds 4
      000035                        542 _AnglePitch::
      000035                        543 	.ds 4
      000039                        544 _AccXLSB::
      000039                        545 	.ds 2
      00003B                        546 _AccXMSB::
      00003B                        547 	.ds 2
      00003D                        548 _AccYLSB::
      00003D                        549 	.ds 2
      00003F                        550 _AccYMSB::
      00003F                        551 	.ds 2
      000041                        552 _AccZLSB::
      000041                        553 	.ds 2
      000043                        554 _AccZMSB::
      000043                        555 	.ds 2
      000045                        556 _u8Data::
      000045                        557 	.ds 2
      000047                        558 _checkAddress::
      000047                        559 	.ds 1
                                    560 ;--------------------------------------------------------
                                    561 ; overlayable items in internal ram
                                    562 ;--------------------------------------------------------
                                    563 ;--------------------------------------------------------
                                    564 ; Stack segment in internal ram
                                    565 ;--------------------------------------------------------
                                    566 	.area SSEG
      00005A                        567 __start__stack:
      00005A                        568 	.ds	1
                                    569 
                                    570 ;--------------------------------------------------------
                                    571 ; indirectly addressable internal ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area ISEG    (DATA)
                                    574 ;--------------------------------------------------------
                                    575 ; absolute internal ram data
                                    576 ;--------------------------------------------------------
                                    577 	.area IABS    (ABS,DATA)
                                    578 	.area IABS    (ABS,DATA)
                                    579 ;--------------------------------------------------------
                                    580 ; bit data
                                    581 ;--------------------------------------------------------
                                    582 	.area BSEG    (BIT)
                                    583 ;--------------------------------------------------------
                                    584 ; paged external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area PSEG    (PAG,XDATA)
                                    587 ;--------------------------------------------------------
                                    588 ; uninitialized external ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XSEG    (XDATA)
                                    591 ;--------------------------------------------------------
                                    592 ; absolute external ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area XABS    (ABS,XDATA)
                                    595 ;--------------------------------------------------------
                                    596 ; initialized external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area XISEG   (XDATA)
                                    599 	.area HOME    (CODE)
                                    600 	.area GSINIT0 (CODE)
                                    601 	.area GSINIT1 (CODE)
                                    602 	.area GSINIT2 (CODE)
                                    603 	.area GSINIT3 (CODE)
                                    604 	.area GSINIT4 (CODE)
                                    605 	.area GSINIT5 (CODE)
                                    606 	.area GSINIT  (CODE)
                                    607 	.area GSFINAL (CODE)
                                    608 	.area CSEG    (CODE)
                                    609 ;--------------------------------------------------------
                                    610 ; interrupt vector
                                    611 ;--------------------------------------------------------
                                    612 	.area HOME    (CODE)
      000000                        613 __interrupt_vect:
      000000 02 00 06         [24]  614 	ljmp	__sdcc_gsinit_startup
                                    615 ;--------------------------------------------------------
                                    616 ; global & static initialisations
                                    617 ;--------------------------------------------------------
                                    618 	.area HOME    (CODE)
                                    619 	.area GSINIT  (CODE)
                                    620 	.area GSFINAL (CODE)
                                    621 	.area GSINIT  (CODE)
                                    622 	.globl __sdcc_gsinit_startup
                                    623 	.globl __sdcc_program_startup
                                    624 	.globl __start__stack
                                    625 	.globl __mcs51_genXINIT
                                    626 	.globl __mcs51_genXRAMCLEAR
                                    627 	.globl __mcs51_genRAMCLEAR
                                    628 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  629 	ljmp	__sdcc_program_startup
                                    630 ;--------------------------------------------------------
                                    631 ; Home
                                    632 ;--------------------------------------------------------
                                    633 	.area HOME    (CODE)
                                    634 	.area HOME    (CODE)
      000003                        635 __sdcc_program_startup:
      000003 02 04 71         [24]  636 	ljmp	_main
                                    637 ;	return from main will return to caller
                                    638 ;--------------------------------------------------------
                                    639 ; code
                                    640 ;--------------------------------------------------------
                                    641 	.area CSEG    (CODE)
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'InitMPU6050'
                                    644 ;------------------------------------------------------------
                                    645 ;	main.c:21: void InitMPU6050(void)
                                    646 ;	-----------------------------------------
                                    647 ;	 function InitMPU6050
                                    648 ;	-----------------------------------------
      000065                        649 _InitMPU6050:
                           000007   650 	ar7 = 0x07
                           000006   651 	ar6 = 0x06
                           000005   652 	ar5 = 0x05
                           000004   653 	ar4 = 0x04
                           000003   654 	ar3 = 0x03
                           000002   655 	ar2 = 0x02
                           000001   656 	ar1 = 0x01
                           000000   657 	ar0 = 0x00
                                    658 ;	main.c:23: I2C_start();    
      000065 12 05 07         [24]  659 	lcall	_I2C_start
                                    660 ;	main.c:24: I2C_Address((uint8_t)0x68 << 1 , 0);
      000068 75 08 00         [24]  661 	mov	_I2C_Address_PARM_2,#0x00
      00006B 75 82 D0         [24]  662 	mov	dpl,#0xd0
      00006E 12 05 3E         [24]  663 	lcall	_I2C_Address
                                    664 ;	main.c:26: I2C_Write(0x6B);
      000071 75 82 6B         [24]  665 	mov	dpl,#0x6b
      000074 12 05 73         [24]  666 	lcall	_I2C_Write
                                    667 ;	main.c:27: I2C_Write(0x00);
      000077 75 82 00         [24]  668 	mov	dpl,#0x00
      00007A 12 05 73         [24]  669 	lcall	_I2C_Write
                                    670 ;	main.c:28: send_stop();
      00007D 12 04 DA         [24]  671 	lcall	_send_stop
                                    672 ;	main.c:29: Delay_Ms(10);
      000080 90 00 0A         [24]  673 	mov	dptr,#0x000a
      000083 12 06 07         [24]  674 	lcall	_Delay_Ms
                                    675 ;	main.c:31: I2C_start();
      000086 12 05 07         [24]  676 	lcall	_I2C_start
                                    677 ;	main.c:32: I2C_Address((uint8_t)0x68 << 1, 0);
      000089 75 08 00         [24]  678 	mov	_I2C_Address_PARM_2,#0x00
      00008C 75 82 D0         [24]  679 	mov	dpl,#0xd0
      00008F 12 05 3E         [24]  680 	lcall	_I2C_Address
                                    681 ;	main.c:35: I2C_Write(0x1A);
      000092 75 82 1A         [24]  682 	mov	dpl,#0x1a
      000095 12 05 73         [24]  683 	lcall	_I2C_Write
                                    684 ;	main.c:36: I2C_Write(0x05);
      000098 75 82 05         [24]  685 	mov	dpl,#0x05
      00009B 12 05 73         [24]  686 	lcall	_I2C_Write
                                    687 ;	main.c:37: send_stop();
      00009E 12 04 DA         [24]  688 	lcall	_send_stop
                                    689 ;	main.c:38: Delay_Ms(10);
      0000A1 90 00 0A         [24]  690 	mov	dptr,#0x000a
      0000A4 12 06 07         [24]  691 	lcall	_Delay_Ms
                                    692 ;	main.c:40: I2C_start();
      0000A7 12 05 07         [24]  693 	lcall	_I2C_start
                                    694 ;	main.c:41: I2C_Address((uint8_t)0x68 << 1, 0);  //D0
      0000AA 75 08 00         [24]  695 	mov	_I2C_Address_PARM_2,#0x00
      0000AD 75 82 D0         [24]  696 	mov	dpl,#0xd0
      0000B0 12 05 3E         [24]  697 	lcall	_I2C_Address
                                    698 ;	main.c:44: I2C_Write(0x1B);
      0000B3 75 82 1B         [24]  699 	mov	dpl,#0x1b
      0000B6 12 05 73         [24]  700 	lcall	_I2C_Write
                                    701 ;	main.c:45: I2C_Write(0x00);
      0000B9 75 82 00         [24]  702 	mov	dpl,#0x00
      0000BC 12 05 73         [24]  703 	lcall	_I2C_Write
                                    704 ;	main.c:46: send_stop();
      0000BF 12 04 DA         [24]  705 	lcall	_send_stop
                                    706 ;	main.c:47: Delay_Ms(10);
      0000C2 90 00 0A         [24]  707 	mov	dptr,#0x000a
      0000C5 12 06 07         [24]  708 	lcall	_Delay_Ms
                                    709 ;	main.c:49: I2C_start();
      0000C8 12 05 07         [24]  710 	lcall	_I2C_start
                                    711 ;	main.c:50: I2C_Address((uint8_t)0x68 << 1, 0);  //D0
      0000CB 75 08 00         [24]  712 	mov	_I2C_Address_PARM_2,#0x00
      0000CE 75 82 D0         [24]  713 	mov	dpl,#0xd0
      0000D1 12 05 3E         [24]  714 	lcall	_I2C_Address
                                    715 ;	main.c:53: I2C_Write(0x1C);
      0000D4 75 82 1C         [24]  716 	mov	dpl,#0x1c
      0000D7 12 05 73         [24]  717 	lcall	_I2C_Write
                                    718 ;	main.c:54: I2C_Write(0x10);
      0000DA 75 82 10         [24]  719 	mov	dpl,#0x10
      0000DD 12 05 73         [24]  720 	lcall	_I2C_Write
                                    721 ;	main.c:55: send_stop();
      0000E0 12 04 DA         [24]  722 	lcall	_send_stop
                                    723 ;	main.c:56: Delay_Ms(10);
      0000E3 90 00 0A         [24]  724 	mov	dptr,#0x000a
                                    725 ;	main.c:57: }
      0000E6 02 06 07         [24]  726 	ljmp	_Delay_Ms
                                    727 ;------------------------------------------------------------
                                    728 ;Allocation info for local variables in function 'ReadData'
                                    729 ;------------------------------------------------------------
                                    730 ;	main.c:59: void ReadData(void)
                                    731 ;	-----------------------------------------
                                    732 ;	 function ReadData
                                    733 ;	-----------------------------------------
      0000E9                        734 _ReadData:
                                    735 ;	main.c:62: I2C_start();
      0000E9 12 05 07         [24]  736 	lcall	_I2C_start
                                    737 ;	main.c:63: I2C_Address((uint8_t)0xD0, 0);
      0000EC 75 08 00         [24]  738 	mov	_I2C_Address_PARM_2,#0x00
      0000EF 75 82 D0         [24]  739 	mov	dpl,#0xd0
      0000F2 12 05 3E         [24]  740 	lcall	_I2C_Address
                                    741 ;	main.c:65: I2C_Write(0x3B);
      0000F5 75 82 3B         [24]  742 	mov	dpl,#0x3b
      0000F8 12 05 73         [24]  743 	lcall	_I2C_Write
                                    744 ;	main.c:67: I2C_RepeatedStart();
      0000FB 12 05 28         [24]  745 	lcall	_I2C_RepeatedStart
                                    746 ;	main.c:68: I2C_Address((uint8_t)0xD1, 1);
      0000FE 75 08 01         [24]  747 	mov	_I2C_Address_PARM_2,#0x01
      000101 75 82 D1         [24]  748 	mov	dpl,#0xd1
      000104 12 05 3E         [24]  749 	lcall	_I2C_Address
                                    750 ;	main.c:69: AccXLSB = I2C_Read(1);
      000107 75 82 01         [24]  751 	mov	dpl,#0x01
      00010A 12 05 C0         [24]  752 	lcall	_I2C_Read
      00010D AF 82            [24]  753 	mov	r7,dpl
      00010F 8F 39            [24]  754 	mov	_AccXLSB,r7
      000111 75 3A 00         [24]  755 	mov	(_AccXLSB + 1),#0x00
                                    756 ;	main.c:70: AccXMSB = I2C_Read(1);
      000114 75 82 01         [24]  757 	mov	dpl,#0x01
      000117 12 05 C0         [24]  758 	lcall	_I2C_Read
      00011A AF 82            [24]  759 	mov	r7,dpl
      00011C 8F 3B            [24]  760 	mov	_AccXMSB,r7
      00011E 75 3C 00         [24]  761 	mov	(_AccXMSB + 1),#0x00
                                    762 ;	main.c:72: AccYLSB = I2C_Read(1);
      000121 75 82 01         [24]  763 	mov	dpl,#0x01
      000124 12 05 C0         [24]  764 	lcall	_I2C_Read
      000127 AF 82            [24]  765 	mov	r7,dpl
      000129 8F 3D            [24]  766 	mov	_AccYLSB,r7
      00012B 75 3E 00         [24]  767 	mov	(_AccYLSB + 1),#0x00
                                    768 ;	main.c:73: AccYMSB = I2C_Read(1);
      00012E 75 82 01         [24]  769 	mov	dpl,#0x01
      000131 12 05 C0         [24]  770 	lcall	_I2C_Read
      000134 AF 82            [24]  771 	mov	r7,dpl
      000136 8F 3F            [24]  772 	mov	_AccYMSB,r7
      000138 75 40 00         [24]  773 	mov	(_AccYMSB + 1),#0x00
                                    774 ;	main.c:75: AccZLSB = I2C_Read(1);
      00013B 75 82 01         [24]  775 	mov	dpl,#0x01
      00013E 12 05 C0         [24]  776 	lcall	_I2C_Read
      000141 AF 82            [24]  777 	mov	r7,dpl
      000143 8F 41            [24]  778 	mov	_AccZLSB,r7
      000145 75 42 00         [24]  779 	mov	(_AccZLSB + 1),#0x00
                                    780 ;	main.c:76: AccZMSB = I2C_Read(0);
      000148 75 82 00         [24]  781 	mov	dpl,#0x00
      00014B 12 05 C0         [24]  782 	lcall	_I2C_Read
      00014E AF 82            [24]  783 	mov	r7,dpl
      000150 8F 43            [24]  784 	mov	_AccZMSB,r7
      000152 75 44 00         [24]  785 	mov	(_AccZMSB + 1),#0x00
                                    786 ;	main.c:77: send_stop();
      000155 12 04 DA         [24]  787 	lcall	_send_stop
                                    788 ;	main.c:79: AccXLSB = (AccXLSB << 8) | AccXMSB;
      000158 AF 39            [24]  789 	mov	r7,_AccXLSB
      00015A 7E 00            [12]  790 	mov	r6,#0x00
      00015C E5 3B            [12]  791 	mov	a,_AccXMSB
      00015E 4E               [12]  792 	orl	a,r6
      00015F F5 39            [12]  793 	mov	_AccXLSB,a
      000161 E5 3C            [12]  794 	mov	a,(_AccXMSB + 1)
      000163 4F               [12]  795 	orl	a,r7
      000164 F5 3A            [12]  796 	mov	(_AccXLSB + 1),a
                                    797 ;	main.c:80: AccYLSB = (AccYLSB << 8) | AccYMSB;
      000166 AF 3D            [24]  798 	mov	r7,_AccYLSB
      000168 E5 3F            [12]  799 	mov	a,_AccYMSB
      00016A 4E               [12]  800 	orl	a,r6
      00016B F5 3D            [12]  801 	mov	_AccYLSB,a
      00016D E5 40            [12]  802 	mov	a,(_AccYMSB + 1)
      00016F 4F               [12]  803 	orl	a,r7
      000170 F5 3E            [12]  804 	mov	(_AccYLSB + 1),a
                                    805 ;	main.c:81: AccZLSB = (AccZLSB << 8) | AccZMSB;
      000172 AF 41            [24]  806 	mov	r7,_AccZLSB
      000174 E5 43            [12]  807 	mov	a,_AccZMSB
      000176 4E               [12]  808 	orl	a,r6
      000177 F5 41            [12]  809 	mov	_AccZLSB,a
      000179 E5 44            [12]  810 	mov	a,(_AccZMSB + 1)
      00017B 4F               [12]  811 	orl	a,r7
      00017C F5 42            [12]  812 	mov	(_AccZLSB + 1),a
                                    813 ;	main.c:83: AccX = (float)AccXLSB / 4096.0 - 0.01;
      00017E 85 39 82         [24]  814 	mov	dpl,_AccXLSB
      000181 85 3A 83         [24]  815 	mov	dph,(_AccXLSB + 1)
      000184 12 0D 89         [24]  816 	lcall	___sint2fs
      000187 AC 82            [24]  817 	mov	r4,dpl
      000189 AD 83            [24]  818 	mov	r5,dph
      00018B AE F0            [24]  819 	mov	r6,b
      00018D FF               [12]  820 	mov	r7,a
      00018E E4               [12]  821 	clr	a
      00018F C0 E0            [24]  822 	push	acc
      000191 C0 E0            [24]  823 	push	acc
      000193 74 80            [12]  824 	mov	a,#0x80
      000195 C0 E0            [24]  825 	push	acc
      000197 74 45            [12]  826 	mov	a,#0x45
      000199 C0 E0            [24]  827 	push	acc
      00019B 8C 82            [24]  828 	mov	dpl,r4
      00019D 8D 83            [24]  829 	mov	dph,r5
      00019F 8E F0            [24]  830 	mov	b,r6
      0001A1 EF               [12]  831 	mov	a,r7
      0001A2 12 13 6B         [24]  832 	lcall	___fsdiv
      0001A5 AC 82            [24]  833 	mov	r4,dpl
      0001A7 AD 83            [24]  834 	mov	r5,dph
      0001A9 AE F0            [24]  835 	mov	r6,b
      0001AB FF               [12]  836 	mov	r7,a
      0001AC E5 81            [12]  837 	mov	a,sp
      0001AE 24 FC            [12]  838 	add	a,#0xfc
      0001B0 F5 81            [12]  839 	mov	sp,a
      0001B2 74 0A            [12]  840 	mov	a,#0x0a
      0001B4 C0 E0            [24]  841 	push	acc
      0001B6 74 D7            [12]  842 	mov	a,#0xd7
      0001B8 C0 E0            [24]  843 	push	acc
      0001BA 74 23            [12]  844 	mov	a,#0x23
      0001BC C0 E0            [24]  845 	push	acc
      0001BE 74 3C            [12]  846 	mov	a,#0x3c
      0001C0 C0 E0            [24]  847 	push	acc
      0001C2 8C 82            [24]  848 	mov	dpl,r4
      0001C4 8D 83            [24]  849 	mov	dph,r5
      0001C6 8E F0            [24]  850 	mov	b,r6
      0001C8 EF               [12]  851 	mov	a,r7
      0001C9 12 07 79         [24]  852 	lcall	___fssub
      0001CC 85 82 25         [24]  853 	mov	_AccX,dpl
      0001CF 85 83 26         [24]  854 	mov	(_AccX + 1),dph
      0001D2 85 F0 27         [24]  855 	mov	(_AccX + 2),b
      0001D5 F5 28            [12]  856 	mov	(_AccX + 3),a
      0001D7 E5 81            [12]  857 	mov	a,sp
      0001D9 24 FC            [12]  858 	add	a,#0xfc
      0001DB F5 81            [12]  859 	mov	sp,a
                                    860 ;	main.c:84: AccY = (float)AccYLSB / 4096.0 ;
      0001DD 85 3D 82         [24]  861 	mov	dpl,_AccYLSB
      0001E0 85 3E 83         [24]  862 	mov	dph,(_AccYLSB + 1)
      0001E3 12 0D 89         [24]  863 	lcall	___sint2fs
      0001E6 AC 82            [24]  864 	mov	r4,dpl
      0001E8 AD 83            [24]  865 	mov	r5,dph
      0001EA AE F0            [24]  866 	mov	r6,b
      0001EC FF               [12]  867 	mov	r7,a
      0001ED E4               [12]  868 	clr	a
      0001EE C0 E0            [24]  869 	push	acc
      0001F0 C0 E0            [24]  870 	push	acc
      0001F2 74 80            [12]  871 	mov	a,#0x80
      0001F4 C0 E0            [24]  872 	push	acc
      0001F6 74 45            [12]  873 	mov	a,#0x45
      0001F8 C0 E0            [24]  874 	push	acc
      0001FA 8C 82            [24]  875 	mov	dpl,r4
      0001FC 8D 83            [24]  876 	mov	dph,r5
      0001FE 8E F0            [24]  877 	mov	b,r6
      000200 EF               [12]  878 	mov	a,r7
      000201 12 13 6B         [24]  879 	lcall	___fsdiv
      000204 85 82 29         [24]  880 	mov	_AccY,dpl
      000207 85 83 2A         [24]  881 	mov	(_AccY + 1),dph
      00020A 85 F0 2B         [24]  882 	mov	(_AccY + 2),b
      00020D F5 2C            [12]  883 	mov	(_AccY + 3),a
      00020F E5 81            [12]  884 	mov	a,sp
      000211 24 FC            [12]  885 	add	a,#0xfc
      000213 F5 81            [12]  886 	mov	sp,a
                                    887 ;	main.c:85: AccZ = (float)AccZLSB / 4096.0 + 0.01;
      000215 85 41 82         [24]  888 	mov	dpl,_AccZLSB
      000218 85 42 83         [24]  889 	mov	dph,(_AccZLSB + 1)
      00021B 12 0D 89         [24]  890 	lcall	___sint2fs
      00021E AC 82            [24]  891 	mov	r4,dpl
      000220 AD 83            [24]  892 	mov	r5,dph
      000222 AE F0            [24]  893 	mov	r6,b
      000224 FF               [12]  894 	mov	r7,a
      000225 E4               [12]  895 	clr	a
      000226 C0 E0            [24]  896 	push	acc
      000228 C0 E0            [24]  897 	push	acc
      00022A 74 80            [12]  898 	mov	a,#0x80
      00022C C0 E0            [24]  899 	push	acc
      00022E 74 45            [12]  900 	mov	a,#0x45
      000230 C0 E0            [24]  901 	push	acc
      000232 8C 82            [24]  902 	mov	dpl,r4
      000234 8D 83            [24]  903 	mov	dph,r5
      000236 8E F0            [24]  904 	mov	b,r6
      000238 EF               [12]  905 	mov	a,r7
      000239 12 13 6B         [24]  906 	lcall	___fsdiv
      00023C AC 82            [24]  907 	mov	r4,dpl
      00023E AD 83            [24]  908 	mov	r5,dph
      000240 AE F0            [24]  909 	mov	r6,b
      000242 FF               [12]  910 	mov	r7,a
      000243 E5 81            [12]  911 	mov	a,sp
      000245 24 FC            [12]  912 	add	a,#0xfc
      000247 F5 81            [12]  913 	mov	sp,a
      000249 74 0A            [12]  914 	mov	a,#0x0a
      00024B C0 E0            [24]  915 	push	acc
      00024D 74 D7            [12]  916 	mov	a,#0xd7
      00024F C0 E0            [24]  917 	push	acc
      000251 74 23            [12]  918 	mov	a,#0x23
      000253 C0 E0            [24]  919 	push	acc
      000255 74 3C            [12]  920 	mov	a,#0x3c
      000257 C0 E0            [24]  921 	push	acc
      000259 8C 82            [24]  922 	mov	dpl,r4
      00025B 8D 83            [24]  923 	mov	dph,r5
      00025D 8E F0            [24]  924 	mov	b,r6
      00025F EF               [12]  925 	mov	a,r7
      000260 12 0B E2         [24]  926 	lcall	___fsadd
      000263 85 82 2D         [24]  927 	mov	_AccZ,dpl
      000266 85 83 2E         [24]  928 	mov	(_AccZ + 1),dph
      000269 85 F0 2F         [24]  929 	mov	(_AccZ + 2),b
      00026C F5 30            [12]  930 	mov	(_AccZ + 3),a
      00026E E5 81            [12]  931 	mov	a,sp
      000270 24 FC            [12]  932 	add	a,#0xfc
      000272 F5 81            [12]  933 	mov	sp,a
                                    934 ;	main.c:90: AngleRoll = atanf(AccY/sqrtf(AccX*AccX + AccZ*AccZ))*1/(3.142/180);
      000274 C0 25            [24]  935 	push	_AccX
      000276 C0 26            [24]  936 	push	(_AccX + 1)
      000278 C0 27            [24]  937 	push	(_AccX + 2)
      00027A C0 28            [24]  938 	push	(_AccX + 3)
      00027C 85 25 82         [24]  939 	mov	dpl,_AccX
      00027F 85 26 83         [24]  940 	mov	dph,(_AccX + 1)
      000282 85 27 F0         [24]  941 	mov	b,(_AccX + 2)
      000285 E5 28            [12]  942 	mov	a,(_AccX + 3)
      000287 12 07 84         [24]  943 	lcall	___fsmul
      00028A AC 82            [24]  944 	mov	r4,dpl
      00028C AD 83            [24]  945 	mov	r5,dph
      00028E AE F0            [24]  946 	mov	r6,b
      000290 FF               [12]  947 	mov	r7,a
      000291 E5 81            [12]  948 	mov	a,sp
      000293 24 FC            [12]  949 	add	a,#0xfc
      000295 F5 81            [12]  950 	mov	sp,a
      000297 C0 07            [24]  951 	push	ar7
      000299 C0 06            [24]  952 	push	ar6
      00029B C0 05            [24]  953 	push	ar5
      00029D C0 04            [24]  954 	push	ar4
      00029F C0 2D            [24]  955 	push	_AccZ
      0002A1 C0 2E            [24]  956 	push	(_AccZ + 1)
      0002A3 C0 2F            [24]  957 	push	(_AccZ + 2)
      0002A5 C0 30            [24]  958 	push	(_AccZ + 3)
      0002A7 85 2D 82         [24]  959 	mov	dpl,_AccZ
      0002AA 85 2E 83         [24]  960 	mov	dph,(_AccZ + 1)
      0002AD 85 2F F0         [24]  961 	mov	b,(_AccZ + 2)
      0002B0 E5 30            [12]  962 	mov	a,(_AccZ + 3)
      0002B2 12 07 84         [24]  963 	lcall	___fsmul
      0002B5 A8 82            [24]  964 	mov	r0,dpl
      0002B7 A9 83            [24]  965 	mov	r1,dph
      0002B9 AA F0            [24]  966 	mov	r2,b
      0002BB FB               [12]  967 	mov	r3,a
      0002BC E5 81            [12]  968 	mov	a,sp
      0002BE 24 FC            [12]  969 	add	a,#0xfc
      0002C0 F5 81            [12]  970 	mov	sp,a
      0002C2 D0 04            [24]  971 	pop	ar4
      0002C4 D0 05            [24]  972 	pop	ar5
      0002C6 D0 06            [24]  973 	pop	ar6
      0002C8 D0 07            [24]  974 	pop	ar7
      0002CA C0 00            [24]  975 	push	ar0
      0002CC C0 01            [24]  976 	push	ar1
      0002CE C0 02            [24]  977 	push	ar2
      0002D0 C0 03            [24]  978 	push	ar3
      0002D2 8C 82            [24]  979 	mov	dpl,r4
      0002D4 8D 83            [24]  980 	mov	dph,r5
      0002D6 8E F0            [24]  981 	mov	b,r6
      0002D8 EF               [12]  982 	mov	a,r7
      0002D9 12 0B E2         [24]  983 	lcall	___fsadd
      0002DC AC 82            [24]  984 	mov	r4,dpl
      0002DE AD 83            [24]  985 	mov	r5,dph
      0002E0 AE F0            [24]  986 	mov	r6,b
      0002E2 FF               [12]  987 	mov	r7,a
      0002E3 E5 81            [12]  988 	mov	a,sp
      0002E5 24 FC            [12]  989 	add	a,#0xfc
      0002E7 F5 81            [12]  990 	mov	sp,a
      0002E9 8C 82            [24]  991 	mov	dpl,r4
      0002EB 8D 83            [24]  992 	mov	dph,r5
      0002ED 8E F0            [24]  993 	mov	b,r6
      0002EF EF               [12]  994 	mov	a,r7
      0002F0 12 08 88         [24]  995 	lcall	_sqrtf
      0002F3 AC 82            [24]  996 	mov	r4,dpl
      0002F5 AD 83            [24]  997 	mov	r5,dph
      0002F7 AE F0            [24]  998 	mov	r6,b
      0002F9 FF               [12]  999 	mov	r7,a
      0002FA C0 04            [24] 1000 	push	ar4
      0002FC C0 05            [24] 1001 	push	ar5
      0002FE C0 06            [24] 1002 	push	ar6
      000300 C0 07            [24] 1003 	push	ar7
      000302 85 29 82         [24] 1004 	mov	dpl,_AccY
      000305 85 2A 83         [24] 1005 	mov	dph,(_AccY + 1)
      000308 85 2B F0         [24] 1006 	mov	b,(_AccY + 2)
      00030B E5 2C            [12] 1007 	mov	a,(_AccY + 3)
      00030D 12 13 6B         [24] 1008 	lcall	___fsdiv
      000310 AC 82            [24] 1009 	mov	r4,dpl
      000312 AD 83            [24] 1010 	mov	r5,dph
      000314 AE F0            [24] 1011 	mov	r6,b
      000316 FF               [12] 1012 	mov	r7,a
      000317 E5 81            [12] 1013 	mov	a,sp
      000319 24 FC            [12] 1014 	add	a,#0xfc
      00031B F5 81            [12] 1015 	mov	sp,a
      00031D 8C 82            [24] 1016 	mov	dpl,r4
      00031F 8D 83            [24] 1017 	mov	dph,r5
      000321 8E F0            [24] 1018 	mov	b,r6
      000323 EF               [12] 1019 	mov	a,r7
      000324 12 0D CA         [24] 1020 	lcall	_atanf
      000327 AC 82            [24] 1021 	mov	r4,dpl
      000329 AD 83            [24] 1022 	mov	r5,dph
      00032B AE F0            [24] 1023 	mov	r6,b
      00032D FF               [12] 1024 	mov	r7,a
      00032E 74 F4            [12] 1025 	mov	a,#0xf4
      000330 C0 E0            [24] 1026 	push	acc
      000332 74 FE            [12] 1027 	mov	a,#0xfe
      000334 C0 E0            [24] 1028 	push	acc
      000336 74 8E            [12] 1029 	mov	a,#0x8e
      000338 C0 E0            [24] 1030 	push	acc
      00033A 74 3C            [12] 1031 	mov	a,#0x3c
      00033C C0 E0            [24] 1032 	push	acc
      00033E 8C 82            [24] 1033 	mov	dpl,r4
      000340 8D 83            [24] 1034 	mov	dph,r5
      000342 8E F0            [24] 1035 	mov	b,r6
      000344 EF               [12] 1036 	mov	a,r7
      000345 12 13 6B         [24] 1037 	lcall	___fsdiv
      000348 85 82 31         [24] 1038 	mov	_AngleRoll,dpl
      00034B 85 83 32         [24] 1039 	mov	(_AngleRoll + 1),dph
      00034E 85 F0 33         [24] 1040 	mov	(_AngleRoll + 2),b
      000351 F5 34            [12] 1041 	mov	(_AngleRoll + 3),a
      000353 E5 81            [12] 1042 	mov	a,sp
      000355 24 FC            [12] 1043 	add	a,#0xfc
      000357 F5 81            [12] 1044 	mov	sp,a
                                   1045 ;	main.c:91: AnglePitch = atanf(AccX/sqrtf(AccY*AccY + AccZ*AccZ))*1/(3.142/180);
      000359 C0 29            [24] 1046 	push	_AccY
      00035B C0 2A            [24] 1047 	push	(_AccY + 1)
      00035D C0 2B            [24] 1048 	push	(_AccY + 2)
      00035F C0 2C            [24] 1049 	push	(_AccY + 3)
      000361 85 29 82         [24] 1050 	mov	dpl,_AccY
      000364 85 2A 83         [24] 1051 	mov	dph,(_AccY + 1)
      000367 85 2B F0         [24] 1052 	mov	b,(_AccY + 2)
      00036A E5 2C            [12] 1053 	mov	a,(_AccY + 3)
      00036C 12 07 84         [24] 1054 	lcall	___fsmul
      00036F AC 82            [24] 1055 	mov	r4,dpl
      000371 AD 83            [24] 1056 	mov	r5,dph
      000373 AE F0            [24] 1057 	mov	r6,b
      000375 FF               [12] 1058 	mov	r7,a
      000376 E5 81            [12] 1059 	mov	a,sp
      000378 24 FC            [12] 1060 	add	a,#0xfc
      00037A F5 81            [12] 1061 	mov	sp,a
      00037C C0 07            [24] 1062 	push	ar7
      00037E C0 06            [24] 1063 	push	ar6
      000380 C0 05            [24] 1064 	push	ar5
      000382 C0 04            [24] 1065 	push	ar4
      000384 C0 2D            [24] 1066 	push	_AccZ
      000386 C0 2E            [24] 1067 	push	(_AccZ + 1)
      000388 C0 2F            [24] 1068 	push	(_AccZ + 2)
      00038A C0 30            [24] 1069 	push	(_AccZ + 3)
      00038C 85 2D 82         [24] 1070 	mov	dpl,_AccZ
      00038F 85 2E 83         [24] 1071 	mov	dph,(_AccZ + 1)
      000392 85 2F F0         [24] 1072 	mov	b,(_AccZ + 2)
      000395 E5 30            [12] 1073 	mov	a,(_AccZ + 3)
      000397 12 07 84         [24] 1074 	lcall	___fsmul
      00039A A8 82            [24] 1075 	mov	r0,dpl
      00039C A9 83            [24] 1076 	mov	r1,dph
      00039E AA F0            [24] 1077 	mov	r2,b
      0003A0 FB               [12] 1078 	mov	r3,a
      0003A1 E5 81            [12] 1079 	mov	a,sp
      0003A3 24 FC            [12] 1080 	add	a,#0xfc
      0003A5 F5 81            [12] 1081 	mov	sp,a
      0003A7 D0 04            [24] 1082 	pop	ar4
      0003A9 D0 05            [24] 1083 	pop	ar5
      0003AB D0 06            [24] 1084 	pop	ar6
      0003AD D0 07            [24] 1085 	pop	ar7
      0003AF C0 00            [24] 1086 	push	ar0
      0003B1 C0 01            [24] 1087 	push	ar1
      0003B3 C0 02            [24] 1088 	push	ar2
      0003B5 C0 03            [24] 1089 	push	ar3
      0003B7 8C 82            [24] 1090 	mov	dpl,r4
      0003B9 8D 83            [24] 1091 	mov	dph,r5
      0003BB 8E F0            [24] 1092 	mov	b,r6
      0003BD EF               [12] 1093 	mov	a,r7
      0003BE 12 0B E2         [24] 1094 	lcall	___fsadd
      0003C1 AC 82            [24] 1095 	mov	r4,dpl
      0003C3 AD 83            [24] 1096 	mov	r5,dph
      0003C5 AE F0            [24] 1097 	mov	r6,b
      0003C7 FF               [12] 1098 	mov	r7,a
      0003C8 E5 81            [12] 1099 	mov	a,sp
      0003CA 24 FC            [12] 1100 	add	a,#0xfc
      0003CC F5 81            [12] 1101 	mov	sp,a
      0003CE 8C 82            [24] 1102 	mov	dpl,r4
      0003D0 8D 83            [24] 1103 	mov	dph,r5
      0003D2 8E F0            [24] 1104 	mov	b,r6
      0003D4 EF               [12] 1105 	mov	a,r7
      0003D5 12 08 88         [24] 1106 	lcall	_sqrtf
      0003D8 AC 82            [24] 1107 	mov	r4,dpl
      0003DA AD 83            [24] 1108 	mov	r5,dph
      0003DC AE F0            [24] 1109 	mov	r6,b
      0003DE FF               [12] 1110 	mov	r7,a
      0003DF C0 04            [24] 1111 	push	ar4
      0003E1 C0 05            [24] 1112 	push	ar5
      0003E3 C0 06            [24] 1113 	push	ar6
      0003E5 C0 07            [24] 1114 	push	ar7
      0003E7 85 25 82         [24] 1115 	mov	dpl,_AccX
      0003EA 85 26 83         [24] 1116 	mov	dph,(_AccX + 1)
      0003ED 85 27 F0         [24] 1117 	mov	b,(_AccX + 2)
      0003F0 E5 28            [12] 1118 	mov	a,(_AccX + 3)
      0003F2 12 13 6B         [24] 1119 	lcall	___fsdiv
      0003F5 AC 82            [24] 1120 	mov	r4,dpl
      0003F7 AD 83            [24] 1121 	mov	r5,dph
      0003F9 AE F0            [24] 1122 	mov	r6,b
      0003FB FF               [12] 1123 	mov	r7,a
      0003FC E5 81            [12] 1124 	mov	a,sp
      0003FE 24 FC            [12] 1125 	add	a,#0xfc
      000400 F5 81            [12] 1126 	mov	sp,a
      000402 8C 82            [24] 1127 	mov	dpl,r4
      000404 8D 83            [24] 1128 	mov	dph,r5
      000406 8E F0            [24] 1129 	mov	b,r6
      000408 EF               [12] 1130 	mov	a,r7
      000409 12 0D CA         [24] 1131 	lcall	_atanf
      00040C AC 82            [24] 1132 	mov	r4,dpl
      00040E AD 83            [24] 1133 	mov	r5,dph
      000410 AE F0            [24] 1134 	mov	r6,b
      000412 FF               [12] 1135 	mov	r7,a
      000413 74 F4            [12] 1136 	mov	a,#0xf4
      000415 C0 E0            [24] 1137 	push	acc
      000417 74 FE            [12] 1138 	mov	a,#0xfe
      000419 C0 E0            [24] 1139 	push	acc
      00041B 74 8E            [12] 1140 	mov	a,#0x8e
      00041D C0 E0            [24] 1141 	push	acc
      00041F 74 3C            [12] 1142 	mov	a,#0x3c
      000421 C0 E0            [24] 1143 	push	acc
      000423 8C 82            [24] 1144 	mov	dpl,r4
      000425 8D 83            [24] 1145 	mov	dph,r5
      000427 8E F0            [24] 1146 	mov	b,r6
      000429 EF               [12] 1147 	mov	a,r7
      00042A 12 13 6B         [24] 1148 	lcall	___fsdiv
      00042D 85 82 35         [24] 1149 	mov	_AnglePitch,dpl
      000430 85 83 36         [24] 1150 	mov	(_AnglePitch + 1),dph
      000433 85 F0 37         [24] 1151 	mov	(_AnglePitch + 2),b
      000436 F5 38            [12] 1152 	mov	(_AnglePitch + 3),a
      000438 E5 81            [12] 1153 	mov	a,sp
      00043A 24 FC            [12] 1154 	add	a,#0xfc
      00043C F5 81            [12] 1155 	mov	sp,a
                                   1156 ;	main.c:95: AngleRoll = fabsf(AngleRoll);
      00043E 85 31 82         [24] 1157 	mov	dpl,_AngleRoll
      000441 85 32 83         [24] 1158 	mov	dph,(_AngleRoll + 1)
      000444 85 33 F0         [24] 1159 	mov	b,(_AngleRoll + 2)
      000447 E5 34            [12] 1160 	mov	a,(_AngleRoll + 3)
      000449 12 0C 3B         [24] 1161 	lcall	_fabsf
      00044C 85 82 31         [24] 1162 	mov	_AngleRoll,dpl
      00044F 85 83 32         [24] 1163 	mov	(_AngleRoll + 1),dph
      000452 85 F0 33         [24] 1164 	mov	(_AngleRoll + 2),b
      000455 F5 34            [12] 1165 	mov	(_AngleRoll + 3),a
                                   1166 ;	main.c:96: AnglePitch = fabsf(AnglePitch);
      000457 85 35 82         [24] 1167 	mov	dpl,_AnglePitch
      00045A 85 36 83         [24] 1168 	mov	dph,(_AnglePitch + 1)
      00045D 85 37 F0         [24] 1169 	mov	b,(_AnglePitch + 2)
      000460 E5 38            [12] 1170 	mov	a,(_AnglePitch + 3)
      000462 12 0C 3B         [24] 1171 	lcall	_fabsf
      000465 85 82 35         [24] 1172 	mov	_AnglePitch,dpl
      000468 85 83 36         [24] 1173 	mov	(_AnglePitch + 1),dph
      00046B 85 F0 37         [24] 1174 	mov	(_AnglePitch + 2),b
      00046E F5 38            [12] 1175 	mov	(_AnglePitch + 3),a
                                   1176 ;	main.c:97: }
      000470 22               [24] 1177 	ret
                                   1178 ;------------------------------------------------------------
                                   1179 ;Allocation info for local variables in function 'main'
                                   1180 ;------------------------------------------------------------
                                   1181 ;	main.c:99: void main(void)
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function main
                                   1184 ;	-----------------------------------------
      000471                       1185 _main:
                                   1186 ;	main.c:102: LED_PORT;
      000471 53 B3 DF         [24] 1187 	anl	_P1M1,#0xdf
      000474 43 B4 20         [24] 1188 	orl	_P1M2,#0x20
                                   1189 ;	main.c:103: LED = 0;
                                   1190 ;	assignBit
      000477 C2 95            [12] 1191 	clr	_P15
                                   1192 ;	main.c:104: I2C_Init();
      000479 12 04 C4         [24] 1193 	lcall	_I2C_Init
                                   1194 ;	main.c:105: UART0_Init();
      00047C 12 06 46         [24] 1195 	lcall	_UART0_Init
                                   1196 ;	main.c:106: InitMPU6050();
      00047F 12 00 65         [24] 1197 	lcall	_InitMPU6050
                                   1198 ;	main.c:108: UART0_STRING("Start:");
      000482 90 15 F5         [24] 1199 	mov	dptr,#___str_0
      000485 75 F0 80         [24] 1200 	mov	b,#0x80
      000488 12 06 9A         [24] 1201 	lcall	_UART0_STRING
                                   1202 ;	main.c:109: while (1) {
      00048B                       1203 00102$:
                                   1204 ;	main.c:110: ReadData();
      00048B 12 00 E9         [24] 1205 	lcall	_ReadData
                                   1206 ;	main.c:112: Delay_Ms(10);
      00048E 90 00 0A         [24] 1207 	mov	dptr,#0x000a
      000491 12 06 07         [24] 1208 	lcall	_Delay_Ms
                                   1209 ;	main.c:114: UART0_NUMBER(AngleRoll);
      000494 85 31 82         [24] 1210 	mov	dpl,_AngleRoll
      000497 85 32 83         [24] 1211 	mov	dph,(_AngleRoll + 1)
      00049A 85 33 F0         [24] 1212 	mov	b,(_AngleRoll + 2)
      00049D E5 34            [12] 1213 	mov	a,(_AngleRoll + 3)
      00049F 12 0D 96         [24] 1214 	lcall	___fs2sint
      0004A2 12 06 F1         [24] 1215 	lcall	_UART0_NUMBER
                                   1216 ;	main.c:115: UART0_STRING("-");
      0004A5 90 15 FC         [24] 1217 	mov	dptr,#___str_1
      0004A8 75 F0 80         [24] 1218 	mov	b,#0x80
      0004AB 12 06 9A         [24] 1219 	lcall	_UART0_STRING
                                   1220 ;	main.c:116: UART0_NUMBER(AnglePitch);
      0004AE 85 35 82         [24] 1221 	mov	dpl,_AnglePitch
      0004B1 85 36 83         [24] 1222 	mov	dph,(_AnglePitch + 1)
      0004B4 85 37 F0         [24] 1223 	mov	b,(_AnglePitch + 2)
      0004B7 E5 38            [12] 1224 	mov	a,(_AnglePitch + 3)
      0004B9 12 0D 96         [24] 1225 	lcall	___fs2sint
      0004BC 12 06 F1         [24] 1226 	lcall	_UART0_NUMBER
                                   1227 ;	main.c:119: UART0_NLINE();
      0004BF 12 06 DE         [24] 1228 	lcall	_UART0_NLINE
                                   1229 ;	main.c:124: }
      0004C2 80 C7            [24] 1230 	sjmp	00102$
                                   1231 	.area CSEG    (CODE)
                                   1232 	.area CONST   (CODE)
                                   1233 	.area CONST   (CODE)
      0015F5                       1234 ___str_0:
      0015F5 53 74 61 72 74 3A     1235 	.ascii "Start:"
      0015FB 00                    1236 	.db 0x00
                                   1237 	.area CSEG    (CODE)
                                   1238 	.area CONST   (CODE)
      0015FC                       1239 ___str_1:
      0015FC 2D                    1240 	.ascii "-"
      0015FD 00                    1241 	.db 0x00
                                   1242 	.area CSEG    (CODE)
                                   1243 	.area XINIT   (CODE)
                                   1244 	.area CABS    (ABS,CODE)
