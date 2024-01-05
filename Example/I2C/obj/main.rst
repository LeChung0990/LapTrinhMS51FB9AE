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
                                     12 	.globl _Delay_Ms
                                     13 	.globl _Delay_Init
                                     14 	.globl _UART0_NUMBER
                                     15 	.globl _UART0_STRING
                                     16 	.globl _UART0_Init
                                     17 	.globl _I2C_Read
                                     18 	.globl _I2C_Write
                                     19 	.globl _I2C_Init
                                     20 	.globl _MOSI
                                     21 	.globl _P00
                                     22 	.globl _MISO
                                     23 	.globl _P01
                                     24 	.globl _RXD_1
                                     25 	.globl _P02
                                     26 	.globl _P03
                                     27 	.globl _STADC
                                     28 	.globl _P04
                                     29 	.globl _P05
                                     30 	.globl _TXD
                                     31 	.globl _P06
                                     32 	.globl _RXD
                                     33 	.globl _P07
                                     34 	.globl _IT0
                                     35 	.globl _IE0
                                     36 	.globl _IT1
                                     37 	.globl _IE1
                                     38 	.globl _TR0
                                     39 	.globl _TF0
                                     40 	.globl _TR1
                                     41 	.globl _TF1
                                     42 	.globl _P10
                                     43 	.globl _P11
                                     44 	.globl _P12
                                     45 	.globl _SCL
                                     46 	.globl _P13
                                     47 	.globl _SDA
                                     48 	.globl _P14
                                     49 	.globl _P15
                                     50 	.globl _TXD_1
                                     51 	.globl _P16
                                     52 	.globl _P17
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _FE
                                     61 	.globl _SM0
                                     62 	.globl _P20
                                     63 	.globl _EX0
                                     64 	.globl _ET0
                                     65 	.globl _EX1
                                     66 	.globl _ET1
                                     67 	.globl _ES
                                     68 	.globl _EBOD
                                     69 	.globl _EADC
                                     70 	.globl _EA
                                     71 	.globl _P30
                                     72 	.globl _PX0
                                     73 	.globl _PT0
                                     74 	.globl _PX1
                                     75 	.globl _PT1
                                     76 	.globl _PS
                                     77 	.globl _PBOD
                                     78 	.globl _PADC
                                     79 	.globl _I2CPX
                                     80 	.globl _AA
                                     81 	.globl _SI
                                     82 	.globl _STO
                                     83 	.globl _STA
                                     84 	.globl _I2CEN
                                     85 	.globl _CM_RL2
                                     86 	.globl _TR2
                                     87 	.globl _TF2
                                     88 	.globl _P
                                     89 	.globl _OV
                                     90 	.globl _RS0
                                     91 	.globl _RS1
                                     92 	.globl _F0
                                     93 	.globl _AC
                                     94 	.globl _CY
                                     95 	.globl _CLRPWM
                                     96 	.globl _PWMF
                                     97 	.globl _LOAD
                                     98 	.globl _PWMRUN
                                     99 	.globl _ADCHS0
                                    100 	.globl _ADCHS1
                                    101 	.globl _ADCHS2
                                    102 	.globl _ADCHS3
                                    103 	.globl _ETGSEL0
                                    104 	.globl _ETGSEL1
                                    105 	.globl _ADCS
                                    106 	.globl _ADCF
                                    107 	.globl _RI_1
                                    108 	.globl _TI_1
                                    109 	.globl _RB8_1
                                    110 	.globl _TB8_1
                                    111 	.globl _REN_1
                                    112 	.globl _SM2_1
                                    113 	.globl _SM1_1
                                    114 	.globl _FE_1
                                    115 	.globl _SM0_1
                                    116 	.globl _EIPH1
                                    117 	.globl _EIP1
                                    118 	.globl _PMD
                                    119 	.globl _PMEN
                                    120 	.globl _PDTCNT
                                    121 	.globl _PDTEN
                                    122 	.globl _SCON_1
                                    123 	.globl _EIPH
                                    124 	.globl _AINDIDS
                                    125 	.globl _SPDR
                                    126 	.globl _SPSR
                                    127 	.globl _SPCR2
                                    128 	.globl _SPCR
                                    129 	.globl _CAPCON4
                                    130 	.globl _CAPCON3
                                    131 	.globl _B
                                    132 	.globl _EIP
                                    133 	.globl _C2H
                                    134 	.globl _C2L
                                    135 	.globl _PIF
                                    136 	.globl _PIPEN
                                    137 	.globl _PINEN
                                    138 	.globl _PICON
                                    139 	.globl _ADCCON0
                                    140 	.globl _C1H
                                    141 	.globl _C1L
                                    142 	.globl _C0H
                                    143 	.globl _C0L
                                    144 	.globl _ADCDLY
                                    145 	.globl _ADCCON2
                                    146 	.globl _ADCCON1
                                    147 	.globl _ACC
                                    148 	.globl _PWMCON1
                                    149 	.globl _PIOCON0
                                    150 	.globl _PWM3L
                                    151 	.globl _PWM2L
                                    152 	.globl _PWM1L
                                    153 	.globl _PWM0L
                                    154 	.globl _PWMPL
                                    155 	.globl _PWMCON0
                                    156 	.globl _FBD
                                    157 	.globl _PNP
                                    158 	.globl _PWM3H
                                    159 	.globl _PWM2H
                                    160 	.globl _PWM1H
                                    161 	.globl _PWM0H
                                    162 	.globl _PWMPH
                                    163 	.globl _PSW
                                    164 	.globl _ADCMPH
                                    165 	.globl _ADCMPL
                                    166 	.globl _PWM5L
                                    167 	.globl _TH2
                                    168 	.globl _PWM4L
                                    169 	.globl _TL2
                                    170 	.globl _RCMP2H
                                    171 	.globl _RCMP2L
                                    172 	.globl _T2MOD
                                    173 	.globl _T2CON
                                    174 	.globl _TA
                                    175 	.globl _PIOCON1
                                    176 	.globl _RH3
                                    177 	.globl _PWM5H
                                    178 	.globl _RL3
                                    179 	.globl _PWM4H
                                    180 	.globl _T3CON
                                    181 	.globl _ADCRH
                                    182 	.globl _ADCRL
                                    183 	.globl _I2ADDR
                                    184 	.globl _I2CON
                                    185 	.globl _I2TOC
                                    186 	.globl _I2CLK
                                    187 	.globl _I2STAT
                                    188 	.globl _I2DAT
                                    189 	.globl _SADDR_1
                                    190 	.globl _SADEN_1
                                    191 	.globl _SADEN
                                    192 	.globl _IP
                                    193 	.globl _PWMINTC
                                    194 	.globl _IPH
                                    195 	.globl _P2S
                                    196 	.globl _P1SR
                                    197 	.globl _P1M2
                                    198 	.globl _P1S
                                    199 	.globl _P1M1
                                    200 	.globl _P0SR
                                    201 	.globl _P0M2
                                    202 	.globl _P0S
                                    203 	.globl _P0M1
                                    204 	.globl _P3
                                    205 	.globl _IAPCN
                                    206 	.globl _IAPFD
                                    207 	.globl _P3SR
                                    208 	.globl _P3M2
                                    209 	.globl _P3S
                                    210 	.globl _P3M1
                                    211 	.globl _BODCON1
                                    212 	.globl _WDCON
                                    213 	.globl _SADDR
                                    214 	.globl _IE
                                    215 	.globl _IAPAH
                                    216 	.globl _IAPAL
                                    217 	.globl _IAPUEN
                                    218 	.globl _IAPTRG
                                    219 	.globl _BODCON0
                                    220 	.globl _AUXR1
                                    221 	.globl _P2
                                    222 	.globl _CHPCON
                                    223 	.globl _EIE1
                                    224 	.globl _EIE
                                    225 	.globl _SBUF_1
                                    226 	.globl _SBUF
                                    227 	.globl _SCON
                                    228 	.globl _CKEN
                                    229 	.globl _CKSWT
                                    230 	.globl _CKDIV
                                    231 	.globl _CAPCON2
                                    232 	.globl _CAPCON1
                                    233 	.globl _CAPCON0
                                    234 	.globl _SFRS
                                    235 	.globl _P1
                                    236 	.globl _WKCON
                                    237 	.globl _CKCON
                                    238 	.globl _TH1
                                    239 	.globl _TH0
                                    240 	.globl _TL1
                                    241 	.globl _TL0
                                    242 	.globl _TMOD
                                    243 	.globl _TCON
                                    244 	.globl _PCON
                                    245 	.globl _RWK
                                    246 	.globl _RCTRIM1
                                    247 	.globl _RCTRIM0
                                    248 	.globl _DPH
                                    249 	.globl _DPL
                                    250 	.globl _SP
                                    251 	.globl _P0
                                    252 	.globl _u8Data
                                    253 	.globl _u8Tmp
                                    254 ;--------------------------------------------------------
                                    255 ; special function registers
                                    256 ;--------------------------------------------------------
                                    257 	.area RSEG    (ABS,DATA)
      000000                        258 	.org 0x0000
                           000080   259 _P0	=	0x0080
                           000081   260 _SP	=	0x0081
                           000082   261 _DPL	=	0x0082
                           000083   262 _DPH	=	0x0083
                           000084   263 _RCTRIM0	=	0x0084
                           000085   264 _RCTRIM1	=	0x0085
                           000086   265 _RWK	=	0x0086
                           000087   266 _PCON	=	0x0087
                           000088   267 _TCON	=	0x0088
                           000089   268 _TMOD	=	0x0089
                           00008A   269 _TL0	=	0x008a
                           00008B   270 _TL1	=	0x008b
                           00008C   271 _TH0	=	0x008c
                           00008D   272 _TH1	=	0x008d
                           00008E   273 _CKCON	=	0x008e
                           00008F   274 _WKCON	=	0x008f
                           000090   275 _P1	=	0x0090
                           000091   276 _SFRS	=	0x0091
                           000092   277 _CAPCON0	=	0x0092
                           000093   278 _CAPCON1	=	0x0093
                           000094   279 _CAPCON2	=	0x0094
                           000095   280 _CKDIV	=	0x0095
                           000096   281 _CKSWT	=	0x0096
                           000097   282 _CKEN	=	0x0097
                           000098   283 _SCON	=	0x0098
                           000099   284 _SBUF	=	0x0099
                           00009A   285 _SBUF_1	=	0x009a
                           00009B   286 _EIE	=	0x009b
                           00009C   287 _EIE1	=	0x009c
                           00009F   288 _CHPCON	=	0x009f
                           0000A0   289 _P2	=	0x00a0
                           0000A2   290 _AUXR1	=	0x00a2
                           0000A3   291 _BODCON0	=	0x00a3
                           0000A4   292 _IAPTRG	=	0x00a4
                           0000A5   293 _IAPUEN	=	0x00a5
                           0000A6   294 _IAPAL	=	0x00a6
                           0000A7   295 _IAPAH	=	0x00a7
                           0000A8   296 _IE	=	0x00a8
                           0000A9   297 _SADDR	=	0x00a9
                           0000AA   298 _WDCON	=	0x00aa
                           0000AB   299 _BODCON1	=	0x00ab
                           0000AC   300 _P3M1	=	0x00ac
                           0000AC   301 _P3S	=	0x00ac
                           0000AD   302 _P3M2	=	0x00ad
                           0000AD   303 _P3SR	=	0x00ad
                           0000AE   304 _IAPFD	=	0x00ae
                           0000AF   305 _IAPCN	=	0x00af
                           0000B0   306 _P3	=	0x00b0
                           0000B1   307 _P0M1	=	0x00b1
                           0000B1   308 _P0S	=	0x00b1
                           0000B2   309 _P0M2	=	0x00b2
                           0000B2   310 _P0SR	=	0x00b2
                           0000B3   311 _P1M1	=	0x00b3
                           0000B3   312 _P1S	=	0x00b3
                           0000B4   313 _P1M2	=	0x00b4
                           0000B4   314 _P1SR	=	0x00b4
                           0000B5   315 _P2S	=	0x00b5
                           0000B7   316 _IPH	=	0x00b7
                           0000B7   317 _PWMINTC	=	0x00b7
                           0000B8   318 _IP	=	0x00b8
                           0000B9   319 _SADEN	=	0x00b9
                           0000BA   320 _SADEN_1	=	0x00ba
                           0000BB   321 _SADDR_1	=	0x00bb
                           0000BC   322 _I2DAT	=	0x00bc
                           0000BD   323 _I2STAT	=	0x00bd
                           0000BE   324 _I2CLK	=	0x00be
                           0000BF   325 _I2TOC	=	0x00bf
                           0000C0   326 _I2CON	=	0x00c0
                           0000C1   327 _I2ADDR	=	0x00c1
                           0000C2   328 _ADCRL	=	0x00c2
                           0000C3   329 _ADCRH	=	0x00c3
                           0000C4   330 _T3CON	=	0x00c4
                           0000C4   331 _PWM4H	=	0x00c4
                           0000C5   332 _RL3	=	0x00c5
                           0000C5   333 _PWM5H	=	0x00c5
                           0000C6   334 _RH3	=	0x00c6
                           0000C6   335 _PIOCON1	=	0x00c6
                           0000C7   336 _TA	=	0x00c7
                           0000C8   337 _T2CON	=	0x00c8
                           0000C9   338 _T2MOD	=	0x00c9
                           0000CA   339 _RCMP2L	=	0x00ca
                           0000CB   340 _RCMP2H	=	0x00cb
                           0000CC   341 _TL2	=	0x00cc
                           0000CC   342 _PWM4L	=	0x00cc
                           0000CD   343 _TH2	=	0x00cd
                           0000CD   344 _PWM5L	=	0x00cd
                           0000CE   345 _ADCMPL	=	0x00ce
                           0000CF   346 _ADCMPH	=	0x00cf
                           0000D0   347 _PSW	=	0x00d0
                           0000D1   348 _PWMPH	=	0x00d1
                           0000D2   349 _PWM0H	=	0x00d2
                           0000D3   350 _PWM1H	=	0x00d3
                           0000D4   351 _PWM2H	=	0x00d4
                           0000D5   352 _PWM3H	=	0x00d5
                           0000D6   353 _PNP	=	0x00d6
                           0000D7   354 _FBD	=	0x00d7
                           0000D8   355 _PWMCON0	=	0x00d8
                           0000D9   356 _PWMPL	=	0x00d9
                           0000DA   357 _PWM0L	=	0x00da
                           0000DB   358 _PWM1L	=	0x00db
                           0000DC   359 _PWM2L	=	0x00dc
                           0000DD   360 _PWM3L	=	0x00dd
                           0000DE   361 _PIOCON0	=	0x00de
                           0000DF   362 _PWMCON1	=	0x00df
                           0000E0   363 _ACC	=	0x00e0
                           0000E1   364 _ADCCON1	=	0x00e1
                           0000E2   365 _ADCCON2	=	0x00e2
                           0000E3   366 _ADCDLY	=	0x00e3
                           0000E4   367 _C0L	=	0x00e4
                           0000E5   368 _C0H	=	0x00e5
                           0000E6   369 _C1L	=	0x00e6
                           0000E7   370 _C1H	=	0x00e7
                           0000E8   371 _ADCCON0	=	0x00e8
                           0000E9   372 _PICON	=	0x00e9
                           0000EA   373 _PINEN	=	0x00ea
                           0000EB   374 _PIPEN	=	0x00eb
                           0000EC   375 _PIF	=	0x00ec
                           0000ED   376 _C2L	=	0x00ed
                           0000EE   377 _C2H	=	0x00ee
                           0000EF   378 _EIP	=	0x00ef
                           0000F0   379 _B	=	0x00f0
                           0000F1   380 _CAPCON3	=	0x00f1
                           0000F2   381 _CAPCON4	=	0x00f2
                           0000F3   382 _SPCR	=	0x00f3
                           0000F3   383 _SPCR2	=	0x00f3
                           0000F4   384 _SPSR	=	0x00f4
                           0000F5   385 _SPDR	=	0x00f5
                           0000F6   386 _AINDIDS	=	0x00f6
                           0000F7   387 _EIPH	=	0x00f7
                           0000F8   388 _SCON_1	=	0x00f8
                           0000F9   389 _PDTEN	=	0x00f9
                           0000FA   390 _PDTCNT	=	0x00fa
                           0000FB   391 _PMEN	=	0x00fb
                           0000FC   392 _PMD	=	0x00fc
                           0000FE   393 _EIP1	=	0x00fe
                           0000FF   394 _EIPH1	=	0x00ff
                                    395 ;--------------------------------------------------------
                                    396 ; special function bits
                                    397 ;--------------------------------------------------------
                                    398 	.area RSEG    (ABS,DATA)
      000000                        399 	.org 0x0000
                           0000FF   400 _SM0_1	=	0x00ff
                           0000FF   401 _FE_1	=	0x00ff
                           0000FE   402 _SM1_1	=	0x00fe
                           0000FD   403 _SM2_1	=	0x00fd
                           0000FC   404 _REN_1	=	0x00fc
                           0000FB   405 _TB8_1	=	0x00fb
                           0000FA   406 _RB8_1	=	0x00fa
                           0000F9   407 _TI_1	=	0x00f9
                           0000F8   408 _RI_1	=	0x00f8
                           0000EF   409 _ADCF	=	0x00ef
                           0000EE   410 _ADCS	=	0x00ee
                           0000ED   411 _ETGSEL1	=	0x00ed
                           0000EC   412 _ETGSEL0	=	0x00ec
                           0000EB   413 _ADCHS3	=	0x00eb
                           0000EA   414 _ADCHS2	=	0x00ea
                           0000E9   415 _ADCHS1	=	0x00e9
                           0000E8   416 _ADCHS0	=	0x00e8
                           0000DF   417 _PWMRUN	=	0x00df
                           0000DE   418 _LOAD	=	0x00de
                           0000DD   419 _PWMF	=	0x00dd
                           0000DC   420 _CLRPWM	=	0x00dc
                           0000D7   421 _CY	=	0x00d7
                           0000D6   422 _AC	=	0x00d6
                           0000D5   423 _F0	=	0x00d5
                           0000D4   424 _RS1	=	0x00d4
                           0000D3   425 _RS0	=	0x00d3
                           0000D2   426 _OV	=	0x00d2
                           0000D0   427 _P	=	0x00d0
                           0000CF   428 _TF2	=	0x00cf
                           0000CA   429 _TR2	=	0x00ca
                           0000C8   430 _CM_RL2	=	0x00c8
                           0000C6   431 _I2CEN	=	0x00c6
                           0000C5   432 _STA	=	0x00c5
                           0000C4   433 _STO	=	0x00c4
                           0000C3   434 _SI	=	0x00c3
                           0000C2   435 _AA	=	0x00c2
                           0000C0   436 _I2CPX	=	0x00c0
                           0000BE   437 _PADC	=	0x00be
                           0000BD   438 _PBOD	=	0x00bd
                           0000BC   439 _PS	=	0x00bc
                           0000BB   440 _PT1	=	0x00bb
                           0000BA   441 _PX1	=	0x00ba
                           0000B9   442 _PT0	=	0x00b9
                           0000B8   443 _PX0	=	0x00b8
                           0000B0   444 _P30	=	0x00b0
                           0000AF   445 _EA	=	0x00af
                           0000AE   446 _EADC	=	0x00ae
                           0000AD   447 _EBOD	=	0x00ad
                           0000AC   448 _ES	=	0x00ac
                           0000AB   449 _ET1	=	0x00ab
                           0000AA   450 _EX1	=	0x00aa
                           0000A9   451 _ET0	=	0x00a9
                           0000A8   452 _EX0	=	0x00a8
                           0000A0   453 _P20	=	0x00a0
                           00009F   454 _SM0	=	0x009f
                           00009F   455 _FE	=	0x009f
                           00009E   456 _SM1	=	0x009e
                           00009D   457 _SM2	=	0x009d
                           00009C   458 _REN	=	0x009c
                           00009B   459 _TB8	=	0x009b
                           00009A   460 _RB8	=	0x009a
                           000099   461 _TI	=	0x0099
                           000098   462 _RI	=	0x0098
                           000097   463 _P17	=	0x0097
                           000096   464 _P16	=	0x0096
                           000096   465 _TXD_1	=	0x0096
                           000095   466 _P15	=	0x0095
                           000094   467 _P14	=	0x0094
                           000094   468 _SDA	=	0x0094
                           000093   469 _P13	=	0x0093
                           000093   470 _SCL	=	0x0093
                           000092   471 _P12	=	0x0092
                           000091   472 _P11	=	0x0091
                           000090   473 _P10	=	0x0090
                           00008F   474 _TF1	=	0x008f
                           00008E   475 _TR1	=	0x008e
                           00008D   476 _TF0	=	0x008d
                           00008C   477 _TR0	=	0x008c
                           00008B   478 _IE1	=	0x008b
                           00008A   479 _IT1	=	0x008a
                           000089   480 _IE0	=	0x0089
                           000088   481 _IT0	=	0x0088
                           000087   482 _P07	=	0x0087
                           000087   483 _RXD	=	0x0087
                           000086   484 _P06	=	0x0086
                           000086   485 _TXD	=	0x0086
                           000085   486 _P05	=	0x0085
                           000084   487 _P04	=	0x0084
                           000084   488 _STADC	=	0x0084
                           000083   489 _P03	=	0x0083
                           000082   490 _P02	=	0x0082
                           000082   491 _RXD_1	=	0x0082
                           000081   492 _P01	=	0x0081
                           000081   493 _MISO	=	0x0081
                           000080   494 _P00	=	0x0080
                           000080   495 _MOSI	=	0x0080
                                    496 ;--------------------------------------------------------
                                    497 ; overlayable register banks
                                    498 ;--------------------------------------------------------
                                    499 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        500 	.ds 8
                                    501 ;--------------------------------------------------------
                                    502 ; internal ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area DSEG    (DATA)
      000008                        505 _u8Tmp::
      000008                        506 	.ds 4
      00000C                        507 _u8Data::
      00000C                        508 	.ds 2
                                    509 ;--------------------------------------------------------
                                    510 ; overlayable items in internal ram
                                    511 ;--------------------------------------------------------
                                    512 ;--------------------------------------------------------
                                    513 ; Stack segment in internal ram
                                    514 ;--------------------------------------------------------
                                    515 	.area SSEG
      000021                        516 __start__stack:
      000021                        517 	.ds	1
                                    518 
                                    519 ;--------------------------------------------------------
                                    520 ; indirectly addressable internal ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area ISEG    (DATA)
                                    523 ;--------------------------------------------------------
                                    524 ; absolute internal ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area IABS    (ABS,DATA)
                                    527 	.area IABS    (ABS,DATA)
                                    528 ;--------------------------------------------------------
                                    529 ; bit data
                                    530 ;--------------------------------------------------------
                                    531 	.area BSEG    (BIT)
                                    532 ;--------------------------------------------------------
                                    533 ; paged external ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area PSEG    (PAG,XDATA)
                                    536 ;--------------------------------------------------------
                                    537 ; uninitialized external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XSEG    (XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; absolute external ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XABS    (ABS,XDATA)
                                    544 ;--------------------------------------------------------
                                    545 ; initialized external ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area XISEG   (XDATA)
                                    548 	.area HOME    (CODE)
                                    549 	.area GSINIT0 (CODE)
                                    550 	.area GSINIT1 (CODE)
                                    551 	.area GSINIT2 (CODE)
                                    552 	.area GSINIT3 (CODE)
                                    553 	.area GSINIT4 (CODE)
                                    554 	.area GSINIT5 (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area CSEG    (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; interrupt vector
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
      000000                        562 __interrupt_vect:
      000000 02 00 06         [24]  563 	ljmp	__sdcc_gsinit_startup
                                    564 ;--------------------------------------------------------
                                    565 ; global & static initialisations
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 	.globl __sdcc_gsinit_startup
                                    572 	.globl __sdcc_program_startup
                                    573 	.globl __start__stack
                                    574 	.globl __mcs51_genXINIT
                                    575 	.globl __mcs51_genXRAMCLEAR
                                    576 	.globl __mcs51_genRAMCLEAR
                                    577 ;	main.c:7: uint8_t u8Tmp[4] = {0x00, 0x00, 0x19, 0x86};
      00005F 75 08 00         [24]  578 	mov	_u8Tmp,#0x00
      000062 75 09 00         [24]  579 	mov	(_u8Tmp + 0x0001),#0x00
      000065 75 0A 19         [24]  580 	mov	(_u8Tmp + 0x0002),#0x19
      000068 75 0B 86         [24]  581 	mov	(_u8Tmp + 0x0003),#0x86
                                    582 	.area GSFINAL (CODE)
      00006B 02 00 03         [24]  583 	ljmp	__sdcc_program_startup
                                    584 ;--------------------------------------------------------
                                    585 ; Home
                                    586 ;--------------------------------------------------------
                                    587 	.area HOME    (CODE)
                                    588 	.area HOME    (CODE)
      000003                        589 __sdcc_program_startup:
      000003 02 00 6E         [24]  590 	ljmp	_main
                                    591 ;	return from main will return to caller
                                    592 ;--------------------------------------------------------
                                    593 ; code
                                    594 ;--------------------------------------------------------
                                    595 	.area CSEG    (CODE)
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'main'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:10: void main(void)
                                    600 ;	-----------------------------------------
                                    601 ;	 function main
                                    602 ;	-----------------------------------------
      00006E                        603 _main:
                           000007   604 	ar7 = 0x07
                           000006   605 	ar6 = 0x06
                           000005   606 	ar5 = 0x05
                           000004   607 	ar4 = 0x04
                           000003   608 	ar3 = 0x03
                           000002   609 	ar2 = 0x02
                           000001   610 	ar1 = 0x01
                           000000   611 	ar0 = 0x00
                                    612 ;	main.c:14: Delay_Init();
      00006E 12 04 FD         [24]  613 	lcall	_Delay_Init
                                    614 ;	main.c:15: I2C_Init();
      000071 12 00 E4         [24]  615 	lcall	_I2C_Init
                                    616 ;	main.c:16: P1M1&=0xDF;P1M2|=0x20;
      000074 53 B3 DF         [24]  617 	anl	_P1M1,#0xdf
      000077 43 B4 20         [24]  618 	orl	_P1M2,#0x20
                                    619 ;	main.c:17: P15 = 0;
                                    620 ;	assignBit
      00007A C2 95            [12]  621 	clr	_P15
                                    622 ;	main.c:18: UART0_Init();
      00007C 12 03 E3         [24]  623 	lcall	_UART0_Init
                                    624 ;	main.c:19: UART0_STRING("Start:");
      00007F 90 06 6B         [24]  625 	mov	dptr,#___str_0
      000082 75 F0 80         [24]  626 	mov	b,#0x80
      000085 12 04 34         [24]  627 	lcall	_UART0_STRING
                                    628 ;	main.c:21: UART0_STRING("Read:-");
      000088 90 06 72         [24]  629 	mov	dptr,#___str_1
      00008B 75 F0 80         [24]  630 	mov	b,#0x80
      00008E 12 04 34         [24]  631 	lcall	_UART0_STRING
                                    632 ;	main.c:23: I2C_Write((uint8_t)0x68<<1, 0x3B, 1);
      000091 75 0E 3B         [24]  633 	mov	_I2C_Write_PARM_2,#0x3b
      000094 75 0F 00         [24]  634 	mov	(_I2C_Write_PARM_2 + 1),#0x00
      000097 75 10 00         [24]  635 	mov	(_I2C_Write_PARM_2 + 2),#0x00
      00009A 75 11 01         [24]  636 	mov	_I2C_Write_PARM_3,#0x01
      00009D 75 82 D0         [24]  637 	mov	dpl,#0xd0
      0000A0 12 00 FA         [24]  638 	lcall	_I2C_Write
                                    639 ;	main.c:25: if (!I2C_Read( (uint8_t)(0x68<<1), u8Data, 2))
      0000A3 75 12 0C         [24]  640 	mov	_I2C_Read_PARM_2,#_u8Data
      0000A6 75 13 00         [24]  641 	mov	(_I2C_Read_PARM_2 + 1),#0x00
      0000A9 75 14 40         [24]  642 	mov	(_I2C_Read_PARM_2 + 2),#0x40
      0000AC 75 15 02         [24]  643 	mov	_I2C_Read_PARM_3,#0x02
      0000AF 75 82 D0         [24]  644 	mov	dpl,#0xd0
      0000B2 12 01 CA         [24]  645 	lcall	_I2C_Read
      0000B5 E5 82            [12]  646 	mov	a,dpl
      0000B7 70 04            [24]  647 	jnz	00105$
                                    648 ;	main.c:27: while (1)
      0000B9                        649 00102$:
                                    650 ;	main.c:29: P15 = 1;
                                    651 ;	assignBit
      0000B9 D2 95            [12]  652 	setb	_P15
      0000BB 80 FC            [24]  653 	sjmp	00102$
      0000BD                        654 00105$:
                                    655 ;	main.c:32: UART0_NUMBER(u8Data[0]);
      0000BD AE 0C            [24]  656 	mov	r6,_u8Data
      0000BF 7F 00            [12]  657 	mov	r7,#0x00
      0000C1 8E 82            [24]  658 	mov	dpl,r6
      0000C3 8F 83            [24]  659 	mov	dph,r7
      0000C5 12 04 78         [24]  660 	lcall	_UART0_NUMBER
                                    661 ;	main.c:33: UART0_STRING(",");
      0000C8 90 06 79         [24]  662 	mov	dptr,#___str_2
      0000CB 75 F0 80         [24]  663 	mov	b,#0x80
      0000CE 12 04 34         [24]  664 	lcall	_UART0_STRING
                                    665 ;	main.c:34: UART0_NUMBER(u8Data[1]);
      0000D1 AE 0D            [24]  666 	mov	r6,(_u8Data + 0x0001)
      0000D3 7F 00            [12]  667 	mov	r7,#0x00
      0000D5 8E 82            [24]  668 	mov	dpl,r6
      0000D7 8F 83            [24]  669 	mov	dph,r7
      0000D9 12 04 78         [24]  670 	lcall	_UART0_NUMBER
                                    671 ;	main.c:35: Delay_Ms(1000);
      0000DC 90 03 E8         [24]  672 	mov	dptr,#0x03e8
      0000DF 12 05 0D         [24]  673 	lcall	_Delay_Ms
                                    674 ;	main.c:52: while (1)
      0000E2                        675 00107$:
                                    676 ;	main.c:56: }
      0000E2 80 FE            [24]  677 	sjmp	00107$
                                    678 	.area CSEG    (CODE)
                                    679 	.area CONST   (CODE)
                                    680 	.area CONST   (CODE)
      00066B                        681 ___str_0:
      00066B 53 74 61 72 74 3A      682 	.ascii "Start:"
      000671 00                     683 	.db 0x00
                                    684 	.area CSEG    (CODE)
                                    685 	.area CONST   (CODE)
      000672                        686 ___str_1:
      000672 52 65 61 64 3A 2D      687 	.ascii "Read:-"
      000678 00                     688 	.db 0x00
                                    689 	.area CSEG    (CODE)
                                    690 	.area CONST   (CODE)
      000679                        691 ___str_2:
      000679 2C                     692 	.ascii ","
      00067A 00                     693 	.db 0x00
                                    694 	.area CSEG    (CODE)
                                    695 	.area XINIT   (CODE)
                                    696 	.area CABS    (ABS,CODE)
