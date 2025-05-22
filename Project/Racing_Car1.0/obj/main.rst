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
                                     17 	.globl _Delay_Ms
                                     18 	.globl _I2C_Read
                                     19 	.globl _I2C_Write
                                     20 	.globl _I2C_Address
                                     21 	.globl _I2C_RepeatedStart
                                     22 	.globl _I2C_start
                                     23 	.globl _send_stop
                                     24 	.globl _MOSI
                                     25 	.globl _P00
                                     26 	.globl _MISO
                                     27 	.globl _P01
                                     28 	.globl _RXD_1
                                     29 	.globl _P02
                                     30 	.globl _P03
                                     31 	.globl _STADC
                                     32 	.globl _P04
                                     33 	.globl _P05
                                     34 	.globl _TXD
                                     35 	.globl _P06
                                     36 	.globl _RXD
                                     37 	.globl _P07
                                     38 	.globl _IT0
                                     39 	.globl _IE0
                                     40 	.globl _IT1
                                     41 	.globl _IE1
                                     42 	.globl _TR0
                                     43 	.globl _TF0
                                     44 	.globl _TR1
                                     45 	.globl _TF1
                                     46 	.globl _P10
                                     47 	.globl _P11
                                     48 	.globl _P12
                                     49 	.globl _SCL
                                     50 	.globl _P13
                                     51 	.globl _SDA
                                     52 	.globl _P14
                                     53 	.globl _P15
                                     54 	.globl _TXD_1
                                     55 	.globl _P16
                                     56 	.globl _P17
                                     57 	.globl _RI
                                     58 	.globl _TI
                                     59 	.globl _RB8
                                     60 	.globl _TB8
                                     61 	.globl _REN
                                     62 	.globl _SM2
                                     63 	.globl _SM1
                                     64 	.globl _FE
                                     65 	.globl _SM0
                                     66 	.globl _P20
                                     67 	.globl _EX0
                                     68 	.globl _ET0
                                     69 	.globl _EX1
                                     70 	.globl _ET1
                                     71 	.globl _ES
                                     72 	.globl _EBOD
                                     73 	.globl _EADC
                                     74 	.globl _EA
                                     75 	.globl _P30
                                     76 	.globl _PX0
                                     77 	.globl _PT0
                                     78 	.globl _PX1
                                     79 	.globl _PT1
                                     80 	.globl _PS
                                     81 	.globl _PBOD
                                     82 	.globl _PADC
                                     83 	.globl _I2CPX
                                     84 	.globl _AA
                                     85 	.globl _SI
                                     86 	.globl _STO
                                     87 	.globl _STA
                                     88 	.globl _I2CEN
                                     89 	.globl _CM_RL2
                                     90 	.globl _TR2
                                     91 	.globl _TF2
                                     92 	.globl _P
                                     93 	.globl _OV
                                     94 	.globl _RS0
                                     95 	.globl _RS1
                                     96 	.globl _F0
                                     97 	.globl _AC
                                     98 	.globl _CY
                                     99 	.globl _CLRPWM
                                    100 	.globl _PWMF
                                    101 	.globl _LOAD
                                    102 	.globl _PWMRUN
                                    103 	.globl _ADCHS0
                                    104 	.globl _ADCHS1
                                    105 	.globl _ADCHS2
                                    106 	.globl _ADCHS3
                                    107 	.globl _ETGSEL0
                                    108 	.globl _ETGSEL1
                                    109 	.globl _ADCS
                                    110 	.globl _ADCF
                                    111 	.globl _RI_1
                                    112 	.globl _TI_1
                                    113 	.globl _RB8_1
                                    114 	.globl _TB8_1
                                    115 	.globl _REN_1
                                    116 	.globl _SM2_1
                                    117 	.globl _SM1_1
                                    118 	.globl _FE_1
                                    119 	.globl _SM0_1
                                    120 	.globl _EIPH1
                                    121 	.globl _EIP1
                                    122 	.globl _PMD
                                    123 	.globl _PMEN
                                    124 	.globl _PDTCNT
                                    125 	.globl _PDTEN
                                    126 	.globl _SCON_1
                                    127 	.globl _EIPH
                                    128 	.globl _AINDIDS
                                    129 	.globl _SPDR
                                    130 	.globl _SPSR
                                    131 	.globl _SPCR2
                                    132 	.globl _SPCR
                                    133 	.globl _CAPCON4
                                    134 	.globl _CAPCON3
                                    135 	.globl _B
                                    136 	.globl _EIP
                                    137 	.globl _C2H
                                    138 	.globl _C2L
                                    139 	.globl _PIF
                                    140 	.globl _PIPEN
                                    141 	.globl _PINEN
                                    142 	.globl _PICON
                                    143 	.globl _ADCCON0
                                    144 	.globl _C1H
                                    145 	.globl _C1L
                                    146 	.globl _C0H
                                    147 	.globl _C0L
                                    148 	.globl _ADCDLY
                                    149 	.globl _ADCCON2
                                    150 	.globl _ADCCON1
                                    151 	.globl _ACC
                                    152 	.globl _PWMCON1
                                    153 	.globl _PIOCON0
                                    154 	.globl _PWM3L
                                    155 	.globl _PWM2L
                                    156 	.globl _PWM1L
                                    157 	.globl _PWM0L
                                    158 	.globl _PWMPL
                                    159 	.globl _PWMCON0
                                    160 	.globl _FBD
                                    161 	.globl _PNP
                                    162 	.globl _PWM3H
                                    163 	.globl _PWM2H
                                    164 	.globl _PWM1H
                                    165 	.globl _PWM0H
                                    166 	.globl _PWMPH
                                    167 	.globl _PSW
                                    168 	.globl _ADCMPH
                                    169 	.globl _ADCMPL
                                    170 	.globl _PWM5L
                                    171 	.globl _TH2
                                    172 	.globl _PWM4L
                                    173 	.globl _TL2
                                    174 	.globl _RCMP2H
                                    175 	.globl _RCMP2L
                                    176 	.globl _T2MOD
                                    177 	.globl _T2CON
                                    178 	.globl _TA
                                    179 	.globl _PIOCON1
                                    180 	.globl _RH3
                                    181 	.globl _PWM5H
                                    182 	.globl _RL3
                                    183 	.globl _PWM4H
                                    184 	.globl _T3CON
                                    185 	.globl _ADCRH
                                    186 	.globl _ADCRL
                                    187 	.globl _I2ADDR
                                    188 	.globl _I2CON
                                    189 	.globl _I2TOC
                                    190 	.globl _I2CLK
                                    191 	.globl _I2STAT
                                    192 	.globl _I2DAT
                                    193 	.globl _SADDR_1
                                    194 	.globl _SADEN_1
                                    195 	.globl _SADEN
                                    196 	.globl _IP
                                    197 	.globl _PWMINTC
                                    198 	.globl _IPH
                                    199 	.globl _P2S
                                    200 	.globl _P1SR
                                    201 	.globl _P1M2
                                    202 	.globl _P1S
                                    203 	.globl _P1M1
                                    204 	.globl _P0SR
                                    205 	.globl _P0M2
                                    206 	.globl _P0S
                                    207 	.globl _P0M1
                                    208 	.globl _P3
                                    209 	.globl _IAPCN
                                    210 	.globl _IAPFD
                                    211 	.globl _P3SR
                                    212 	.globl _P3M2
                                    213 	.globl _P3S
                                    214 	.globl _P3M1
                                    215 	.globl _BODCON1
                                    216 	.globl _WDCON
                                    217 	.globl _SADDR
                                    218 	.globl _IE
                                    219 	.globl _IAPAH
                                    220 	.globl _IAPAL
                                    221 	.globl _IAPUEN
                                    222 	.globl _IAPTRG
                                    223 	.globl _BODCON0
                                    224 	.globl _AUXR1
                                    225 	.globl _P2
                                    226 	.globl _CHPCON
                                    227 	.globl _EIE1
                                    228 	.globl _EIE
                                    229 	.globl _SBUF_1
                                    230 	.globl _SBUF
                                    231 	.globl _SCON
                                    232 	.globl _CKEN
                                    233 	.globl _CKSWT
                                    234 	.globl _CKDIV
                                    235 	.globl _CAPCON2
                                    236 	.globl _CAPCON1
                                    237 	.globl _CAPCON0
                                    238 	.globl _SFRS
                                    239 	.globl _P1
                                    240 	.globl _WKCON
                                    241 	.globl _CKCON
                                    242 	.globl _TH1
                                    243 	.globl _TH0
                                    244 	.globl _TL1
                                    245 	.globl _TL0
                                    246 	.globl _TMOD
                                    247 	.globl _TCON
                                    248 	.globl _PCON
                                    249 	.globl _RWK
                                    250 	.globl _RCTRIM1
                                    251 	.globl _RCTRIM0
                                    252 	.globl _DPH
                                    253 	.globl _DPL
                                    254 	.globl _SP
                                    255 	.globl _P0
                                    256 	.globl _checkAddress
                                    257 	.globl _u8Data
                                    258 	.globl _AccZMSB
                                    259 	.globl _AccZLSB
                                    260 	.globl _AccYMSB
                                    261 	.globl _AccYLSB
                                    262 	.globl _AccXMSB
                                    263 	.globl _AccXLSB
                                    264 	.globl _AnglePitch
                                    265 	.globl _AngleRoll
                                    266 	.globl _AccZ
                                    267 	.globl _AccY
                                    268 	.globl _AccX
                                    269 	.globl _Res
                                    270 	.globl _High
                                    271 	.globl _Low
                                    272 ;--------------------------------------------------------
                                    273 ; special function registers
                                    274 ;--------------------------------------------------------
                                    275 	.area RSEG    (ABS,DATA)
      000000                        276 	.org 0x0000
                           000080   277 _P0	=	0x0080
                           000081   278 _SP	=	0x0081
                           000082   279 _DPL	=	0x0082
                           000083   280 _DPH	=	0x0083
                           000084   281 _RCTRIM0	=	0x0084
                           000085   282 _RCTRIM1	=	0x0085
                           000086   283 _RWK	=	0x0086
                           000087   284 _PCON	=	0x0087
                           000088   285 _TCON	=	0x0088
                           000089   286 _TMOD	=	0x0089
                           00008A   287 _TL0	=	0x008a
                           00008B   288 _TL1	=	0x008b
                           00008C   289 _TH0	=	0x008c
                           00008D   290 _TH1	=	0x008d
                           00008E   291 _CKCON	=	0x008e
                           00008F   292 _WKCON	=	0x008f
                           000090   293 _P1	=	0x0090
                           000091   294 _SFRS	=	0x0091
                           000092   295 _CAPCON0	=	0x0092
                           000093   296 _CAPCON1	=	0x0093
                           000094   297 _CAPCON2	=	0x0094
                           000095   298 _CKDIV	=	0x0095
                           000096   299 _CKSWT	=	0x0096
                           000097   300 _CKEN	=	0x0097
                           000098   301 _SCON	=	0x0098
                           000099   302 _SBUF	=	0x0099
                           00009A   303 _SBUF_1	=	0x009a
                           00009B   304 _EIE	=	0x009b
                           00009C   305 _EIE1	=	0x009c
                           00009F   306 _CHPCON	=	0x009f
                           0000A0   307 _P2	=	0x00a0
                           0000A2   308 _AUXR1	=	0x00a2
                           0000A3   309 _BODCON0	=	0x00a3
                           0000A4   310 _IAPTRG	=	0x00a4
                           0000A5   311 _IAPUEN	=	0x00a5
                           0000A6   312 _IAPAL	=	0x00a6
                           0000A7   313 _IAPAH	=	0x00a7
                           0000A8   314 _IE	=	0x00a8
                           0000A9   315 _SADDR	=	0x00a9
                           0000AA   316 _WDCON	=	0x00aa
                           0000AB   317 _BODCON1	=	0x00ab
                           0000AC   318 _P3M1	=	0x00ac
                           0000AC   319 _P3S	=	0x00ac
                           0000AD   320 _P3M2	=	0x00ad
                           0000AD   321 _P3SR	=	0x00ad
                           0000AE   322 _IAPFD	=	0x00ae
                           0000AF   323 _IAPCN	=	0x00af
                           0000B0   324 _P3	=	0x00b0
                           0000B1   325 _P0M1	=	0x00b1
                           0000B1   326 _P0S	=	0x00b1
                           0000B2   327 _P0M2	=	0x00b2
                           0000B2   328 _P0SR	=	0x00b2
                           0000B3   329 _P1M1	=	0x00b3
                           0000B3   330 _P1S	=	0x00b3
                           0000B4   331 _P1M2	=	0x00b4
                           0000B4   332 _P1SR	=	0x00b4
                           0000B5   333 _P2S	=	0x00b5
                           0000B7   334 _IPH	=	0x00b7
                           0000B7   335 _PWMINTC	=	0x00b7
                           0000B8   336 _IP	=	0x00b8
                           0000B9   337 _SADEN	=	0x00b9
                           0000BA   338 _SADEN_1	=	0x00ba
                           0000BB   339 _SADDR_1	=	0x00bb
                           0000BC   340 _I2DAT	=	0x00bc
                           0000BD   341 _I2STAT	=	0x00bd
                           0000BE   342 _I2CLK	=	0x00be
                           0000BF   343 _I2TOC	=	0x00bf
                           0000C0   344 _I2CON	=	0x00c0
                           0000C1   345 _I2ADDR	=	0x00c1
                           0000C2   346 _ADCRL	=	0x00c2
                           0000C3   347 _ADCRH	=	0x00c3
                           0000C4   348 _T3CON	=	0x00c4
                           0000C4   349 _PWM4H	=	0x00c4
                           0000C5   350 _RL3	=	0x00c5
                           0000C5   351 _PWM5H	=	0x00c5
                           0000C6   352 _RH3	=	0x00c6
                           0000C6   353 _PIOCON1	=	0x00c6
                           0000C7   354 _TA	=	0x00c7
                           0000C8   355 _T2CON	=	0x00c8
                           0000C9   356 _T2MOD	=	0x00c9
                           0000CA   357 _RCMP2L	=	0x00ca
                           0000CB   358 _RCMP2H	=	0x00cb
                           0000CC   359 _TL2	=	0x00cc
                           0000CC   360 _PWM4L	=	0x00cc
                           0000CD   361 _TH2	=	0x00cd
                           0000CD   362 _PWM5L	=	0x00cd
                           0000CE   363 _ADCMPL	=	0x00ce
                           0000CF   364 _ADCMPH	=	0x00cf
                           0000D0   365 _PSW	=	0x00d0
                           0000D1   366 _PWMPH	=	0x00d1
                           0000D2   367 _PWM0H	=	0x00d2
                           0000D3   368 _PWM1H	=	0x00d3
                           0000D4   369 _PWM2H	=	0x00d4
                           0000D5   370 _PWM3H	=	0x00d5
                           0000D6   371 _PNP	=	0x00d6
                           0000D7   372 _FBD	=	0x00d7
                           0000D8   373 _PWMCON0	=	0x00d8
                           0000D9   374 _PWMPL	=	0x00d9
                           0000DA   375 _PWM0L	=	0x00da
                           0000DB   376 _PWM1L	=	0x00db
                           0000DC   377 _PWM2L	=	0x00dc
                           0000DD   378 _PWM3L	=	0x00dd
                           0000DE   379 _PIOCON0	=	0x00de
                           0000DF   380 _PWMCON1	=	0x00df
                           0000E0   381 _ACC	=	0x00e0
                           0000E1   382 _ADCCON1	=	0x00e1
                           0000E2   383 _ADCCON2	=	0x00e2
                           0000E3   384 _ADCDLY	=	0x00e3
                           0000E4   385 _C0L	=	0x00e4
                           0000E5   386 _C0H	=	0x00e5
                           0000E6   387 _C1L	=	0x00e6
                           0000E7   388 _C1H	=	0x00e7
                           0000E8   389 _ADCCON0	=	0x00e8
                           0000E9   390 _PICON	=	0x00e9
                           0000EA   391 _PINEN	=	0x00ea
                           0000EB   392 _PIPEN	=	0x00eb
                           0000EC   393 _PIF	=	0x00ec
                           0000ED   394 _C2L	=	0x00ed
                           0000EE   395 _C2H	=	0x00ee
                           0000EF   396 _EIP	=	0x00ef
                           0000F0   397 _B	=	0x00f0
                           0000F1   398 _CAPCON3	=	0x00f1
                           0000F2   399 _CAPCON4	=	0x00f2
                           0000F3   400 _SPCR	=	0x00f3
                           0000F3   401 _SPCR2	=	0x00f3
                           0000F4   402 _SPSR	=	0x00f4
                           0000F5   403 _SPDR	=	0x00f5
                           0000F6   404 _AINDIDS	=	0x00f6
                           0000F7   405 _EIPH	=	0x00f7
                           0000F8   406 _SCON_1	=	0x00f8
                           0000F9   407 _PDTEN	=	0x00f9
                           0000FA   408 _PDTCNT	=	0x00fa
                           0000FB   409 _PMEN	=	0x00fb
                           0000FC   410 _PMD	=	0x00fc
                           0000FE   411 _EIP1	=	0x00fe
                           0000FF   412 _EIPH1	=	0x00ff
                                    413 ;--------------------------------------------------------
                                    414 ; special function bits
                                    415 ;--------------------------------------------------------
                                    416 	.area RSEG    (ABS,DATA)
      000000                        417 	.org 0x0000
                           0000FF   418 _SM0_1	=	0x00ff
                           0000FF   419 _FE_1	=	0x00ff
                           0000FE   420 _SM1_1	=	0x00fe
                           0000FD   421 _SM2_1	=	0x00fd
                           0000FC   422 _REN_1	=	0x00fc
                           0000FB   423 _TB8_1	=	0x00fb
                           0000FA   424 _RB8_1	=	0x00fa
                           0000F9   425 _TI_1	=	0x00f9
                           0000F8   426 _RI_1	=	0x00f8
                           0000EF   427 _ADCF	=	0x00ef
                           0000EE   428 _ADCS	=	0x00ee
                           0000ED   429 _ETGSEL1	=	0x00ed
                           0000EC   430 _ETGSEL0	=	0x00ec
                           0000EB   431 _ADCHS3	=	0x00eb
                           0000EA   432 _ADCHS2	=	0x00ea
                           0000E9   433 _ADCHS1	=	0x00e9
                           0000E8   434 _ADCHS0	=	0x00e8
                           0000DF   435 _PWMRUN	=	0x00df
                           0000DE   436 _LOAD	=	0x00de
                           0000DD   437 _PWMF	=	0x00dd
                           0000DC   438 _CLRPWM	=	0x00dc
                           0000D7   439 _CY	=	0x00d7
                           0000D6   440 _AC	=	0x00d6
                           0000D5   441 _F0	=	0x00d5
                           0000D4   442 _RS1	=	0x00d4
                           0000D3   443 _RS0	=	0x00d3
                           0000D2   444 _OV	=	0x00d2
                           0000D0   445 _P	=	0x00d0
                           0000CF   446 _TF2	=	0x00cf
                           0000CA   447 _TR2	=	0x00ca
                           0000C8   448 _CM_RL2	=	0x00c8
                           0000C6   449 _I2CEN	=	0x00c6
                           0000C5   450 _STA	=	0x00c5
                           0000C4   451 _STO	=	0x00c4
                           0000C3   452 _SI	=	0x00c3
                           0000C2   453 _AA	=	0x00c2
                           0000C0   454 _I2CPX	=	0x00c0
                           0000BE   455 _PADC	=	0x00be
                           0000BD   456 _PBOD	=	0x00bd
                           0000BC   457 _PS	=	0x00bc
                           0000BB   458 _PT1	=	0x00bb
                           0000BA   459 _PX1	=	0x00ba
                           0000B9   460 _PT0	=	0x00b9
                           0000B8   461 _PX0	=	0x00b8
                           0000B0   462 _P30	=	0x00b0
                           0000AF   463 _EA	=	0x00af
                           0000AE   464 _EADC	=	0x00ae
                           0000AD   465 _EBOD	=	0x00ad
                           0000AC   466 _ES	=	0x00ac
                           0000AB   467 _ET1	=	0x00ab
                           0000AA   468 _EX1	=	0x00aa
                           0000A9   469 _ET0	=	0x00a9
                           0000A8   470 _EX0	=	0x00a8
                           0000A0   471 _P20	=	0x00a0
                           00009F   472 _SM0	=	0x009f
                           00009F   473 _FE	=	0x009f
                           00009E   474 _SM1	=	0x009e
                           00009D   475 _SM2	=	0x009d
                           00009C   476 _REN	=	0x009c
                           00009B   477 _TB8	=	0x009b
                           00009A   478 _RB8	=	0x009a
                           000099   479 _TI	=	0x0099
                           000098   480 _RI	=	0x0098
                           000097   481 _P17	=	0x0097
                           000096   482 _P16	=	0x0096
                           000096   483 _TXD_1	=	0x0096
                           000095   484 _P15	=	0x0095
                           000094   485 _P14	=	0x0094
                           000094   486 _SDA	=	0x0094
                           000093   487 _P13	=	0x0093
                           000093   488 _SCL	=	0x0093
                           000092   489 _P12	=	0x0092
                           000091   490 _P11	=	0x0091
                           000090   491 _P10	=	0x0090
                           00008F   492 _TF1	=	0x008f
                           00008E   493 _TR1	=	0x008e
                           00008D   494 _TF0	=	0x008d
                           00008C   495 _TR0	=	0x008c
                           00008B   496 _IE1	=	0x008b
                           00008A   497 _IT1	=	0x008a
                           000089   498 _IE0	=	0x0089
                           000088   499 _IT0	=	0x0088
                           000087   500 _P07	=	0x0087
                           000087   501 _RXD	=	0x0087
                           000086   502 _P06	=	0x0086
                           000086   503 _TXD	=	0x0086
                           000085   504 _P05	=	0x0085
                           000084   505 _P04	=	0x0084
                           000084   506 _STADC	=	0x0084
                           000083   507 _P03	=	0x0083
                           000082   508 _P02	=	0x0082
                           000082   509 _RXD_1	=	0x0082
                           000081   510 _P01	=	0x0081
                           000081   511 _MISO	=	0x0081
                           000080   512 _P00	=	0x0080
                           000080   513 _MOSI	=	0x0080
                                    514 ;--------------------------------------------------------
                                    515 ; overlayable register banks
                                    516 ;--------------------------------------------------------
                                    517 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        518 	.ds 8
                                    519 ;--------------------------------------------------------
                                    520 ; internal ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area DSEG    (DATA)
      000021                        523 _Low::
      000021                        524 	.ds 1
      000022                        525 _High::
      000022                        526 	.ds 1
      000023                        527 _Res::
      000023                        528 	.ds 2
      000025                        529 _AccX::
      000025                        530 	.ds 4
      000029                        531 _AccY::
      000029                        532 	.ds 4
      00002D                        533 _AccZ::
      00002D                        534 	.ds 4
      000031                        535 _AngleRoll::
      000031                        536 	.ds 4
      000035                        537 _AnglePitch::
      000035                        538 	.ds 4
      000039                        539 _AccXLSB::
      000039                        540 	.ds 2
      00003B                        541 _AccXMSB::
      00003B                        542 	.ds 2
      00003D                        543 _AccYLSB::
      00003D                        544 	.ds 2
      00003F                        545 _AccYMSB::
      00003F                        546 	.ds 2
      000041                        547 _AccZLSB::
      000041                        548 	.ds 2
      000043                        549 _AccZMSB::
      000043                        550 	.ds 2
      000045                        551 _u8Data::
      000045                        552 	.ds 2
      000047                        553 _checkAddress::
      000047                        554 	.ds 1
                                    555 ;--------------------------------------------------------
                                    556 ; overlayable items in internal ram
                                    557 ;--------------------------------------------------------
                                    558 ;--------------------------------------------------------
                                    559 ; Stack segment in internal ram
                                    560 ;--------------------------------------------------------
                                    561 	.area SSEG
      000048                        562 __start__stack:
      000048                        563 	.ds	1
                                    564 
                                    565 ;--------------------------------------------------------
                                    566 ; indirectly addressable internal ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area ISEG    (DATA)
                                    569 ;--------------------------------------------------------
                                    570 ; absolute internal ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area IABS    (ABS,DATA)
                                    573 	.area IABS    (ABS,DATA)
                                    574 ;--------------------------------------------------------
                                    575 ; bit data
                                    576 ;--------------------------------------------------------
                                    577 	.area BSEG    (BIT)
                                    578 ;--------------------------------------------------------
                                    579 ; paged external ram data
                                    580 ;--------------------------------------------------------
                                    581 	.area PSEG    (PAG,XDATA)
                                    582 ;--------------------------------------------------------
                                    583 ; uninitialized external ram data
                                    584 ;--------------------------------------------------------
                                    585 	.area XSEG    (XDATA)
                                    586 ;--------------------------------------------------------
                                    587 ; absolute external ram data
                                    588 ;--------------------------------------------------------
                                    589 	.area XABS    (ABS,XDATA)
                                    590 ;--------------------------------------------------------
                                    591 ; initialized external ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area XISEG   (XDATA)
                                    594 	.area HOME    (CODE)
                                    595 	.area GSINIT0 (CODE)
                                    596 	.area GSINIT1 (CODE)
                                    597 	.area GSINIT2 (CODE)
                                    598 	.area GSINIT3 (CODE)
                                    599 	.area GSINIT4 (CODE)
                                    600 	.area GSINIT5 (CODE)
                                    601 	.area GSINIT  (CODE)
                                    602 	.area GSFINAL (CODE)
                                    603 	.area CSEG    (CODE)
                                    604 ;--------------------------------------------------------
                                    605 ; interrupt vector
                                    606 ;--------------------------------------------------------
                                    607 	.area HOME    (CODE)
      000000                        608 __interrupt_vect:
      000000 02 00 06         [24]  609 	ljmp	__sdcc_gsinit_startup
                                    610 ;--------------------------------------------------------
                                    611 ; global & static initialisations
                                    612 ;--------------------------------------------------------
                                    613 	.area HOME    (CODE)
                                    614 	.area GSINIT  (CODE)
                                    615 	.area GSFINAL (CODE)
                                    616 	.area GSINIT  (CODE)
                                    617 	.globl __sdcc_gsinit_startup
                                    618 	.globl __sdcc_program_startup
                                    619 	.globl __start__stack
                                    620 	.globl __mcs51_genXINIT
                                    621 	.globl __mcs51_genXRAMCLEAR
                                    622 	.globl __mcs51_genRAMCLEAR
                                    623 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  624 	ljmp	__sdcc_program_startup
                                    625 ;--------------------------------------------------------
                                    626 ; Home
                                    627 ;--------------------------------------------------------
                                    628 	.area HOME    (CODE)
                                    629 	.area HOME    (CODE)
      000003                        630 __sdcc_program_startup:
      000003 02 04 71         [24]  631 	ljmp	_main
                                    632 ;	return from main will return to caller
                                    633 ;--------------------------------------------------------
                                    634 ; code
                                    635 ;--------------------------------------------------------
                                    636 	.area CSEG    (CODE)
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'InitMPU6050'
                                    639 ;------------------------------------------------------------
                                    640 ;	main.c:23: void InitMPU6050(void)
                                    641 ;	-----------------------------------------
                                    642 ;	 function InitMPU6050
                                    643 ;	-----------------------------------------
      000065                        644 _InitMPU6050:
                           000007   645 	ar7 = 0x07
                           000006   646 	ar6 = 0x06
                           000005   647 	ar5 = 0x05
                           000004   648 	ar4 = 0x04
                           000003   649 	ar3 = 0x03
                           000002   650 	ar2 = 0x02
                           000001   651 	ar1 = 0x01
                           000000   652 	ar0 = 0x00
                                    653 ;	main.c:25: I2C_start();    
      000065 12 04 CE         [24]  654 	lcall	_I2C_start
                                    655 ;	main.c:26: I2C_Address((uint8_t)0x68 << 1 , 0);
      000068 75 08 00         [24]  656 	mov	_I2C_Address_PARM_2,#0x00
      00006B 75 82 D0         [24]  657 	mov	dpl,#0xd0
      00006E 12 05 05         [24]  658 	lcall	_I2C_Address
                                    659 ;	main.c:28: I2C_Write(0x6B);
      000071 75 82 6B         [24]  660 	mov	dpl,#0x6b
      000074 12 05 3A         [24]  661 	lcall	_I2C_Write
                                    662 ;	main.c:29: I2C_Write(0x00);
      000077 75 82 00         [24]  663 	mov	dpl,#0x00
      00007A 12 05 3A         [24]  664 	lcall	_I2C_Write
                                    665 ;	main.c:30: send_stop();
      00007D 12 04 A1         [24]  666 	lcall	_send_stop
                                    667 ;	main.c:31: Delay_Ms(10);
      000080 90 00 0A         [24]  668 	mov	dptr,#0x000a
      000083 12 05 CE         [24]  669 	lcall	_Delay_Ms
                                    670 ;	main.c:33: I2C_start();
      000086 12 04 CE         [24]  671 	lcall	_I2C_start
                                    672 ;	main.c:34: I2C_Address((uint8_t)0x68 << 1, 0);
      000089 75 08 00         [24]  673 	mov	_I2C_Address_PARM_2,#0x00
      00008C 75 82 D0         [24]  674 	mov	dpl,#0xd0
      00008F 12 05 05         [24]  675 	lcall	_I2C_Address
                                    676 ;	main.c:37: I2C_Write(0x1A);
      000092 75 82 1A         [24]  677 	mov	dpl,#0x1a
      000095 12 05 3A         [24]  678 	lcall	_I2C_Write
                                    679 ;	main.c:38: I2C_Write(0x05);
      000098 75 82 05         [24]  680 	mov	dpl,#0x05
      00009B 12 05 3A         [24]  681 	lcall	_I2C_Write
                                    682 ;	main.c:39: send_stop();
      00009E 12 04 A1         [24]  683 	lcall	_send_stop
                                    684 ;	main.c:40: Delay_Ms(10);
      0000A1 90 00 0A         [24]  685 	mov	dptr,#0x000a
      0000A4 12 05 CE         [24]  686 	lcall	_Delay_Ms
                                    687 ;	main.c:42: I2C_start();
      0000A7 12 04 CE         [24]  688 	lcall	_I2C_start
                                    689 ;	main.c:43: I2C_Address((uint8_t)0x68 << 1, 0);  //D0
      0000AA 75 08 00         [24]  690 	mov	_I2C_Address_PARM_2,#0x00
      0000AD 75 82 D0         [24]  691 	mov	dpl,#0xd0
      0000B0 12 05 05         [24]  692 	lcall	_I2C_Address
                                    693 ;	main.c:46: I2C_Write(0x1B);
      0000B3 75 82 1B         [24]  694 	mov	dpl,#0x1b
      0000B6 12 05 3A         [24]  695 	lcall	_I2C_Write
                                    696 ;	main.c:47: I2C_Write(0x00);
      0000B9 75 82 00         [24]  697 	mov	dpl,#0x00
      0000BC 12 05 3A         [24]  698 	lcall	_I2C_Write
                                    699 ;	main.c:48: send_stop();
      0000BF 12 04 A1         [24]  700 	lcall	_send_stop
                                    701 ;	main.c:49: Delay_Ms(10);
      0000C2 90 00 0A         [24]  702 	mov	dptr,#0x000a
      0000C5 12 05 CE         [24]  703 	lcall	_Delay_Ms
                                    704 ;	main.c:51: I2C_start();
      0000C8 12 04 CE         [24]  705 	lcall	_I2C_start
                                    706 ;	main.c:52: I2C_Address((uint8_t)0x68 << 1, 0);  //D0
      0000CB 75 08 00         [24]  707 	mov	_I2C_Address_PARM_2,#0x00
      0000CE 75 82 D0         [24]  708 	mov	dpl,#0xd0
      0000D1 12 05 05         [24]  709 	lcall	_I2C_Address
                                    710 ;	main.c:55: I2C_Write(0x1C);
      0000D4 75 82 1C         [24]  711 	mov	dpl,#0x1c
      0000D7 12 05 3A         [24]  712 	lcall	_I2C_Write
                                    713 ;	main.c:56: I2C_Write(0x10);
      0000DA 75 82 10         [24]  714 	mov	dpl,#0x10
      0000DD 12 05 3A         [24]  715 	lcall	_I2C_Write
                                    716 ;	main.c:57: send_stop();
      0000E0 12 04 A1         [24]  717 	lcall	_send_stop
                                    718 ;	main.c:58: Delay_Ms(10);
      0000E3 90 00 0A         [24]  719 	mov	dptr,#0x000a
                                    720 ;	main.c:59: }
      0000E6 02 05 CE         [24]  721 	ljmp	_Delay_Ms
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'ReadData'
                                    724 ;------------------------------------------------------------
                                    725 ;	main.c:61: void ReadData(void)
                                    726 ;	-----------------------------------------
                                    727 ;	 function ReadData
                                    728 ;	-----------------------------------------
      0000E9                        729 _ReadData:
                                    730 ;	main.c:64: I2C_start();
      0000E9 12 04 CE         [24]  731 	lcall	_I2C_start
                                    732 ;	main.c:65: I2C_Address((uint8_t)0xD0, 0);
      0000EC 75 08 00         [24]  733 	mov	_I2C_Address_PARM_2,#0x00
      0000EF 75 82 D0         [24]  734 	mov	dpl,#0xd0
      0000F2 12 05 05         [24]  735 	lcall	_I2C_Address
                                    736 ;	main.c:67: I2C_Write(0x3B);
      0000F5 75 82 3B         [24]  737 	mov	dpl,#0x3b
      0000F8 12 05 3A         [24]  738 	lcall	_I2C_Write
                                    739 ;	main.c:69: I2C_RepeatedStart();
      0000FB 12 04 EF         [24]  740 	lcall	_I2C_RepeatedStart
                                    741 ;	main.c:70: I2C_Address((uint8_t)0xD1, 1);
      0000FE 75 08 01         [24]  742 	mov	_I2C_Address_PARM_2,#0x01
      000101 75 82 D1         [24]  743 	mov	dpl,#0xd1
      000104 12 05 05         [24]  744 	lcall	_I2C_Address
                                    745 ;	main.c:71: AccXLSB = I2C_Read(1);
      000107 75 82 01         [24]  746 	mov	dpl,#0x01
      00010A 12 05 87         [24]  747 	lcall	_I2C_Read
      00010D AF 82            [24]  748 	mov	r7,dpl
      00010F 8F 39            [24]  749 	mov	_AccXLSB,r7
      000111 75 3A 00         [24]  750 	mov	(_AccXLSB + 1),#0x00
                                    751 ;	main.c:72: AccXMSB = I2C_Read(1);
      000114 75 82 01         [24]  752 	mov	dpl,#0x01
      000117 12 05 87         [24]  753 	lcall	_I2C_Read
      00011A AF 82            [24]  754 	mov	r7,dpl
      00011C 8F 3B            [24]  755 	mov	_AccXMSB,r7
      00011E 75 3C 00         [24]  756 	mov	(_AccXMSB + 1),#0x00
                                    757 ;	main.c:74: AccYLSB = I2C_Read(1);
      000121 75 82 01         [24]  758 	mov	dpl,#0x01
      000124 12 05 87         [24]  759 	lcall	_I2C_Read
      000127 AF 82            [24]  760 	mov	r7,dpl
      000129 8F 3D            [24]  761 	mov	_AccYLSB,r7
      00012B 75 3E 00         [24]  762 	mov	(_AccYLSB + 1),#0x00
                                    763 ;	main.c:75: AccYMSB = I2C_Read(1);
      00012E 75 82 01         [24]  764 	mov	dpl,#0x01
      000131 12 05 87         [24]  765 	lcall	_I2C_Read
      000134 AF 82            [24]  766 	mov	r7,dpl
      000136 8F 3F            [24]  767 	mov	_AccYMSB,r7
      000138 75 40 00         [24]  768 	mov	(_AccYMSB + 1),#0x00
                                    769 ;	main.c:77: AccZLSB = I2C_Read(1);
      00013B 75 82 01         [24]  770 	mov	dpl,#0x01
      00013E 12 05 87         [24]  771 	lcall	_I2C_Read
      000141 AF 82            [24]  772 	mov	r7,dpl
      000143 8F 41            [24]  773 	mov	_AccZLSB,r7
      000145 75 42 00         [24]  774 	mov	(_AccZLSB + 1),#0x00
                                    775 ;	main.c:78: AccZMSB = I2C_Read(0);
      000148 75 82 00         [24]  776 	mov	dpl,#0x00
      00014B 12 05 87         [24]  777 	lcall	_I2C_Read
      00014E AF 82            [24]  778 	mov	r7,dpl
      000150 8F 43            [24]  779 	mov	_AccZMSB,r7
      000152 75 44 00         [24]  780 	mov	(_AccZMSB + 1),#0x00
                                    781 ;	main.c:79: send_stop();
      000155 12 04 A1         [24]  782 	lcall	_send_stop
                                    783 ;	main.c:81: AccXLSB = (AccXLSB << 8) | AccXMSB;
      000158 AF 39            [24]  784 	mov	r7,_AccXLSB
      00015A 7E 00            [12]  785 	mov	r6,#0x00
      00015C E5 3B            [12]  786 	mov	a,_AccXMSB
      00015E 4E               [12]  787 	orl	a,r6
      00015F F5 39            [12]  788 	mov	_AccXLSB,a
      000161 E5 3C            [12]  789 	mov	a,(_AccXMSB + 1)
      000163 4F               [12]  790 	orl	a,r7
      000164 F5 3A            [12]  791 	mov	(_AccXLSB + 1),a
                                    792 ;	main.c:82: AccYLSB = (AccYLSB << 8) | AccYMSB;
      000166 AF 3D            [24]  793 	mov	r7,_AccYLSB
      000168 E5 3F            [12]  794 	mov	a,_AccYMSB
      00016A 4E               [12]  795 	orl	a,r6
      00016B F5 3D            [12]  796 	mov	_AccYLSB,a
      00016D E5 40            [12]  797 	mov	a,(_AccYMSB + 1)
      00016F 4F               [12]  798 	orl	a,r7
      000170 F5 3E            [12]  799 	mov	(_AccYLSB + 1),a
                                    800 ;	main.c:83: AccZLSB = (AccZLSB << 8) | AccZMSB;
      000172 AF 41            [24]  801 	mov	r7,_AccZLSB
      000174 E5 43            [12]  802 	mov	a,_AccZMSB
      000176 4E               [12]  803 	orl	a,r6
      000177 F5 41            [12]  804 	mov	_AccZLSB,a
      000179 E5 44            [12]  805 	mov	a,(_AccZMSB + 1)
      00017B 4F               [12]  806 	orl	a,r7
      00017C F5 42            [12]  807 	mov	(_AccZLSB + 1),a
                                    808 ;	main.c:85: AccX = (float)AccXLSB / 4096.0 - 0.01;
      00017E 85 39 82         [24]  809 	mov	dpl,_AccXLSB
      000181 85 3A 83         [24]  810 	mov	dph,(_AccXLSB + 1)
      000184 12 0C F1         [24]  811 	lcall	___sint2fs
      000187 AC 82            [24]  812 	mov	r4,dpl
      000189 AD 83            [24]  813 	mov	r5,dph
      00018B AE F0            [24]  814 	mov	r6,b
      00018D FF               [12]  815 	mov	r7,a
      00018E E4               [12]  816 	clr	a
      00018F C0 E0            [24]  817 	push	acc
      000191 C0 E0            [24]  818 	push	acc
      000193 74 80            [12]  819 	mov	a,#0x80
      000195 C0 E0            [24]  820 	push	acc
      000197 74 45            [12]  821 	mov	a,#0x45
      000199 C0 E0            [24]  822 	push	acc
      00019B 8C 82            [24]  823 	mov	dpl,r4
      00019D 8D 83            [24]  824 	mov	dph,r5
      00019F 8E F0            [24]  825 	mov	b,r6
      0001A1 EF               [12]  826 	mov	a,r7
      0001A2 12 12 6D         [24]  827 	lcall	___fsdiv
      0001A5 AC 82            [24]  828 	mov	r4,dpl
      0001A7 AD 83            [24]  829 	mov	r5,dph
      0001A9 AE F0            [24]  830 	mov	r6,b
      0001AB FF               [12]  831 	mov	r7,a
      0001AC E5 81            [12]  832 	mov	a,sp
      0001AE 24 FC            [12]  833 	add	a,#0xfc
      0001B0 F5 81            [12]  834 	mov	sp,a
      0001B2 74 0A            [12]  835 	mov	a,#0x0a
      0001B4 C0 E0            [24]  836 	push	acc
      0001B6 74 D7            [12]  837 	mov	a,#0xd7
      0001B8 C0 E0            [24]  838 	push	acc
      0001BA 74 23            [12]  839 	mov	a,#0x23
      0001BC C0 E0            [24]  840 	push	acc
      0001BE 74 3C            [12]  841 	mov	a,#0x3c
      0001C0 C0 E0            [24]  842 	push	acc
      0001C2 8C 82            [24]  843 	mov	dpl,r4
      0001C4 8D 83            [24]  844 	mov	dph,r5
      0001C6 8E F0            [24]  845 	mov	b,r6
      0001C8 EF               [12]  846 	mov	a,r7
      0001C9 12 07 40         [24]  847 	lcall	___fssub
      0001CC 85 82 25         [24]  848 	mov	_AccX,dpl
      0001CF 85 83 26         [24]  849 	mov	(_AccX + 1),dph
      0001D2 85 F0 27         [24]  850 	mov	(_AccX + 2),b
      0001D5 F5 28            [12]  851 	mov	(_AccX + 3),a
      0001D7 E5 81            [12]  852 	mov	a,sp
      0001D9 24 FC            [12]  853 	add	a,#0xfc
      0001DB F5 81            [12]  854 	mov	sp,a
                                    855 ;	main.c:86: AccY = (float)AccYLSB / 4096.0 ;
      0001DD 85 3D 82         [24]  856 	mov	dpl,_AccYLSB
      0001E0 85 3E 83         [24]  857 	mov	dph,(_AccYLSB + 1)
      0001E3 12 0C F1         [24]  858 	lcall	___sint2fs
      0001E6 AC 82            [24]  859 	mov	r4,dpl
      0001E8 AD 83            [24]  860 	mov	r5,dph
      0001EA AE F0            [24]  861 	mov	r6,b
      0001EC FF               [12]  862 	mov	r7,a
      0001ED E4               [12]  863 	clr	a
      0001EE C0 E0            [24]  864 	push	acc
      0001F0 C0 E0            [24]  865 	push	acc
      0001F2 74 80            [12]  866 	mov	a,#0x80
      0001F4 C0 E0            [24]  867 	push	acc
      0001F6 74 45            [12]  868 	mov	a,#0x45
      0001F8 C0 E0            [24]  869 	push	acc
      0001FA 8C 82            [24]  870 	mov	dpl,r4
      0001FC 8D 83            [24]  871 	mov	dph,r5
      0001FE 8E F0            [24]  872 	mov	b,r6
      000200 EF               [12]  873 	mov	a,r7
      000201 12 12 6D         [24]  874 	lcall	___fsdiv
      000204 85 82 29         [24]  875 	mov	_AccY,dpl
      000207 85 83 2A         [24]  876 	mov	(_AccY + 1),dph
      00020A 85 F0 2B         [24]  877 	mov	(_AccY + 2),b
      00020D F5 2C            [12]  878 	mov	(_AccY + 3),a
      00020F E5 81            [12]  879 	mov	a,sp
      000211 24 FC            [12]  880 	add	a,#0xfc
      000213 F5 81            [12]  881 	mov	sp,a
                                    882 ;	main.c:87: AccZ = (float)AccZLSB / 4096.0 + 0.01;
      000215 85 41 82         [24]  883 	mov	dpl,_AccZLSB
      000218 85 42 83         [24]  884 	mov	dph,(_AccZLSB + 1)
      00021B 12 0C F1         [24]  885 	lcall	___sint2fs
      00021E AC 82            [24]  886 	mov	r4,dpl
      000220 AD 83            [24]  887 	mov	r5,dph
      000222 AE F0            [24]  888 	mov	r6,b
      000224 FF               [12]  889 	mov	r7,a
      000225 E4               [12]  890 	clr	a
      000226 C0 E0            [24]  891 	push	acc
      000228 C0 E0            [24]  892 	push	acc
      00022A 74 80            [12]  893 	mov	a,#0x80
      00022C C0 E0            [24]  894 	push	acc
      00022E 74 45            [12]  895 	mov	a,#0x45
      000230 C0 E0            [24]  896 	push	acc
      000232 8C 82            [24]  897 	mov	dpl,r4
      000234 8D 83            [24]  898 	mov	dph,r5
      000236 8E F0            [24]  899 	mov	b,r6
      000238 EF               [12]  900 	mov	a,r7
      000239 12 12 6D         [24]  901 	lcall	___fsdiv
      00023C AC 82            [24]  902 	mov	r4,dpl
      00023E AD 83            [24]  903 	mov	r5,dph
      000240 AE F0            [24]  904 	mov	r6,b
      000242 FF               [12]  905 	mov	r7,a
      000243 E5 81            [12]  906 	mov	a,sp
      000245 24 FC            [12]  907 	add	a,#0xfc
      000247 F5 81            [12]  908 	mov	sp,a
      000249 74 0A            [12]  909 	mov	a,#0x0a
      00024B C0 E0            [24]  910 	push	acc
      00024D 74 D7            [12]  911 	mov	a,#0xd7
      00024F C0 E0            [24]  912 	push	acc
      000251 74 23            [12]  913 	mov	a,#0x23
      000253 C0 E0            [24]  914 	push	acc
      000255 74 3C            [12]  915 	mov	a,#0x3c
      000257 C0 E0            [24]  916 	push	acc
      000259 8C 82            [24]  917 	mov	dpl,r4
      00025B 8D 83            [24]  918 	mov	dph,r5
      00025D 8E F0            [24]  919 	mov	b,r6
      00025F EF               [12]  920 	mov	a,r7
      000260 12 0B 63         [24]  921 	lcall	___fsadd
      000263 85 82 2D         [24]  922 	mov	_AccZ,dpl
      000266 85 83 2E         [24]  923 	mov	(_AccZ + 1),dph
      000269 85 F0 2F         [24]  924 	mov	(_AccZ + 2),b
      00026C F5 30            [12]  925 	mov	(_AccZ + 3),a
      00026E E5 81            [12]  926 	mov	a,sp
      000270 24 FC            [12]  927 	add	a,#0xfc
      000272 F5 81            [12]  928 	mov	sp,a
                                    929 ;	main.c:92: AngleRoll = atanf(AccY/sqrtf(AccX*AccX + AccZ*AccZ))*1/(3.142/180);
      000274 C0 25            [24]  930 	push	_AccX
      000276 C0 26            [24]  931 	push	(_AccX + 1)
      000278 C0 27            [24]  932 	push	(_AccX + 2)
      00027A C0 28            [24]  933 	push	(_AccX + 3)
      00027C 85 25 82         [24]  934 	mov	dpl,_AccX
      00027F 85 26 83         [24]  935 	mov	dph,(_AccX + 1)
      000282 85 27 F0         [24]  936 	mov	b,(_AccX + 2)
      000285 E5 28            [12]  937 	mov	a,(_AccX + 3)
      000287 12 07 4B         [24]  938 	lcall	___fsmul
      00028A AC 82            [24]  939 	mov	r4,dpl
      00028C AD 83            [24]  940 	mov	r5,dph
      00028E AE F0            [24]  941 	mov	r6,b
      000290 FF               [12]  942 	mov	r7,a
      000291 E5 81            [12]  943 	mov	a,sp
      000293 24 FC            [12]  944 	add	a,#0xfc
      000295 F5 81            [12]  945 	mov	sp,a
      000297 C0 07            [24]  946 	push	ar7
      000299 C0 06            [24]  947 	push	ar6
      00029B C0 05            [24]  948 	push	ar5
      00029D C0 04            [24]  949 	push	ar4
      00029F C0 2D            [24]  950 	push	_AccZ
      0002A1 C0 2E            [24]  951 	push	(_AccZ + 1)
      0002A3 C0 2F            [24]  952 	push	(_AccZ + 2)
      0002A5 C0 30            [24]  953 	push	(_AccZ + 3)
      0002A7 85 2D 82         [24]  954 	mov	dpl,_AccZ
      0002AA 85 2E 83         [24]  955 	mov	dph,(_AccZ + 1)
      0002AD 85 2F F0         [24]  956 	mov	b,(_AccZ + 2)
      0002B0 E5 30            [12]  957 	mov	a,(_AccZ + 3)
      0002B2 12 07 4B         [24]  958 	lcall	___fsmul
      0002B5 A8 82            [24]  959 	mov	r0,dpl
      0002B7 A9 83            [24]  960 	mov	r1,dph
      0002B9 AA F0            [24]  961 	mov	r2,b
      0002BB FB               [12]  962 	mov	r3,a
      0002BC E5 81            [12]  963 	mov	a,sp
      0002BE 24 FC            [12]  964 	add	a,#0xfc
      0002C0 F5 81            [12]  965 	mov	sp,a
      0002C2 D0 04            [24]  966 	pop	ar4
      0002C4 D0 05            [24]  967 	pop	ar5
      0002C6 D0 06            [24]  968 	pop	ar6
      0002C8 D0 07            [24]  969 	pop	ar7
      0002CA C0 00            [24]  970 	push	ar0
      0002CC C0 01            [24]  971 	push	ar1
      0002CE C0 02            [24]  972 	push	ar2
      0002D0 C0 03            [24]  973 	push	ar3
      0002D2 8C 82            [24]  974 	mov	dpl,r4
      0002D4 8D 83            [24]  975 	mov	dph,r5
      0002D6 8E F0            [24]  976 	mov	b,r6
      0002D8 EF               [12]  977 	mov	a,r7
      0002D9 12 0B 63         [24]  978 	lcall	___fsadd
      0002DC AC 82            [24]  979 	mov	r4,dpl
      0002DE AD 83            [24]  980 	mov	r5,dph
      0002E0 AE F0            [24]  981 	mov	r6,b
      0002E2 FF               [12]  982 	mov	r7,a
      0002E3 E5 81            [12]  983 	mov	a,sp
      0002E5 24 FC            [12]  984 	add	a,#0xfc
      0002E7 F5 81            [12]  985 	mov	sp,a
      0002E9 8C 82            [24]  986 	mov	dpl,r4
      0002EB 8D 83            [24]  987 	mov	dph,r5
      0002ED 8E F0            [24]  988 	mov	b,r6
      0002EF EF               [12]  989 	mov	a,r7
      0002F0 12 08 4F         [24]  990 	lcall	_sqrtf
      0002F3 AC 82            [24]  991 	mov	r4,dpl
      0002F5 AD 83            [24]  992 	mov	r5,dph
      0002F7 AE F0            [24]  993 	mov	r6,b
      0002F9 FF               [12]  994 	mov	r7,a
      0002FA C0 04            [24]  995 	push	ar4
      0002FC C0 05            [24]  996 	push	ar5
      0002FE C0 06            [24]  997 	push	ar6
      000300 C0 07            [24]  998 	push	ar7
      000302 85 29 82         [24]  999 	mov	dpl,_AccY
      000305 85 2A 83         [24] 1000 	mov	dph,(_AccY + 1)
      000308 85 2B F0         [24] 1001 	mov	b,(_AccY + 2)
      00030B E5 2C            [12] 1002 	mov	a,(_AccY + 3)
      00030D 12 12 6D         [24] 1003 	lcall	___fsdiv
      000310 AC 82            [24] 1004 	mov	r4,dpl
      000312 AD 83            [24] 1005 	mov	r5,dph
      000314 AE F0            [24] 1006 	mov	r6,b
      000316 FF               [12] 1007 	mov	r7,a
      000317 E5 81            [12] 1008 	mov	a,sp
      000319 24 FC            [12] 1009 	add	a,#0xfc
      00031B F5 81            [12] 1010 	mov	sp,a
      00031D 8C 82            [24] 1011 	mov	dpl,r4
      00031F 8D 83            [24] 1012 	mov	dph,r5
      000321 8E F0            [24] 1013 	mov	b,r6
      000323 EF               [12] 1014 	mov	a,r7
      000324 12 0C FE         [24] 1015 	lcall	_atanf
      000327 AC 82            [24] 1016 	mov	r4,dpl
      000329 AD 83            [24] 1017 	mov	r5,dph
      00032B AE F0            [24] 1018 	mov	r6,b
      00032D FF               [12] 1019 	mov	r7,a
      00032E 74 F4            [12] 1020 	mov	a,#0xf4
      000330 C0 E0            [24] 1021 	push	acc
      000332 74 FE            [12] 1022 	mov	a,#0xfe
      000334 C0 E0            [24] 1023 	push	acc
      000336 74 8E            [12] 1024 	mov	a,#0x8e
      000338 C0 E0            [24] 1025 	push	acc
      00033A 74 3C            [12] 1026 	mov	a,#0x3c
      00033C C0 E0            [24] 1027 	push	acc
      00033E 8C 82            [24] 1028 	mov	dpl,r4
      000340 8D 83            [24] 1029 	mov	dph,r5
      000342 8E F0            [24] 1030 	mov	b,r6
      000344 EF               [12] 1031 	mov	a,r7
      000345 12 12 6D         [24] 1032 	lcall	___fsdiv
      000348 85 82 31         [24] 1033 	mov	_AngleRoll,dpl
      00034B 85 83 32         [24] 1034 	mov	(_AngleRoll + 1),dph
      00034E 85 F0 33         [24] 1035 	mov	(_AngleRoll + 2),b
      000351 F5 34            [12] 1036 	mov	(_AngleRoll + 3),a
      000353 E5 81            [12] 1037 	mov	a,sp
      000355 24 FC            [12] 1038 	add	a,#0xfc
      000357 F5 81            [12] 1039 	mov	sp,a
                                   1040 ;	main.c:93: AnglePitch = atanf(AccX/sqrtf(AccY*AccY + AccZ*AccZ))*1/(3.142/180);
      000359 C0 29            [24] 1041 	push	_AccY
      00035B C0 2A            [24] 1042 	push	(_AccY + 1)
      00035D C0 2B            [24] 1043 	push	(_AccY + 2)
      00035F C0 2C            [24] 1044 	push	(_AccY + 3)
      000361 85 29 82         [24] 1045 	mov	dpl,_AccY
      000364 85 2A 83         [24] 1046 	mov	dph,(_AccY + 1)
      000367 85 2B F0         [24] 1047 	mov	b,(_AccY + 2)
      00036A E5 2C            [12] 1048 	mov	a,(_AccY + 3)
      00036C 12 07 4B         [24] 1049 	lcall	___fsmul
      00036F AC 82            [24] 1050 	mov	r4,dpl
      000371 AD 83            [24] 1051 	mov	r5,dph
      000373 AE F0            [24] 1052 	mov	r6,b
      000375 FF               [12] 1053 	mov	r7,a
      000376 E5 81            [12] 1054 	mov	a,sp
      000378 24 FC            [12] 1055 	add	a,#0xfc
      00037A F5 81            [12] 1056 	mov	sp,a
      00037C C0 07            [24] 1057 	push	ar7
      00037E C0 06            [24] 1058 	push	ar6
      000380 C0 05            [24] 1059 	push	ar5
      000382 C0 04            [24] 1060 	push	ar4
      000384 C0 2D            [24] 1061 	push	_AccZ
      000386 C0 2E            [24] 1062 	push	(_AccZ + 1)
      000388 C0 2F            [24] 1063 	push	(_AccZ + 2)
      00038A C0 30            [24] 1064 	push	(_AccZ + 3)
      00038C 85 2D 82         [24] 1065 	mov	dpl,_AccZ
      00038F 85 2E 83         [24] 1066 	mov	dph,(_AccZ + 1)
      000392 85 2F F0         [24] 1067 	mov	b,(_AccZ + 2)
      000395 E5 30            [12] 1068 	mov	a,(_AccZ + 3)
      000397 12 07 4B         [24] 1069 	lcall	___fsmul
      00039A A8 82            [24] 1070 	mov	r0,dpl
      00039C A9 83            [24] 1071 	mov	r1,dph
      00039E AA F0            [24] 1072 	mov	r2,b
      0003A0 FB               [12] 1073 	mov	r3,a
      0003A1 E5 81            [12] 1074 	mov	a,sp
      0003A3 24 FC            [12] 1075 	add	a,#0xfc
      0003A5 F5 81            [12] 1076 	mov	sp,a
      0003A7 D0 04            [24] 1077 	pop	ar4
      0003A9 D0 05            [24] 1078 	pop	ar5
      0003AB D0 06            [24] 1079 	pop	ar6
      0003AD D0 07            [24] 1080 	pop	ar7
      0003AF C0 00            [24] 1081 	push	ar0
      0003B1 C0 01            [24] 1082 	push	ar1
      0003B3 C0 02            [24] 1083 	push	ar2
      0003B5 C0 03            [24] 1084 	push	ar3
      0003B7 8C 82            [24] 1085 	mov	dpl,r4
      0003B9 8D 83            [24] 1086 	mov	dph,r5
      0003BB 8E F0            [24] 1087 	mov	b,r6
      0003BD EF               [12] 1088 	mov	a,r7
      0003BE 12 0B 63         [24] 1089 	lcall	___fsadd
      0003C1 AC 82            [24] 1090 	mov	r4,dpl
      0003C3 AD 83            [24] 1091 	mov	r5,dph
      0003C5 AE F0            [24] 1092 	mov	r6,b
      0003C7 FF               [12] 1093 	mov	r7,a
      0003C8 E5 81            [12] 1094 	mov	a,sp
      0003CA 24 FC            [12] 1095 	add	a,#0xfc
      0003CC F5 81            [12] 1096 	mov	sp,a
      0003CE 8C 82            [24] 1097 	mov	dpl,r4
      0003D0 8D 83            [24] 1098 	mov	dph,r5
      0003D2 8E F0            [24] 1099 	mov	b,r6
      0003D4 EF               [12] 1100 	mov	a,r7
      0003D5 12 08 4F         [24] 1101 	lcall	_sqrtf
      0003D8 AC 82            [24] 1102 	mov	r4,dpl
      0003DA AD 83            [24] 1103 	mov	r5,dph
      0003DC AE F0            [24] 1104 	mov	r6,b
      0003DE FF               [12] 1105 	mov	r7,a
      0003DF C0 04            [24] 1106 	push	ar4
      0003E1 C0 05            [24] 1107 	push	ar5
      0003E3 C0 06            [24] 1108 	push	ar6
      0003E5 C0 07            [24] 1109 	push	ar7
      0003E7 85 25 82         [24] 1110 	mov	dpl,_AccX
      0003EA 85 26 83         [24] 1111 	mov	dph,(_AccX + 1)
      0003ED 85 27 F0         [24] 1112 	mov	b,(_AccX + 2)
      0003F0 E5 28            [12] 1113 	mov	a,(_AccX + 3)
      0003F2 12 12 6D         [24] 1114 	lcall	___fsdiv
      0003F5 AC 82            [24] 1115 	mov	r4,dpl
      0003F7 AD 83            [24] 1116 	mov	r5,dph
      0003F9 AE F0            [24] 1117 	mov	r6,b
      0003FB FF               [12] 1118 	mov	r7,a
      0003FC E5 81            [12] 1119 	mov	a,sp
      0003FE 24 FC            [12] 1120 	add	a,#0xfc
      000400 F5 81            [12] 1121 	mov	sp,a
      000402 8C 82            [24] 1122 	mov	dpl,r4
      000404 8D 83            [24] 1123 	mov	dph,r5
      000406 8E F0            [24] 1124 	mov	b,r6
      000408 EF               [12] 1125 	mov	a,r7
      000409 12 0C FE         [24] 1126 	lcall	_atanf
      00040C AC 82            [24] 1127 	mov	r4,dpl
      00040E AD 83            [24] 1128 	mov	r5,dph
      000410 AE F0            [24] 1129 	mov	r6,b
      000412 FF               [12] 1130 	mov	r7,a
      000413 74 F4            [12] 1131 	mov	a,#0xf4
      000415 C0 E0            [24] 1132 	push	acc
      000417 74 FE            [12] 1133 	mov	a,#0xfe
      000419 C0 E0            [24] 1134 	push	acc
      00041B 74 8E            [12] 1135 	mov	a,#0x8e
      00041D C0 E0            [24] 1136 	push	acc
      00041F 74 3C            [12] 1137 	mov	a,#0x3c
      000421 C0 E0            [24] 1138 	push	acc
      000423 8C 82            [24] 1139 	mov	dpl,r4
      000425 8D 83            [24] 1140 	mov	dph,r5
      000427 8E F0            [24] 1141 	mov	b,r6
      000429 EF               [12] 1142 	mov	a,r7
      00042A 12 12 6D         [24] 1143 	lcall	___fsdiv
      00042D 85 82 35         [24] 1144 	mov	_AnglePitch,dpl
      000430 85 83 36         [24] 1145 	mov	(_AnglePitch + 1),dph
      000433 85 F0 37         [24] 1146 	mov	(_AnglePitch + 2),b
      000436 F5 38            [12] 1147 	mov	(_AnglePitch + 3),a
      000438 E5 81            [12] 1148 	mov	a,sp
      00043A 24 FC            [12] 1149 	add	a,#0xfc
      00043C F5 81            [12] 1150 	mov	sp,a
                                   1151 ;	main.c:97: AngleRoll = fabsf(AngleRoll);
      00043E 85 31 82         [24] 1152 	mov	dpl,_AngleRoll
      000441 85 32 83         [24] 1153 	mov	dph,(_AngleRoll + 1)
      000444 85 33 F0         [24] 1154 	mov	b,(_AngleRoll + 2)
      000447 E5 34            [12] 1155 	mov	a,(_AngleRoll + 3)
      000449 12 0B BC         [24] 1156 	lcall	_fabsf
      00044C 85 82 31         [24] 1157 	mov	_AngleRoll,dpl
      00044F 85 83 32         [24] 1158 	mov	(_AngleRoll + 1),dph
      000452 85 F0 33         [24] 1159 	mov	(_AngleRoll + 2),b
      000455 F5 34            [12] 1160 	mov	(_AngleRoll + 3),a
                                   1161 ;	main.c:98: AnglePitch = fabsf(AnglePitch);
      000457 85 35 82         [24] 1162 	mov	dpl,_AnglePitch
      00045A 85 36 83         [24] 1163 	mov	dph,(_AnglePitch + 1)
      00045D 85 37 F0         [24] 1164 	mov	b,(_AnglePitch + 2)
      000460 E5 38            [12] 1165 	mov	a,(_AnglePitch + 3)
      000462 12 0B BC         [24] 1166 	lcall	_fabsf
      000465 85 82 35         [24] 1167 	mov	_AnglePitch,dpl
      000468 85 83 36         [24] 1168 	mov	(_AnglePitch + 1),dph
      00046B 85 F0 37         [24] 1169 	mov	(_AnglePitch + 2),b
      00046E F5 38            [12] 1170 	mov	(_AnglePitch + 3),a
                                   1171 ;	main.c:99: }
      000470 22               [24] 1172 	ret
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'main'
                                   1175 ;------------------------------------------------------------
                                   1176 ;	main.c:101: void main(void)
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function main
                                   1179 ;	-----------------------------------------
      000471                       1180 _main:
                                   1181 ;	main.c:104: LED_PORT;
      000471 53 B1 FE         [24] 1182 	anl	_P0M1,#0xfe
      000474 43 B2 01         [24] 1183 	orl	_P0M2,#0x01
                                   1184 ;	main.c:105: LED = 0;
                                   1185 ;	assignBit
      000477 C2 80            [12] 1186 	clr	_P00
                                   1187 ;	main.c:111: while (1) {
      000479                       1188 00102$:
                                   1189 ;	main.c:115: Delay_Ms(1000);
      000479 90 03 E8         [24] 1190 	mov	dptr,#0x03e8
      00047C 12 05 CE         [24] 1191 	lcall	_Delay_Ms
                                   1192 ;	main.c:116: LED = 1;
                                   1193 ;	assignBit
      00047F D2 80            [12] 1194 	setb	_P00
                                   1195 ;	main.c:117: Delay_Ms(1000);
      000481 90 03 E8         [24] 1196 	mov	dptr,#0x03e8
      000484 12 05 CE         [24] 1197 	lcall	_Delay_Ms
                                   1198 ;	main.c:118: LED = 0;
                                   1199 ;	assignBit
      000487 C2 80            [12] 1200 	clr	_P00
                                   1201 ;	main.c:129: }
      000489 80 EE            [24] 1202 	sjmp	00102$
                                   1203 	.area CSEG    (CODE)
                                   1204 	.area CONST   (CODE)
                                   1205 	.area XINIT   (CODE)
                                   1206 	.area CABS    (ABS,CODE)
