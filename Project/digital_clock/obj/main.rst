                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sun May 18 19:17:46 2025
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _readTime
                                     14 	.globl _writeDay
                                     15 	.globl _writeTime
                                     16 	.globl _bcd_to_decimal
                                     17 	.globl _decimal_to_bcd
                                     18 	.globl _DS18x20_ReadTemp
                                     19 	.globl _data_read
                                     20 	.globl _data_write
                                     21 	.globl _i2c_init
                                     22 	.globl _OneWireReadByte
                                     23 	.globl _OneWireWriteByte
                                     24 	.globl _OneWireReset
                                     25 	.globl _DelayT0
                                     26 	.globl _DelayT0_Init
                                     27 	.globl _TM1628_display_segments
                                     28 	.globl _TM1628_INIT
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
                                    261 	.globl _writeDay_PARM_2
                                    262 	.globl _writeTime_PARM_3
                                    263 	.globl _writeTime_PARM_2
                                    264 	.globl _u8Time
                                    265 	.globl _second
                                    266 	.globl _minute
                                    267 	.globl _hour
                                    268 	.globl _temp
                                    269 	.globl _debug2
                                    270 	.globl _debug
                                    271 	.globl _conf
                                    272 	.globl _Th
                                    273 	.globl _Tl
                                    274 	.globl _MSB
                                    275 	.globl _LSB
                                    276 	.globl _a
                                    277 	.globl _i
                                    278 	.globl _buffer
                                    279 ;--------------------------------------------------------
                                    280 ; special function registers
                                    281 ;--------------------------------------------------------
                                    282 	.area RSEG    (ABS,DATA)
      000000                        283 	.org 0x0000
                           000080   284 _P0	=	0x0080
                           000081   285 _SP	=	0x0081
                           000082   286 _DPL	=	0x0082
                           000083   287 _DPH	=	0x0083
                           000084   288 _RCTRIM0	=	0x0084
                           000085   289 _RCTRIM1	=	0x0085
                           000086   290 _RWK	=	0x0086
                           000087   291 _PCON	=	0x0087
                           000088   292 _TCON	=	0x0088
                           000089   293 _TMOD	=	0x0089
                           00008A   294 _TL0	=	0x008a
                           00008B   295 _TL1	=	0x008b
                           00008C   296 _TH0	=	0x008c
                           00008D   297 _TH1	=	0x008d
                           00008E   298 _CKCON	=	0x008e
                           00008F   299 _WKCON	=	0x008f
                           000090   300 _P1	=	0x0090
                           000091   301 _SFRS	=	0x0091
                           000092   302 _CAPCON0	=	0x0092
                           000093   303 _CAPCON1	=	0x0093
                           000094   304 _CAPCON2	=	0x0094
                           000095   305 _CKDIV	=	0x0095
                           000096   306 _CKSWT	=	0x0096
                           000097   307 _CKEN	=	0x0097
                           000098   308 _SCON	=	0x0098
                           000099   309 _SBUF	=	0x0099
                           00009A   310 _SBUF_1	=	0x009a
                           00009B   311 _EIE	=	0x009b
                           00009C   312 _EIE1	=	0x009c
                           00009F   313 _CHPCON	=	0x009f
                           0000A0   314 _P2	=	0x00a0
                           0000A2   315 _AUXR1	=	0x00a2
                           0000A3   316 _BODCON0	=	0x00a3
                           0000A4   317 _IAPTRG	=	0x00a4
                           0000A5   318 _IAPUEN	=	0x00a5
                           0000A6   319 _IAPAL	=	0x00a6
                           0000A7   320 _IAPAH	=	0x00a7
                           0000A8   321 _IE	=	0x00a8
                           0000A9   322 _SADDR	=	0x00a9
                           0000AA   323 _WDCON	=	0x00aa
                           0000AB   324 _BODCON1	=	0x00ab
                           0000AC   325 _P3M1	=	0x00ac
                           0000AC   326 _P3S	=	0x00ac
                           0000AD   327 _P3M2	=	0x00ad
                           0000AD   328 _P3SR	=	0x00ad
                           0000AE   329 _IAPFD	=	0x00ae
                           0000AF   330 _IAPCN	=	0x00af
                           0000B0   331 _P3	=	0x00b0
                           0000B1   332 _P0M1	=	0x00b1
                           0000B1   333 _P0S	=	0x00b1
                           0000B2   334 _P0M2	=	0x00b2
                           0000B2   335 _P0SR	=	0x00b2
                           0000B3   336 _P1M1	=	0x00b3
                           0000B3   337 _P1S	=	0x00b3
                           0000B4   338 _P1M2	=	0x00b4
                           0000B4   339 _P1SR	=	0x00b4
                           0000B5   340 _P2S	=	0x00b5
                           0000B7   341 _IPH	=	0x00b7
                           0000B7   342 _PWMINTC	=	0x00b7
                           0000B8   343 _IP	=	0x00b8
                           0000B9   344 _SADEN	=	0x00b9
                           0000BA   345 _SADEN_1	=	0x00ba
                           0000BB   346 _SADDR_1	=	0x00bb
                           0000BC   347 _I2DAT	=	0x00bc
                           0000BD   348 _I2STAT	=	0x00bd
                           0000BE   349 _I2CLK	=	0x00be
                           0000BF   350 _I2TOC	=	0x00bf
                           0000C0   351 _I2CON	=	0x00c0
                           0000C1   352 _I2ADDR	=	0x00c1
                           0000C2   353 _ADCRL	=	0x00c2
                           0000C3   354 _ADCRH	=	0x00c3
                           0000C4   355 _T3CON	=	0x00c4
                           0000C4   356 _PWM4H	=	0x00c4
                           0000C5   357 _RL3	=	0x00c5
                           0000C5   358 _PWM5H	=	0x00c5
                           0000C6   359 _RH3	=	0x00c6
                           0000C6   360 _PIOCON1	=	0x00c6
                           0000C7   361 _TA	=	0x00c7
                           0000C8   362 _T2CON	=	0x00c8
                           0000C9   363 _T2MOD	=	0x00c9
                           0000CA   364 _RCMP2L	=	0x00ca
                           0000CB   365 _RCMP2H	=	0x00cb
                           0000CC   366 _TL2	=	0x00cc
                           0000CC   367 _PWM4L	=	0x00cc
                           0000CD   368 _TH2	=	0x00cd
                           0000CD   369 _PWM5L	=	0x00cd
                           0000CE   370 _ADCMPL	=	0x00ce
                           0000CF   371 _ADCMPH	=	0x00cf
                           0000D0   372 _PSW	=	0x00d0
                           0000D1   373 _PWMPH	=	0x00d1
                           0000D2   374 _PWM0H	=	0x00d2
                           0000D3   375 _PWM1H	=	0x00d3
                           0000D4   376 _PWM2H	=	0x00d4
                           0000D5   377 _PWM3H	=	0x00d5
                           0000D6   378 _PNP	=	0x00d6
                           0000D7   379 _FBD	=	0x00d7
                           0000D8   380 _PWMCON0	=	0x00d8
                           0000D9   381 _PWMPL	=	0x00d9
                           0000DA   382 _PWM0L	=	0x00da
                           0000DB   383 _PWM1L	=	0x00db
                           0000DC   384 _PWM2L	=	0x00dc
                           0000DD   385 _PWM3L	=	0x00dd
                           0000DE   386 _PIOCON0	=	0x00de
                           0000DF   387 _PWMCON1	=	0x00df
                           0000E0   388 _ACC	=	0x00e0
                           0000E1   389 _ADCCON1	=	0x00e1
                           0000E2   390 _ADCCON2	=	0x00e2
                           0000E3   391 _ADCDLY	=	0x00e3
                           0000E4   392 _C0L	=	0x00e4
                           0000E5   393 _C0H	=	0x00e5
                           0000E6   394 _C1L	=	0x00e6
                           0000E7   395 _C1H	=	0x00e7
                           0000E8   396 _ADCCON0	=	0x00e8
                           0000E9   397 _PICON	=	0x00e9
                           0000EA   398 _PINEN	=	0x00ea
                           0000EB   399 _PIPEN	=	0x00eb
                           0000EC   400 _PIF	=	0x00ec
                           0000ED   401 _C2L	=	0x00ed
                           0000EE   402 _C2H	=	0x00ee
                           0000EF   403 _EIP	=	0x00ef
                           0000F0   404 _B	=	0x00f0
                           0000F1   405 _CAPCON3	=	0x00f1
                           0000F2   406 _CAPCON4	=	0x00f2
                           0000F3   407 _SPCR	=	0x00f3
                           0000F3   408 _SPCR2	=	0x00f3
                           0000F4   409 _SPSR	=	0x00f4
                           0000F5   410 _SPDR	=	0x00f5
                           0000F6   411 _AINDIDS	=	0x00f6
                           0000F7   412 _EIPH	=	0x00f7
                           0000F8   413 _SCON_1	=	0x00f8
                           0000F9   414 _PDTEN	=	0x00f9
                           0000FA   415 _PDTCNT	=	0x00fa
                           0000FB   416 _PMEN	=	0x00fb
                           0000FC   417 _PMD	=	0x00fc
                           0000FE   418 _EIP1	=	0x00fe
                           0000FF   419 _EIPH1	=	0x00ff
                                    420 ;--------------------------------------------------------
                                    421 ; special function bits
                                    422 ;--------------------------------------------------------
                                    423 	.area RSEG    (ABS,DATA)
      000000                        424 	.org 0x0000
                           0000FF   425 _SM0_1	=	0x00ff
                           0000FF   426 _FE_1	=	0x00ff
                           0000FE   427 _SM1_1	=	0x00fe
                           0000FD   428 _SM2_1	=	0x00fd
                           0000FC   429 _REN_1	=	0x00fc
                           0000FB   430 _TB8_1	=	0x00fb
                           0000FA   431 _RB8_1	=	0x00fa
                           0000F9   432 _TI_1	=	0x00f9
                           0000F8   433 _RI_1	=	0x00f8
                           0000EF   434 _ADCF	=	0x00ef
                           0000EE   435 _ADCS	=	0x00ee
                           0000ED   436 _ETGSEL1	=	0x00ed
                           0000EC   437 _ETGSEL0	=	0x00ec
                           0000EB   438 _ADCHS3	=	0x00eb
                           0000EA   439 _ADCHS2	=	0x00ea
                           0000E9   440 _ADCHS1	=	0x00e9
                           0000E8   441 _ADCHS0	=	0x00e8
                           0000DF   442 _PWMRUN	=	0x00df
                           0000DE   443 _LOAD	=	0x00de
                           0000DD   444 _PWMF	=	0x00dd
                           0000DC   445 _CLRPWM	=	0x00dc
                           0000D7   446 _CY	=	0x00d7
                           0000D6   447 _AC	=	0x00d6
                           0000D5   448 _F0	=	0x00d5
                           0000D4   449 _RS1	=	0x00d4
                           0000D3   450 _RS0	=	0x00d3
                           0000D2   451 _OV	=	0x00d2
                           0000D0   452 _P	=	0x00d0
                           0000CF   453 _TF2	=	0x00cf
                           0000CA   454 _TR2	=	0x00ca
                           0000C8   455 _CM_RL2	=	0x00c8
                           0000C6   456 _I2CEN	=	0x00c6
                           0000C5   457 _STA	=	0x00c5
                           0000C4   458 _STO	=	0x00c4
                           0000C3   459 _SI	=	0x00c3
                           0000C2   460 _AA	=	0x00c2
                           0000C0   461 _I2CPX	=	0x00c0
                           0000BE   462 _PADC	=	0x00be
                           0000BD   463 _PBOD	=	0x00bd
                           0000BC   464 _PS	=	0x00bc
                           0000BB   465 _PT1	=	0x00bb
                           0000BA   466 _PX1	=	0x00ba
                           0000B9   467 _PT0	=	0x00b9
                           0000B8   468 _PX0	=	0x00b8
                           0000B0   469 _P30	=	0x00b0
                           0000AF   470 _EA	=	0x00af
                           0000AE   471 _EADC	=	0x00ae
                           0000AD   472 _EBOD	=	0x00ad
                           0000AC   473 _ES	=	0x00ac
                           0000AB   474 _ET1	=	0x00ab
                           0000AA   475 _EX1	=	0x00aa
                           0000A9   476 _ET0	=	0x00a9
                           0000A8   477 _EX0	=	0x00a8
                           0000A0   478 _P20	=	0x00a0
                           00009F   479 _SM0	=	0x009f
                           00009F   480 _FE	=	0x009f
                           00009E   481 _SM1	=	0x009e
                           00009D   482 _SM2	=	0x009d
                           00009C   483 _REN	=	0x009c
                           00009B   484 _TB8	=	0x009b
                           00009A   485 _RB8	=	0x009a
                           000099   486 _TI	=	0x0099
                           000098   487 _RI	=	0x0098
                           000097   488 _P17	=	0x0097
                           000096   489 _P16	=	0x0096
                           000096   490 _TXD_1	=	0x0096
                           000095   491 _P15	=	0x0095
                           000094   492 _P14	=	0x0094
                           000094   493 _SDA	=	0x0094
                           000093   494 _P13	=	0x0093
                           000093   495 _SCL	=	0x0093
                           000092   496 _P12	=	0x0092
                           000091   497 _P11	=	0x0091
                           000090   498 _P10	=	0x0090
                           00008F   499 _TF1	=	0x008f
                           00008E   500 _TR1	=	0x008e
                           00008D   501 _TF0	=	0x008d
                           00008C   502 _TR0	=	0x008c
                           00008B   503 _IE1	=	0x008b
                           00008A   504 _IT1	=	0x008a
                           000089   505 _IE0	=	0x0089
                           000088   506 _IT0	=	0x0088
                           000087   507 _P07	=	0x0087
                           000087   508 _RXD	=	0x0087
                           000086   509 _P06	=	0x0086
                           000086   510 _TXD	=	0x0086
                           000085   511 _P05	=	0x0085
                           000084   512 _P04	=	0x0084
                           000084   513 _STADC	=	0x0084
                           000083   514 _P03	=	0x0083
                           000082   515 _P02	=	0x0082
                           000082   516 _RXD_1	=	0x0082
                           000081   517 _P01	=	0x0081
                           000081   518 _MISO	=	0x0081
                           000080   519 _P00	=	0x0080
                           000080   520 _MOSI	=	0x0080
                                    521 ;--------------------------------------------------------
                                    522 ; overlayable register banks
                                    523 ;--------------------------------------------------------
                                    524 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        525 	.ds 8
                                    526 ;--------------------------------------------------------
                                    527 ; internal ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area DSEG    (DATA)
      000008                        530 _buffer::
      000008                        531 	.ds 14
      000016                        532 _i::
      000016                        533 	.ds 2
      000018                        534 _a::
      000018                        535 	.ds 2
      00001A                        536 _LSB::
      00001A                        537 	.ds 1
      00001B                        538 _MSB::
      00001B                        539 	.ds 1
      00001C                        540 _Tl::
      00001C                        541 	.ds 1
      00001D                        542 _Th::
      00001D                        543 	.ds 1
      00001E                        544 _conf::
      00001E                        545 	.ds 1
      00001F                        546 _debug::
      00001F                        547 	.ds 1
      000020                        548 _debug2::
      000020                        549 	.ds 1
      000021                        550 _temp::
      000021                        551 	.ds 4
      000025                        552 _hour::
      000025                        553 	.ds 1
      000026                        554 _minute::
      000026                        555 	.ds 1
      000027                        556 _second::
      000027                        557 	.ds 1
      000028                        558 _u8Time::
      000028                        559 	.ds 6
      00002E                        560 _writeTime_PARM_2:
      00002E                        561 	.ds 1
      00002F                        562 _writeTime_PARM_3:
      00002F                        563 	.ds 1
      000030                        564 _writeTime_u8Data_1_26:
      000030                        565 	.ds 3
      000033                        566 _writeDay_PARM_2:
      000033                        567 	.ds 1
      000034                        568 _writeDay_u8Data_1_28:
      000034                        569 	.ds 2
                                    570 ;--------------------------------------------------------
                                    571 ; overlayable items in internal ram 
                                    572 ;--------------------------------------------------------
                                    573 	.area	OSEG    (OVR,DATA)
                                    574 	.area	OSEG    (OVR,DATA)
                                    575 ;--------------------------------------------------------
                                    576 ; Stack segment in internal ram 
                                    577 ;--------------------------------------------------------
                                    578 	.area	SSEG
      000048                        579 __start__stack:
      000048                        580 	.ds	1
                                    581 
                                    582 ;--------------------------------------------------------
                                    583 ; indirectly addressable internal ram data
                                    584 ;--------------------------------------------------------
                                    585 	.area ISEG    (DATA)
                                    586 ;--------------------------------------------------------
                                    587 ; absolute internal ram data
                                    588 ;--------------------------------------------------------
                                    589 	.area IABS    (ABS,DATA)
                                    590 	.area IABS    (ABS,DATA)
                                    591 ;--------------------------------------------------------
                                    592 ; bit data
                                    593 ;--------------------------------------------------------
                                    594 	.area BSEG    (BIT)
                                    595 ;--------------------------------------------------------
                                    596 ; paged external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area PSEG    (PAG,XDATA)
                                    599 ;--------------------------------------------------------
                                    600 ; external ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XSEG    (XDATA)
                                    603 ;--------------------------------------------------------
                                    604 ; absolute external ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area XABS    (ABS,XDATA)
                                    607 ;--------------------------------------------------------
                                    608 ; external initialized ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area XISEG   (XDATA)
                                    611 	.area HOME    (CODE)
                                    612 	.area GSINIT0 (CODE)
                                    613 	.area GSINIT1 (CODE)
                                    614 	.area GSINIT2 (CODE)
                                    615 	.area GSINIT3 (CODE)
                                    616 	.area GSINIT4 (CODE)
                                    617 	.area GSINIT5 (CODE)
                                    618 	.area GSINIT  (CODE)
                                    619 	.area GSFINAL (CODE)
                                    620 	.area CSEG    (CODE)
                                    621 ;--------------------------------------------------------
                                    622 ; interrupt vector 
                                    623 ;--------------------------------------------------------
                                    624 	.area HOME    (CODE)
      000000                        625 __interrupt_vect:
      000000 02 00 06         [24]  626 	ljmp	__sdcc_gsinit_startup
                                    627 ;--------------------------------------------------------
                                    628 ; global & static initialisations
                                    629 ;--------------------------------------------------------
                                    630 	.area HOME    (CODE)
                                    631 	.area GSINIT  (CODE)
                                    632 	.area GSFINAL (CODE)
                                    633 	.area GSINIT  (CODE)
                                    634 	.globl __sdcc_gsinit_startup
                                    635 	.globl __sdcc_program_startup
                                    636 	.globl __start__stack
                                    637 	.globl __mcs51_genXINIT
                                    638 	.globl __mcs51_genXRAMCLEAR
                                    639 	.globl __mcs51_genRAMCLEAR
                                    640 ;	main.c:9: unsigned char buffer[14]= {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
      00005F 75 08 00         [24]  641 	mov	_buffer,#0x00
      000062 75 09 00         [24]  642 	mov	(_buffer + 0x0001),#0x00
      000065 75 0A 00         [24]  643 	mov	(_buffer + 0x0002),#0x00
      000068 75 0B 00         [24]  644 	mov	(_buffer + 0x0003),#0x00
      00006B 75 0C 00         [24]  645 	mov	(_buffer + 0x0004),#0x00
      00006E 75 0D 00         [24]  646 	mov	(_buffer + 0x0005),#0x00
      000071 75 0E 00         [24]  647 	mov	(_buffer + 0x0006),#0x00
      000074 75 0F 00         [24]  648 	mov	(_buffer + 0x0007),#0x00
      000077 75 10 00         [24]  649 	mov	(_buffer + 0x0008),#0x00
      00007A 75 11 00         [24]  650 	mov	(_buffer + 0x0009),#0x00
      00007D 75 12 00         [24]  651 	mov	(_buffer + 0x000a),#0x00
      000080 75 13 00         [24]  652 	mov	(_buffer + 0x000b),#0x00
      000083 75 14 00         [24]  653 	mov	(_buffer + 0x000c),#0x00
      000086 75 15 00         [24]  654 	mov	(_buffer + 0x000d),#0x00
                                    655 ;	main.c:10: uint16_t i =0;
      000089 E4               [12]  656 	clr	a
      00008A F5 16            [12]  657 	mov	_i,a
      00008C F5 17            [12]  658 	mov	(_i + 1),a
                                    659 ;	main.c:11: uint16_t a = 0;
      00008E F5 18            [12]  660 	mov	_a,a
      000090 F5 19            [12]  661 	mov	(_a + 1),a
                                    662 ;	main.c:45: uint8_t u8Time[6] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
                                    663 ;	1-genFromRTrack replaced	mov	_u8Time,#0x00
      000092 F5 28            [12]  664 	mov	_u8Time,a
                                    665 ;	1-genFromRTrack replaced	mov	(_u8Time + 0x0001),#0x00
      000094 F5 29            [12]  666 	mov	(_u8Time + 0x0001),a
                                    667 ;	1-genFromRTrack replaced	mov	(_u8Time + 0x0002),#0x00
      000096 F5 2A            [12]  668 	mov	(_u8Time + 0x0002),a
                                    669 ;	1-genFromRTrack replaced	mov	(_u8Time + 0x0003),#0x00
      000098 F5 2B            [12]  670 	mov	(_u8Time + 0x0003),a
                                    671 ;	1-genFromRTrack replaced	mov	(_u8Time + 0x0004),#0x00
      00009A F5 2C            [12]  672 	mov	(_u8Time + 0x0004),a
                                    673 ;	1-genFromRTrack replaced	mov	(_u8Time + 0x0005),#0x00
      00009C F5 2D            [12]  674 	mov	(_u8Time + 0x0005),a
                                    675 	.area GSFINAL (CODE)
      0000A4 02 00 03         [24]  676 	ljmp	__sdcc_program_startup
                                    677 ;--------------------------------------------------------
                                    678 ; Home
                                    679 ;--------------------------------------------------------
                                    680 	.area HOME    (CODE)
                                    681 	.area HOME    (CODE)
      000003                        682 __sdcc_program_startup:
      000003 02 02 18         [24]  683 	ljmp	_main
                                    684 ;	return from main will return to caller
                                    685 ;--------------------------------------------------------
                                    686 ; code
                                    687 ;--------------------------------------------------------
                                    688 	.area CSEG    (CODE)
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'DS18x20_ReadTemp'
                                    691 ;------------------------------------------------------------
                                    692 ;	main.c:22: void DS18x20_ReadTemp(void) {
                                    693 ;	-----------------------------------------
                                    694 ;	 function DS18x20_ReadTemp
                                    695 ;	-----------------------------------------
      0000A7                        696 _DS18x20_ReadTemp:
                           000007   697 	ar7 = 0x07
                           000006   698 	ar6 = 0x06
                           000005   699 	ar5 = 0x05
                           000004   700 	ar4 = 0x04
                           000003   701 	ar3 = 0x03
                           000002   702 	ar2 = 0x02
                           000001   703 	ar1 = 0x01
                           000000   704 	ar0 = 0x00
                                    705 ;	main.c:23: debug = OneWireReset();             // Reset Pulse
      0000A7 12 04 A9         [24]  706 	lcall	_OneWireReset
      0000AA AE 82            [24]  707 	mov	r6,dpl
      0000AC 8E 1F            [24]  708 	mov	_debug,r6
                                    709 ;	main.c:24: OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command (CCh)
      0000AE 75 82 CC         [24]  710 	mov	dpl,#0xCC
      0000B1 12 05 37         [24]  711 	lcall	_OneWireWriteByte
                                    712 ;	main.c:25: OneWireWriteByte(CONVERT_T);        // Convert T command (44h)
      0000B4 75 82 44         [24]  713 	mov	dpl,#0x44
      0000B7 12 05 37         [24]  714 	lcall	_OneWireWriteByte
                                    715 ;	main.c:27: while( OneWireRead() == 0);              // DQ will hold line low while making measurement
      0000BA                        716 00101$:
      0000BA 12 04 A2         [24]  717 	lcall	_OneWireRead
      0000BD E5 82            [12]  718 	mov	a,dpl
      0000BF 85 83 F0         [24]  719 	mov	b,dph
      0000C2 45 F0            [12]  720 	orl	a,b
      0000C4 60 F4            [24]  721 	jz	00101$
                                    722 ;	main.c:28: debug2 = OneWireReset();             // Start new command sequence
      0000C6 12 04 A9         [24]  723 	lcall	_OneWireReset
      0000C9 AE 82            [24]  724 	mov	r6,dpl
      0000CB 8E 20            [24]  725 	mov	_debug2,r6
                                    726 ;	main.c:29: OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command
      0000CD 75 82 CC         [24]  727 	mov	dpl,#0xCC
      0000D0 12 05 37         [24]  728 	lcall	_OneWireWriteByte
                                    729 ;	main.c:30: OneWireWriteByte(READ_SCRATCHPAD);  // Read Scratchpad (BEh) - 15 bits
      0000D3 75 82 BE         [24]  730 	mov	dpl,#0xBE
      0000D6 12 05 37         [24]  731 	lcall	_OneWireWriteByte
                                    732 ;	main.c:31: LSB = OneWireReadByte();
      0000D9 12 05 56         [24]  733 	lcall	_OneWireReadByte
      0000DC 85 82 1A         [24]  734 	mov	_LSB,dpl
                                    735 ;	main.c:32: MSB = OneWireReadByte();
      0000DF 12 05 56         [24]  736 	lcall	_OneWireReadByte
      0000E2 85 82 1B         [24]  737 	mov	_MSB,dpl
                                    738 ;	main.c:33: Tl = OneWireReadByte();
      0000E5 12 05 56         [24]  739 	lcall	_OneWireReadByte
      0000E8 85 82 1C         [24]  740 	mov	_Tl,dpl
                                    741 ;	main.c:34: Th = OneWireReadByte();
      0000EB 12 05 56         [24]  742 	lcall	_OneWireReadByte
      0000EE 85 82 1D         [24]  743 	mov	_Th,dpl
                                    744 ;	main.c:35: conf = OneWireReadByte();
      0000F1 12 05 56         [24]  745 	lcall	_OneWireReadByte
      0000F4 85 82 1E         [24]  746 	mov	_conf,dpl
                                    747 ;	main.c:37: OneWireReset();                       // Stop Reading
      0000F7 12 04 A9         [24]  748 	lcall	_OneWireReset
                                    749 ;	main.c:38: temp = ((MSB << 8) | LSB) / 16.0;
      0000FA AF 1B            [24]  750 	mov	r7,_MSB
      0000FC 7E 00            [12]  751 	mov	r6,#0x00
      0000FE AC 1A            [24]  752 	mov	r4,_LSB
      000100 7D 00            [12]  753 	mov	r5,#0x00
      000102 EC               [12]  754 	mov	a,r4
      000103 4E               [12]  755 	orl	a,r6
      000104 F5 82            [12]  756 	mov	dpl,a
      000106 ED               [12]  757 	mov	a,r5
      000107 4F               [12]  758 	orl	a,r7
      000108 F5 83            [12]  759 	mov	dph,a
      00010A 12 08 26         [24]  760 	lcall	___sint2fs
      00010D AC 82            [24]  761 	mov	r4,dpl
      00010F AD 83            [24]  762 	mov	r5,dph
      000111 AE F0            [24]  763 	mov	r6,b
      000113 FF               [12]  764 	mov	r7,a
      000114 E4               [12]  765 	clr	a
      000115 C0 E0            [24]  766 	push	acc
      000117 C0 E0            [24]  767 	push	acc
      000119 74 80            [12]  768 	mov	a,#0x80
      00011B C0 E0            [24]  769 	push	acc
      00011D 74 41            [12]  770 	mov	a,#0x41
      00011F C0 E0            [24]  771 	push	acc
      000121 8C 82            [24]  772 	mov	dpl,r4
      000123 8D 83            [24]  773 	mov	dph,r5
      000125 8E F0            [24]  774 	mov	b,r6
      000127 EF               [12]  775 	mov	a,r7
      000128 12 08 33         [24]  776 	lcall	___fsdiv
      00012B 85 82 21         [24]  777 	mov	_temp,dpl
      00012E 85 83 22         [24]  778 	mov	(_temp + 1),dph
      000131 85 F0 23         [24]  779 	mov	(_temp + 2),b
      000134 F5 24            [12]  780 	mov	(_temp + 3),a
      000136 E5 81            [12]  781 	mov	a,sp
      000138 24 FC            [12]  782 	add	a,#0xfc
      00013A F5 81            [12]  783 	mov	sp,a
      00013C 22               [24]  784 	ret
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'decimal_to_bcd'
                                    787 ;------------------------------------------------------------
                                    788 ;value                     Allocated to registers r7 
                                    789 ;hex                       Allocated to registers 
                                    790 ;------------------------------------------------------------
                                    791 ;	main.c:47: uint8_t decimal_to_bcd(uint8_t value)
                                    792 ;	-----------------------------------------
                                    793 ;	 function decimal_to_bcd
                                    794 ;	-----------------------------------------
      00013D                        795 _decimal_to_bcd:
      00013D AF 82            [24]  796 	mov	r7,dpl
                                    797 ;	main.c:50: hex = (((value / 10) << 4) + (value % 10));
      00013F 75 F0 0A         [24]  798 	mov	b,#0x0A
      000142 EF               [12]  799 	mov	a,r7
      000143 84               [48]  800 	div	ab
      000144 C4               [12]  801 	swap	a
      000145 54 F0            [12]  802 	anl	a,#0xF0
      000147 FE               [12]  803 	mov	r6,a
      000148 75 F0 0A         [24]  804 	mov	b,#0x0A
      00014B EF               [12]  805 	mov	a,r7
      00014C 84               [48]  806 	div	ab
      00014D E5 F0            [12]  807 	mov	a,b
      00014F 2E               [12]  808 	add	a,r6
      000150 F5 82            [12]  809 	mov	dpl,a
                                    810 ;	main.c:51: return hex;
      000152 22               [24]  811 	ret
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'bcd_to_decimal'
                                    814 ;------------------------------------------------------------
                                    815 ;data                      Allocated to registers r7 
                                    816 ;temp                      Allocated to registers r6 
                                    817 ;------------------------------------------------------------
                                    818 ;	main.c:53: uint8_t bcd_to_decimal(uint8_t data){
                                    819 ;	-----------------------------------------
                                    820 ;	 function bcd_to_decimal
                                    821 ;	-----------------------------------------
      000153                        822 _bcd_to_decimal:
                                    823 ;	main.c:56: temp = (data >> 4) & 0x0F;
      000153 E5 82            [12]  824 	mov	a,dpl
      000155 FF               [12]  825 	mov	r7,a
      000156 C4               [12]  826 	swap	a
      000157 54 0F            [12]  827 	anl	a,#0x0F
      000159 FE               [12]  828 	mov	r6,a
      00015A 53 06 0F         [24]  829 	anl	ar6,#0x0F
                                    830 ;	main.c:57: data = data & 0x0F;
      00015D 53 07 0F         [24]  831 	anl	ar7,#0x0F
                                    832 ;	main.c:58: return ((temp*10)+data);
      000160 EE               [12]  833 	mov	a,r6
      000161 75 F0 0A         [24]  834 	mov	b,#0x0A
      000164 A4               [48]  835 	mul	ab
      000165 2F               [12]  836 	add	a,r7
      000166 F5 82            [12]  837 	mov	dpl,a
      000168 22               [24]  838 	ret
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'writeTime'
                                    841 ;------------------------------------------------------------
                                    842 ;phut                      Allocated with name '_writeTime_PARM_2'
                                    843 ;gio                       Allocated with name '_writeTime_PARM_3'
                                    844 ;giay                      Allocated to registers r7 
                                    845 ;u8Data                    Allocated with name '_writeTime_u8Data_1_26'
                                    846 ;------------------------------------------------------------
                                    847 ;	main.c:60: void writeTime(uint8_t giay, uint8_t phut, uint8_t gio){
                                    848 ;	-----------------------------------------
                                    849 ;	 function writeTime
                                    850 ;	-----------------------------------------
      000169                        851 _writeTime:
                                    852 ;	main.c:62: u8Data[0] = decimal_to_bcd(giay);
      000169 12 01 3D         [24]  853 	lcall	_decimal_to_bcd
      00016C E5 82            [12]  854 	mov	a,dpl
      00016E F5 30            [12]  855 	mov	_writeTime_u8Data_1_26,a
                                    856 ;	main.c:63: u8Data[1] = decimal_to_bcd(phut);
      000170 85 2E 82         [24]  857 	mov	dpl,_writeTime_PARM_2
      000173 12 01 3D         [24]  858 	lcall	_decimal_to_bcd
      000176 E5 82            [12]  859 	mov	a,dpl
      000178 F5 31            [12]  860 	mov	(_writeTime_u8Data_1_26 + 0x0001),a
                                    861 ;	main.c:64: u8Data[2] = decimal_to_bcd(gio);
      00017A 85 2F 82         [24]  862 	mov	dpl,_writeTime_PARM_3
      00017D 12 01 3D         [24]  863 	lcall	_decimal_to_bcd
      000180 E5 82            [12]  864 	mov	a,dpl
      000182 F5 32            [12]  865 	mov	(_writeTime_u8Data_1_26 + 0x0002),a
                                    866 ;	main.c:65: data_write(ADDR_DS13, 0x00, 3, u8Data);
      000184 75 3E 30         [24]  867 	mov	_data_write_PARM_4,#_writeTime_u8Data_1_26
      000187 75 3F 00         [24]  868 	mov	(_data_write_PARM_4 + 1),#0x00
      00018A 75 40 40         [24]  869 	mov	(_data_write_PARM_4 + 2),#0x40
      00018D 75 3C 00         [24]  870 	mov	_data_write_PARM_2,#0x00
      000190 75 3D 03         [24]  871 	mov	_data_write_PARM_3,#0x03
      000193 75 82 D0         [24]  872 	mov	dpl,#0xD0
      000196 02 07 00         [24]  873 	ljmp	_data_write
                                    874 ;------------------------------------------------------------
                                    875 ;Allocation info for local variables in function 'writeDay'
                                    876 ;------------------------------------------------------------
                                    877 ;month                     Allocated with name '_writeDay_PARM_2'
                                    878 ;date                      Allocated to registers r7 
                                    879 ;u8Data                    Allocated with name '_writeDay_u8Data_1_28'
                                    880 ;------------------------------------------------------------
                                    881 ;	main.c:67: void writeDay(uint8_t date, uint8_t month){
                                    882 ;	-----------------------------------------
                                    883 ;	 function writeDay
                                    884 ;	-----------------------------------------
      000199                        885 _writeDay:
                                    886 ;	main.c:69: u8Data[0] = decimal_to_bcd(date);
      000199 12 01 3D         [24]  887 	lcall	_decimal_to_bcd
      00019C E5 82            [12]  888 	mov	a,dpl
      00019E F5 34            [12]  889 	mov	_writeDay_u8Data_1_28,a
                                    890 ;	main.c:70: u8Data[1] = decimal_to_bcd(month);
      0001A0 85 33 82         [24]  891 	mov	dpl,_writeDay_PARM_2
      0001A3 12 01 3D         [24]  892 	lcall	_decimal_to_bcd
      0001A6 E5 82            [12]  893 	mov	a,dpl
      0001A8 F5 35            [12]  894 	mov	(_writeDay_u8Data_1_28 + 0x0001),a
                                    895 ;	main.c:71: data_write(ADDR_DS13, 0x04, 2, u8Data);
      0001AA 75 3E 34         [24]  896 	mov	_data_write_PARM_4,#_writeDay_u8Data_1_28
      0001AD 75 3F 00         [24]  897 	mov	(_data_write_PARM_4 + 1),#0x00
      0001B0 75 40 40         [24]  898 	mov	(_data_write_PARM_4 + 2),#0x40
      0001B3 75 3C 04         [24]  899 	mov	_data_write_PARM_2,#0x04
      0001B6 75 3D 02         [24]  900 	mov	_data_write_PARM_3,#0x02
      0001B9 75 82 D0         [24]  901 	mov	dpl,#0xD0
      0001BC 02 07 00         [24]  902 	ljmp	_data_write
                                    903 ;------------------------------------------------------------
                                    904 ;Allocation info for local variables in function 'readTime'
                                    905 ;------------------------------------------------------------
                                    906 ;temp                      Allocated to registers r6 
                                    907 ;------------------------------------------------------------
                                    908 ;	main.c:73: void readTime(void){
                                    909 ;	-----------------------------------------
                                    910 ;	 function readTime
                                    911 ;	-----------------------------------------
      0001BF                        912 _readTime:
                                    913 ;	main.c:75: data_read(ADDR_DS13, 0x00, 6, u8Time);
      0001BF 75 43 28         [24]  914 	mov	_data_read_PARM_4,#_u8Time
      0001C2 75 44 00         [24]  915 	mov	(_data_read_PARM_4 + 1),#0x00
      0001C5 75 45 40         [24]  916 	mov	(_data_read_PARM_4 + 2),#0x40
      0001C8 75 41 00         [24]  917 	mov	_data_read_PARM_2,#0x00
      0001CB 75 42 06         [24]  918 	mov	_data_read_PARM_3,#0x06
      0001CE 75 82 D0         [24]  919 	mov	dpl,#0xD0
      0001D1 12 07 6C         [24]  920 	lcall	_data_read
                                    921 ;	main.c:76: for(i=0; i<6; ++i){
      0001D4 E4               [12]  922 	clr	a
      0001D5 F5 16            [12]  923 	mov	_i,a
      0001D7 F5 17            [12]  924 	mov	(_i + 1),a
                                    925 ;	main.c:78: if((u8Time[i] >=0) && (u8Time[i] < 90) ){
      0001D9                        926 00104$:
      0001D9 E5 16            [12]  927 	mov	a,_i
      0001DB 24 28            [12]  928 	add	a,#_u8Time
      0001DD F9               [12]  929 	mov	r1,a
      0001DE 87 07            [24]  930 	mov	ar7,@r1
      0001E0 BF 5A 00         [24]  931 	cjne	r7,#0x5A,00116$
      0001E3                        932 00116$:
      0001E3 50 1D            [24]  933 	jnc	00102$
                                    934 ;	main.c:79: temp = (u8Time[i] >> 4) & 0x0F;
      0001E5 EF               [12]  935 	mov	a,r7
      0001E6 C4               [12]  936 	swap	a
      0001E7 54 0F            [12]  937 	anl	a,#0x0F
      0001E9 FE               [12]  938 	mov	r6,a
      0001EA 53 06 0F         [24]  939 	anl	ar6,#0x0F
                                    940 ;	main.c:80: u8Time[i] = u8Time[i] & 0x0F;
      0001ED 74 0F            [12]  941 	mov	a,#0x0F
      0001EF 5F               [12]  942 	anl	a,r7
      0001F0 F7               [12]  943 	mov	@r1,a
                                    944 ;	main.c:81: u8Time[i] = (temp * 10) + u8Time[i];
      0001F1 E5 16            [12]  945 	mov	a,_i
      0001F3 24 28            [12]  946 	add	a,#_u8Time
      0001F5 F8               [12]  947 	mov	r0,a
      0001F6 EE               [12]  948 	mov	a,r6
      0001F7 75 F0 0A         [24]  949 	mov	b,#0x0A
      0001FA A4               [48]  950 	mul	ab
      0001FB FE               [12]  951 	mov	r6,a
      0001FC E6               [12]  952 	mov	a,@r0
      0001FD FF               [12]  953 	mov	r7,a
      0001FE 2E               [12]  954 	add	a,r6
      0001FF F6               [12]  955 	mov	@r0,a
      000200 80 02            [24]  956 	sjmp	00107$
      000202                        957 00102$:
                                    958 ;	main.c:83: u8Time[i] = 0;
      000202 77 00            [12]  959 	mov	@r1,#0x00
      000204                        960 00107$:
                                    961 ;	main.c:76: for(i=0; i<6; ++i){
      000204 05 16            [12]  962 	inc	_i
      000206 E4               [12]  963 	clr	a
      000207 B5 16 02         [24]  964 	cjne	a,_i,00118$
      00020A 05 17            [12]  965 	inc	(_i + 1)
      00020C                        966 00118$:
      00020C C3               [12]  967 	clr	c
      00020D E5 16            [12]  968 	mov	a,_i
      00020F 94 06            [12]  969 	subb	a,#0x06
      000211 E5 17            [12]  970 	mov	a,(_i + 1)
      000213 94 00            [12]  971 	subb	a,#0x00
      000215 40 C2            [24]  972 	jc	00104$
      000217 22               [24]  973 	ret
                                    974 ;------------------------------------------------------------
                                    975 ;Allocation info for local variables in function 'main'
                                    976 ;------------------------------------------------------------
                                    977 ;	main.c:88: void main(void)
                                    978 ;	-----------------------------------------
                                    979 ;	 function main
                                    980 ;	-----------------------------------------
      000218                        981 _main:
                                    982 ;	main.c:99: i2c_init();
      000218 12 05 7B         [24]  983 	lcall	_i2c_init
                                    984 ;	main.c:100: DelayT0_Init();
      00021B 12 02 B2         [24]  985 	lcall	_DelayT0_Init
                                    986 ;	main.c:101: OneWireReset();
      00021E 12 04 A9         [24]  987 	lcall	_OneWireReset
                                    988 ;	main.c:102: DelayT0(100, CONFIG_1MS);
      000221 75 46 E8         [24]  989 	mov	_DelayT0_PARM_2,#0xE8
      000224 75 47 03         [24]  990 	mov	(_DelayT0_PARM_2 + 1),#0x03
      000227 90 00 64         [24]  991 	mov	dptr,#0x0064
      00022A 12 02 BC         [24]  992 	lcall	_DelayT0
                                    993 ;	main.c:103: TM1628_INIT(1, 7);
      00022D 75 39 07         [24]  994 	mov	_TM1628_INIT_PARM_2,#0x07
      000230 75 82 01         [24]  995 	mov	dpl,#0x01
      000233 12 03 FA         [24]  996 	lcall	_TM1628_INIT
                                    997 ;	main.c:110: DelayT0(1000, CONFIG_1MS);
      000236 75 46 E8         [24]  998 	mov	_DelayT0_PARM_2,#0xE8
      000239 75 47 03         [24]  999 	mov	(_DelayT0_PARM_2 + 1),#0x03
      00023C 90 03 E8         [24] 1000 	mov	dptr,#0x03E8
      00023F 12 02 BC         [24] 1001 	lcall	_DelayT0
                                   1002 ;	main.c:115: while (1)
      000242                       1003 00103$:
                                   1004 ;	main.c:135: readTime();
      000242 12 01 BF         [24] 1005 	lcall	_readTime
                                   1006 ;	main.c:137: buffer[0] = (uint8_t) (u8Time[1] / 10) %10;
      000245 75 F0 0A         [24] 1007 	mov	b,#0x0A
      000248 E5 29            [12] 1008 	mov	a,(_u8Time + 0x0001)
      00024A 84               [48] 1009 	div	ab
      00024B 75 F0 0A         [24] 1010 	mov	b,#0x0A
      00024E 84               [48] 1011 	div	ab
      00024F E5 F0            [12] 1012 	mov	a,b
      000251 F5 08            [12] 1013 	mov	_buffer,a
                                   1014 ;	main.c:138: buffer[2] = (uint8_t) (u8Time[1] / 1)  %10;
      000253 75 F0 0A         [24] 1015 	mov	b,#0x0A
      000256 E5 29            [12] 1016 	mov	a,(_u8Time + 0x0001)
      000258 84               [48] 1017 	div	ab
      000259 E5 F0            [12] 1018 	mov	a,b
      00025B F5 0A            [12] 1019 	mov	(_buffer + 0x0002),a
                                   1020 ;	main.c:139: buffer[4] = (uint8_t) (u8Time[0] / 10) %10;
      00025D 75 F0 0A         [24] 1021 	mov	b,#0x0A
      000260 E5 28            [12] 1022 	mov	a,_u8Time
      000262 84               [48] 1023 	div	ab
      000263 75 F0 0A         [24] 1024 	mov	b,#0x0A
      000266 84               [48] 1025 	div	ab
      000267 E5 F0            [12] 1026 	mov	a,b
      000269 F5 0C            [12] 1027 	mov	(_buffer + 0x0004),a
                                   1028 ;	main.c:140: buffer[6] = (uint8_t) (u8Time[0] / 1) %10;
      00026B 75 F0 0A         [24] 1029 	mov	b,#0x0A
      00026E E5 28            [12] 1030 	mov	a,_u8Time
      000270 84               [48] 1031 	div	ab
      000271 E5 F0            [12] 1032 	mov	a,b
      000273 F5 0E            [12] 1033 	mov	(_buffer + 0x0006),a
                                   1034 ;	main.c:141: for(i=0; i< 14; ++i)
      000275 E4               [12] 1035 	clr	a
      000276 F5 16            [12] 1036 	mov	_i,a
      000278 F5 17            [12] 1037 	mov	(_i + 1),a
      00027A                       1038 00105$:
                                   1039 ;	main.c:145: TM1628_display_segments(i,buffer[i],1); 
      00027A E5 16            [12] 1040 	mov	a,_i
      00027C F5 82            [12] 1041 	mov	dpl,a
      00027E 24 08            [12] 1042 	add	a,#_buffer
      000280 F9               [12] 1043 	mov	r1,a
      000281 87 3A            [24] 1044 	mov	_TM1628_display_segments_PARM_2,@r1
      000283 75 3B 01         [24] 1045 	mov	_TM1628_display_segments_PARM_3,#0x01
      000286 12 04 18         [24] 1046 	lcall	_TM1628_display_segments
                                   1047 ;	main.c:141: for(i=0; i< 14; ++i)
      000289 05 16            [12] 1048 	inc	_i
      00028B E4               [12] 1049 	clr	a
      00028C B5 16 02         [24] 1050 	cjne	a,_i,00118$
      00028F 05 17            [12] 1051 	inc	(_i + 1)
      000291                       1052 00118$:
      000291 C3               [12] 1053 	clr	c
      000292 E5 16            [12] 1054 	mov	a,_i
      000294 94 0E            [12] 1055 	subb	a,#0x0E
      000296 E5 17            [12] 1056 	mov	a,(_i + 1)
      000298 94 00            [12] 1057 	subb	a,#0x00
      00029A 40 DE            [24] 1058 	jc	00105$
                                   1059 ;	main.c:153: DelayT0(250, CONFIG_1MS);
      00029C 75 46 E8         [24] 1060 	mov	_DelayT0_PARM_2,#0xE8
      00029F 75 47 03         [24] 1061 	mov	(_DelayT0_PARM_2 + 1),#0x03
      0002A2 90 00 FA         [24] 1062 	mov	dptr,#0x00FA
      0002A5 12 02 BC         [24] 1063 	lcall	_DelayT0
                                   1064 ;	main.c:154: a++;
      0002A8 05 18            [12] 1065 	inc	_a
      0002AA E4               [12] 1066 	clr	a
      0002AB B5 18 94         [24] 1067 	cjne	a,_a,00103$
      0002AE 05 19            [12] 1068 	inc	(_a + 1)
      0002B0 80 90            [24] 1069 	sjmp	00103$
                                   1070 	.area CSEG    (CODE)
                                   1071 	.area CONST   (CODE)
                                   1072 	.area XINIT   (CODE)
                                   1073 	.area CABS    (ABS,CODE)
