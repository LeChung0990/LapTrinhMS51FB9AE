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
                                     12 	.globl _SPI_Send
                                     13 	.globl _SPI_Init
                                     14 	.globl _DelayT0_Init
                                     15 	.globl _MOSI
                                     16 	.globl _P00
                                     17 	.globl _MISO
                                     18 	.globl _P01
                                     19 	.globl _RXD_1
                                     20 	.globl _P02
                                     21 	.globl _P03
                                     22 	.globl _STADC
                                     23 	.globl _P04
                                     24 	.globl _P05
                                     25 	.globl _TXD
                                     26 	.globl _P06
                                     27 	.globl _RXD
                                     28 	.globl _P07
                                     29 	.globl _IT0
                                     30 	.globl _IE0
                                     31 	.globl _IT1
                                     32 	.globl _IE1
                                     33 	.globl _TR0
                                     34 	.globl _TF0
                                     35 	.globl _TR1
                                     36 	.globl _TF1
                                     37 	.globl _P10
                                     38 	.globl _P11
                                     39 	.globl _P12
                                     40 	.globl _SCL
                                     41 	.globl _P13
                                     42 	.globl _SDA
                                     43 	.globl _P14
                                     44 	.globl _P15
                                     45 	.globl _TXD_1
                                     46 	.globl _P16
                                     47 	.globl _P17
                                     48 	.globl _RI
                                     49 	.globl _TI
                                     50 	.globl _RB8
                                     51 	.globl _TB8
                                     52 	.globl _REN
                                     53 	.globl _SM2
                                     54 	.globl _SM1
                                     55 	.globl _FE
                                     56 	.globl _SM0
                                     57 	.globl _P20
                                     58 	.globl _EX0
                                     59 	.globl _ET0
                                     60 	.globl _EX1
                                     61 	.globl _ET1
                                     62 	.globl _ES
                                     63 	.globl _EBOD
                                     64 	.globl _EADC
                                     65 	.globl _EA
                                     66 	.globl _P30
                                     67 	.globl _PX0
                                     68 	.globl _PT0
                                     69 	.globl _PX1
                                     70 	.globl _PT1
                                     71 	.globl _PS
                                     72 	.globl _PBOD
                                     73 	.globl _PADC
                                     74 	.globl _I2CPX
                                     75 	.globl _AA
                                     76 	.globl _SI
                                     77 	.globl _STO
                                     78 	.globl _STA
                                     79 	.globl _I2CEN
                                     80 	.globl _CM_RL2
                                     81 	.globl _TR2
                                     82 	.globl _TF2
                                     83 	.globl _P
                                     84 	.globl _OV
                                     85 	.globl _RS0
                                     86 	.globl _RS1
                                     87 	.globl _F0
                                     88 	.globl _AC
                                     89 	.globl _CY
                                     90 	.globl _CLRPWM
                                     91 	.globl _PWMF
                                     92 	.globl _LOAD
                                     93 	.globl _PWMRUN
                                     94 	.globl _ADCHS0
                                     95 	.globl _ADCHS1
                                     96 	.globl _ADCHS2
                                     97 	.globl _ADCHS3
                                     98 	.globl _ETGSEL0
                                     99 	.globl _ETGSEL1
                                    100 	.globl _ADCS
                                    101 	.globl _ADCF
                                    102 	.globl _RI_1
                                    103 	.globl _TI_1
                                    104 	.globl _RB8_1
                                    105 	.globl _TB8_1
                                    106 	.globl _REN_1
                                    107 	.globl _SM2_1
                                    108 	.globl _SM1_1
                                    109 	.globl _FE_1
                                    110 	.globl _SM0_1
                                    111 	.globl _EIPH1
                                    112 	.globl _EIP1
                                    113 	.globl _PMD
                                    114 	.globl _PMEN
                                    115 	.globl _PDTCNT
                                    116 	.globl _PDTEN
                                    117 	.globl _SCON_1
                                    118 	.globl _EIPH
                                    119 	.globl _AINDIDS
                                    120 	.globl _SPDR
                                    121 	.globl _SPSR
                                    122 	.globl _SPCR2
                                    123 	.globl _SPCR
                                    124 	.globl _CAPCON4
                                    125 	.globl _CAPCON3
                                    126 	.globl _B
                                    127 	.globl _EIP
                                    128 	.globl _C2H
                                    129 	.globl _C2L
                                    130 	.globl _PIF
                                    131 	.globl _PIPEN
                                    132 	.globl _PINEN
                                    133 	.globl _PICON
                                    134 	.globl _ADCCON0
                                    135 	.globl _C1H
                                    136 	.globl _C1L
                                    137 	.globl _C0H
                                    138 	.globl _C0L
                                    139 	.globl _ADCDLY
                                    140 	.globl _ADCCON2
                                    141 	.globl _ADCCON1
                                    142 	.globl _ACC
                                    143 	.globl _PWMCON1
                                    144 	.globl _PIOCON0
                                    145 	.globl _PWM3L
                                    146 	.globl _PWM2L
                                    147 	.globl _PWM1L
                                    148 	.globl _PWM0L
                                    149 	.globl _PWMPL
                                    150 	.globl _PWMCON0
                                    151 	.globl _FBD
                                    152 	.globl _PNP
                                    153 	.globl _PWM3H
                                    154 	.globl _PWM2H
                                    155 	.globl _PWM1H
                                    156 	.globl _PWM0H
                                    157 	.globl _PWMPH
                                    158 	.globl _PSW
                                    159 	.globl _ADCMPH
                                    160 	.globl _ADCMPL
                                    161 	.globl _PWM5L
                                    162 	.globl _TH2
                                    163 	.globl _PWM4L
                                    164 	.globl _TL2
                                    165 	.globl _RCMP2H
                                    166 	.globl _RCMP2L
                                    167 	.globl _T2MOD
                                    168 	.globl _T2CON
                                    169 	.globl _TA
                                    170 	.globl _PIOCON1
                                    171 	.globl _RH3
                                    172 	.globl _PWM5H
                                    173 	.globl _RL3
                                    174 	.globl _PWM4H
                                    175 	.globl _T3CON
                                    176 	.globl _ADCRH
                                    177 	.globl _ADCRL
                                    178 	.globl _I2ADDR
                                    179 	.globl _I2CON
                                    180 	.globl _I2TOC
                                    181 	.globl _I2CLK
                                    182 	.globl _I2STAT
                                    183 	.globl _I2DAT
                                    184 	.globl _SADDR_1
                                    185 	.globl _SADEN_1
                                    186 	.globl _SADEN
                                    187 	.globl _IP
                                    188 	.globl _PWMINTC
                                    189 	.globl _IPH
                                    190 	.globl _P2S
                                    191 	.globl _P1SR
                                    192 	.globl _P1M2
                                    193 	.globl _P1S
                                    194 	.globl _P1M1
                                    195 	.globl _P0SR
                                    196 	.globl _P0M2
                                    197 	.globl _P0S
                                    198 	.globl _P0M1
                                    199 	.globl _P3
                                    200 	.globl _IAPCN
                                    201 	.globl _IAPFD
                                    202 	.globl _P3SR
                                    203 	.globl _P3M2
                                    204 	.globl _P3S
                                    205 	.globl _P3M1
                                    206 	.globl _BODCON1
                                    207 	.globl _WDCON
                                    208 	.globl _SADDR
                                    209 	.globl _IE
                                    210 	.globl _IAPAH
                                    211 	.globl _IAPAL
                                    212 	.globl _IAPUEN
                                    213 	.globl _IAPTRG
                                    214 	.globl _BODCON0
                                    215 	.globl _AUXR1
                                    216 	.globl _P2
                                    217 	.globl _CHPCON
                                    218 	.globl _EIE1
                                    219 	.globl _EIE
                                    220 	.globl _SBUF_1
                                    221 	.globl _SBUF
                                    222 	.globl _SCON
                                    223 	.globl _CKEN
                                    224 	.globl _CKSWT
                                    225 	.globl _CKDIV
                                    226 	.globl _CAPCON2
                                    227 	.globl _CAPCON1
                                    228 	.globl _CAPCON0
                                    229 	.globl _SFRS
                                    230 	.globl _P1
                                    231 	.globl _WKCON
                                    232 	.globl _CKCON
                                    233 	.globl _TH1
                                    234 	.globl _TH0
                                    235 	.globl _TL1
                                    236 	.globl _TL0
                                    237 	.globl _TMOD
                                    238 	.globl _TCON
                                    239 	.globl _PCON
                                    240 	.globl _RWK
                                    241 	.globl _RCTRIM1
                                    242 	.globl _RCTRIM0
                                    243 	.globl _DPH
                                    244 	.globl _DPL
                                    245 	.globl _SP
                                    246 	.globl _P0
                                    247 	.globl _Data
                                    248 	.globl _u8Data
                                    249 ;--------------------------------------------------------
                                    250 ; special function registers
                                    251 ;--------------------------------------------------------
                                    252 	.area RSEG    (ABS,DATA)
      000000                        253 	.org 0x0000
                           000080   254 _P0	=	0x0080
                           000081   255 _SP	=	0x0081
                           000082   256 _DPL	=	0x0082
                           000083   257 _DPH	=	0x0083
                           000084   258 _RCTRIM0	=	0x0084
                           000085   259 _RCTRIM1	=	0x0085
                           000086   260 _RWK	=	0x0086
                           000087   261 _PCON	=	0x0087
                           000088   262 _TCON	=	0x0088
                           000089   263 _TMOD	=	0x0089
                           00008A   264 _TL0	=	0x008a
                           00008B   265 _TL1	=	0x008b
                           00008C   266 _TH0	=	0x008c
                           00008D   267 _TH1	=	0x008d
                           00008E   268 _CKCON	=	0x008e
                           00008F   269 _WKCON	=	0x008f
                           000090   270 _P1	=	0x0090
                           000091   271 _SFRS	=	0x0091
                           000092   272 _CAPCON0	=	0x0092
                           000093   273 _CAPCON1	=	0x0093
                           000094   274 _CAPCON2	=	0x0094
                           000095   275 _CKDIV	=	0x0095
                           000096   276 _CKSWT	=	0x0096
                           000097   277 _CKEN	=	0x0097
                           000098   278 _SCON	=	0x0098
                           000099   279 _SBUF	=	0x0099
                           00009A   280 _SBUF_1	=	0x009a
                           00009B   281 _EIE	=	0x009b
                           00009C   282 _EIE1	=	0x009c
                           00009F   283 _CHPCON	=	0x009f
                           0000A0   284 _P2	=	0x00a0
                           0000A2   285 _AUXR1	=	0x00a2
                           0000A3   286 _BODCON0	=	0x00a3
                           0000A4   287 _IAPTRG	=	0x00a4
                           0000A5   288 _IAPUEN	=	0x00a5
                           0000A6   289 _IAPAL	=	0x00a6
                           0000A7   290 _IAPAH	=	0x00a7
                           0000A8   291 _IE	=	0x00a8
                           0000A9   292 _SADDR	=	0x00a9
                           0000AA   293 _WDCON	=	0x00aa
                           0000AB   294 _BODCON1	=	0x00ab
                           0000AC   295 _P3M1	=	0x00ac
                           0000AC   296 _P3S	=	0x00ac
                           0000AD   297 _P3M2	=	0x00ad
                           0000AD   298 _P3SR	=	0x00ad
                           0000AE   299 _IAPFD	=	0x00ae
                           0000AF   300 _IAPCN	=	0x00af
                           0000B0   301 _P3	=	0x00b0
                           0000B1   302 _P0M1	=	0x00b1
                           0000B1   303 _P0S	=	0x00b1
                           0000B2   304 _P0M2	=	0x00b2
                           0000B2   305 _P0SR	=	0x00b2
                           0000B3   306 _P1M1	=	0x00b3
                           0000B3   307 _P1S	=	0x00b3
                           0000B4   308 _P1M2	=	0x00b4
                           0000B4   309 _P1SR	=	0x00b4
                           0000B5   310 _P2S	=	0x00b5
                           0000B7   311 _IPH	=	0x00b7
                           0000B7   312 _PWMINTC	=	0x00b7
                           0000B8   313 _IP	=	0x00b8
                           0000B9   314 _SADEN	=	0x00b9
                           0000BA   315 _SADEN_1	=	0x00ba
                           0000BB   316 _SADDR_1	=	0x00bb
                           0000BC   317 _I2DAT	=	0x00bc
                           0000BD   318 _I2STAT	=	0x00bd
                           0000BE   319 _I2CLK	=	0x00be
                           0000BF   320 _I2TOC	=	0x00bf
                           0000C0   321 _I2CON	=	0x00c0
                           0000C1   322 _I2ADDR	=	0x00c1
                           0000C2   323 _ADCRL	=	0x00c2
                           0000C3   324 _ADCRH	=	0x00c3
                           0000C4   325 _T3CON	=	0x00c4
                           0000C4   326 _PWM4H	=	0x00c4
                           0000C5   327 _RL3	=	0x00c5
                           0000C5   328 _PWM5H	=	0x00c5
                           0000C6   329 _RH3	=	0x00c6
                           0000C6   330 _PIOCON1	=	0x00c6
                           0000C7   331 _TA	=	0x00c7
                           0000C8   332 _T2CON	=	0x00c8
                           0000C9   333 _T2MOD	=	0x00c9
                           0000CA   334 _RCMP2L	=	0x00ca
                           0000CB   335 _RCMP2H	=	0x00cb
                           0000CC   336 _TL2	=	0x00cc
                           0000CC   337 _PWM4L	=	0x00cc
                           0000CD   338 _TH2	=	0x00cd
                           0000CD   339 _PWM5L	=	0x00cd
                           0000CE   340 _ADCMPL	=	0x00ce
                           0000CF   341 _ADCMPH	=	0x00cf
                           0000D0   342 _PSW	=	0x00d0
                           0000D1   343 _PWMPH	=	0x00d1
                           0000D2   344 _PWM0H	=	0x00d2
                           0000D3   345 _PWM1H	=	0x00d3
                           0000D4   346 _PWM2H	=	0x00d4
                           0000D5   347 _PWM3H	=	0x00d5
                           0000D6   348 _PNP	=	0x00d6
                           0000D7   349 _FBD	=	0x00d7
                           0000D8   350 _PWMCON0	=	0x00d8
                           0000D9   351 _PWMPL	=	0x00d9
                           0000DA   352 _PWM0L	=	0x00da
                           0000DB   353 _PWM1L	=	0x00db
                           0000DC   354 _PWM2L	=	0x00dc
                           0000DD   355 _PWM3L	=	0x00dd
                           0000DE   356 _PIOCON0	=	0x00de
                           0000DF   357 _PWMCON1	=	0x00df
                           0000E0   358 _ACC	=	0x00e0
                           0000E1   359 _ADCCON1	=	0x00e1
                           0000E2   360 _ADCCON2	=	0x00e2
                           0000E3   361 _ADCDLY	=	0x00e3
                           0000E4   362 _C0L	=	0x00e4
                           0000E5   363 _C0H	=	0x00e5
                           0000E6   364 _C1L	=	0x00e6
                           0000E7   365 _C1H	=	0x00e7
                           0000E8   366 _ADCCON0	=	0x00e8
                           0000E9   367 _PICON	=	0x00e9
                           0000EA   368 _PINEN	=	0x00ea
                           0000EB   369 _PIPEN	=	0x00eb
                           0000EC   370 _PIF	=	0x00ec
                           0000ED   371 _C2L	=	0x00ed
                           0000EE   372 _C2H	=	0x00ee
                           0000EF   373 _EIP	=	0x00ef
                           0000F0   374 _B	=	0x00f0
                           0000F1   375 _CAPCON3	=	0x00f1
                           0000F2   376 _CAPCON4	=	0x00f2
                           0000F3   377 _SPCR	=	0x00f3
                           0000F3   378 _SPCR2	=	0x00f3
                           0000F4   379 _SPSR	=	0x00f4
                           0000F5   380 _SPDR	=	0x00f5
                           0000F6   381 _AINDIDS	=	0x00f6
                           0000F7   382 _EIPH	=	0x00f7
                           0000F8   383 _SCON_1	=	0x00f8
                           0000F9   384 _PDTEN	=	0x00f9
                           0000FA   385 _PDTCNT	=	0x00fa
                           0000FB   386 _PMEN	=	0x00fb
                           0000FC   387 _PMD	=	0x00fc
                           0000FE   388 _EIP1	=	0x00fe
                           0000FF   389 _EIPH1	=	0x00ff
                                    390 ;--------------------------------------------------------
                                    391 ; special function bits
                                    392 ;--------------------------------------------------------
                                    393 	.area RSEG    (ABS,DATA)
      000000                        394 	.org 0x0000
                           0000FF   395 _SM0_1	=	0x00ff
                           0000FF   396 _FE_1	=	0x00ff
                           0000FE   397 _SM1_1	=	0x00fe
                           0000FD   398 _SM2_1	=	0x00fd
                           0000FC   399 _REN_1	=	0x00fc
                           0000FB   400 _TB8_1	=	0x00fb
                           0000FA   401 _RB8_1	=	0x00fa
                           0000F9   402 _TI_1	=	0x00f9
                           0000F8   403 _RI_1	=	0x00f8
                           0000EF   404 _ADCF	=	0x00ef
                           0000EE   405 _ADCS	=	0x00ee
                           0000ED   406 _ETGSEL1	=	0x00ed
                           0000EC   407 _ETGSEL0	=	0x00ec
                           0000EB   408 _ADCHS3	=	0x00eb
                           0000EA   409 _ADCHS2	=	0x00ea
                           0000E9   410 _ADCHS1	=	0x00e9
                           0000E8   411 _ADCHS0	=	0x00e8
                           0000DF   412 _PWMRUN	=	0x00df
                           0000DE   413 _LOAD	=	0x00de
                           0000DD   414 _PWMF	=	0x00dd
                           0000DC   415 _CLRPWM	=	0x00dc
                           0000D7   416 _CY	=	0x00d7
                           0000D6   417 _AC	=	0x00d6
                           0000D5   418 _F0	=	0x00d5
                           0000D4   419 _RS1	=	0x00d4
                           0000D3   420 _RS0	=	0x00d3
                           0000D2   421 _OV	=	0x00d2
                           0000D0   422 _P	=	0x00d0
                           0000CF   423 _TF2	=	0x00cf
                           0000CA   424 _TR2	=	0x00ca
                           0000C8   425 _CM_RL2	=	0x00c8
                           0000C6   426 _I2CEN	=	0x00c6
                           0000C5   427 _STA	=	0x00c5
                           0000C4   428 _STO	=	0x00c4
                           0000C3   429 _SI	=	0x00c3
                           0000C2   430 _AA	=	0x00c2
                           0000C0   431 _I2CPX	=	0x00c0
                           0000BE   432 _PADC	=	0x00be
                           0000BD   433 _PBOD	=	0x00bd
                           0000BC   434 _PS	=	0x00bc
                           0000BB   435 _PT1	=	0x00bb
                           0000BA   436 _PX1	=	0x00ba
                           0000B9   437 _PT0	=	0x00b9
                           0000B8   438 _PX0	=	0x00b8
                           0000B0   439 _P30	=	0x00b0
                           0000AF   440 _EA	=	0x00af
                           0000AE   441 _EADC	=	0x00ae
                           0000AD   442 _EBOD	=	0x00ad
                           0000AC   443 _ES	=	0x00ac
                           0000AB   444 _ET1	=	0x00ab
                           0000AA   445 _EX1	=	0x00aa
                           0000A9   446 _ET0	=	0x00a9
                           0000A8   447 _EX0	=	0x00a8
                           0000A0   448 _P20	=	0x00a0
                           00009F   449 _SM0	=	0x009f
                           00009F   450 _FE	=	0x009f
                           00009E   451 _SM1	=	0x009e
                           00009D   452 _SM2	=	0x009d
                           00009C   453 _REN	=	0x009c
                           00009B   454 _TB8	=	0x009b
                           00009A   455 _RB8	=	0x009a
                           000099   456 _TI	=	0x0099
                           000098   457 _RI	=	0x0098
                           000097   458 _P17	=	0x0097
                           000096   459 _P16	=	0x0096
                           000096   460 _TXD_1	=	0x0096
                           000095   461 _P15	=	0x0095
                           000094   462 _P14	=	0x0094
                           000094   463 _SDA	=	0x0094
                           000093   464 _P13	=	0x0093
                           000093   465 _SCL	=	0x0093
                           000092   466 _P12	=	0x0092
                           000091   467 _P11	=	0x0091
                           000090   468 _P10	=	0x0090
                           00008F   469 _TF1	=	0x008f
                           00008E   470 _TR1	=	0x008e
                           00008D   471 _TF0	=	0x008d
                           00008C   472 _TR0	=	0x008c
                           00008B   473 _IE1	=	0x008b
                           00008A   474 _IT1	=	0x008a
                           000089   475 _IE0	=	0x0089
                           000088   476 _IT0	=	0x0088
                           000087   477 _P07	=	0x0087
                           000087   478 _RXD	=	0x0087
                           000086   479 _P06	=	0x0086
                           000086   480 _TXD	=	0x0086
                           000085   481 _P05	=	0x0085
                           000084   482 _P04	=	0x0084
                           000084   483 _STADC	=	0x0084
                           000083   484 _P03	=	0x0083
                           000082   485 _P02	=	0x0082
                           000082   486 _RXD_1	=	0x0082
                           000081   487 _P01	=	0x0081
                           000081   488 _MISO	=	0x0081
                           000080   489 _P00	=	0x0080
                           000080   490 _MOSI	=	0x0080
                                    491 ;--------------------------------------------------------
                                    492 ; overlayable register banks
                                    493 ;--------------------------------------------------------
                                    494 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        495 	.ds 8
                                    496 ;--------------------------------------------------------
                                    497 ; internal ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area DSEG    (DATA)
      000008                        500 _u8Data::
      000008                        501 	.ds 8
      000010                        502 _Data::
      000010                        503 	.ds 1
                                    504 ;--------------------------------------------------------
                                    505 ; overlayable items in internal ram
                                    506 ;--------------------------------------------------------
                                    507 ;--------------------------------------------------------
                                    508 ; Stack segment in internal ram
                                    509 ;--------------------------------------------------------
                                    510 	.area SSEG
      000018                        511 __start__stack:
      000018                        512 	.ds	1
                                    513 
                                    514 ;--------------------------------------------------------
                                    515 ; indirectly addressable internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area ISEG    (DATA)
                                    518 ;--------------------------------------------------------
                                    519 ; absolute internal ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area IABS    (ABS,DATA)
                                    522 	.area IABS    (ABS,DATA)
                                    523 ;--------------------------------------------------------
                                    524 ; bit data
                                    525 ;--------------------------------------------------------
                                    526 	.area BSEG    (BIT)
                                    527 ;--------------------------------------------------------
                                    528 ; paged external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area PSEG    (PAG,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; uninitialized external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XSEG    (XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; absolute external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XABS    (ABS,XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; initialized external ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area XISEG   (XDATA)
                                    543 	.area HOME    (CODE)
                                    544 	.area GSINIT0 (CODE)
                                    545 	.area GSINIT1 (CODE)
                                    546 	.area GSINIT2 (CODE)
                                    547 	.area GSINIT3 (CODE)
                                    548 	.area GSINIT4 (CODE)
                                    549 	.area GSINIT5 (CODE)
                                    550 	.area GSINIT  (CODE)
                                    551 	.area GSFINAL (CODE)
                                    552 	.area CSEG    (CODE)
                                    553 ;--------------------------------------------------------
                                    554 ; interrupt vector
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
      000000                        557 __interrupt_vect:
      000000 02 00 06         [24]  558 	ljmp	__sdcc_gsinit_startup
                                    559 ;--------------------------------------------------------
                                    560 ; global & static initialisations
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 	.globl __sdcc_gsinit_startup
                                    567 	.globl __sdcc_program_startup
                                    568 	.globl __start__stack
                                    569 	.globl __mcs51_genXINIT
                                    570 	.globl __mcs51_genXRAMCLEAR
                                    571 	.globl __mcs51_genRAMCLEAR
                                    572 ;	main.c:6: uint8_t u8Data[] = {
      00005F 75 08 7E         [24]  573 	mov	_u8Data,#0x7e
      000062 75 09 81         [24]  574 	mov	(_u8Data + 0x0001),#0x81
      000065 75 0A 91         [24]  575 	mov	(_u8Data + 0x0002),#0x91
      000068 75 0B A9         [24]  576 	mov	(_u8Data + 0x0003),#0xa9
      00006B 75 0C 91         [24]  577 	mov	(_u8Data + 0x0004),#0x91
      00006E 75 0D 81         [24]  578 	mov	(_u8Data + 0x0005),#0x81
      000071 75 0E 81         [24]  579 	mov	(_u8Data + 0x0006),#0x81
      000074 75 0F 7E         [24]  580 	mov	(_u8Data + 0x0007),#0x7e
                                    581 	.area GSFINAL (CODE)
      000077 02 00 03         [24]  582 	ljmp	__sdcc_program_startup
                                    583 ;--------------------------------------------------------
                                    584 ; Home
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
                                    587 	.area HOME    (CODE)
      000003                        588 __sdcc_program_startup:
      000003 02 00 7A         [24]  589 	ljmp	_main
                                    590 ;	return from main will return to caller
                                    591 ;--------------------------------------------------------
                                    592 ; code
                                    593 ;--------------------------------------------------------
                                    594 	.area CSEG    (CODE)
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'main'
                                    597 ;------------------------------------------------------------
                                    598 ;	main.c:10: void main(void)
                                    599 ;	-----------------------------------------
                                    600 ;	 function main
                                    601 ;	-----------------------------------------
      00007A                        602 _main:
                           000007   603 	ar7 = 0x07
                           000006   604 	ar6 = 0x06
                           000005   605 	ar5 = 0x05
                           000004   606 	ar4 = 0x04
                           000003   607 	ar3 = 0x03
                           000002   608 	ar2 = 0x02
                           000001   609 	ar1 = 0x01
                           000000   610 	ar0 = 0x00
                                    611 ;	main.c:14: P15_PUSHPULL_MODE;
      00007A 53 B3 DF         [24]  612 	anl	_P1M1,#0xdf
      00007D 43 B4 20         [24]  613 	orl	_P1M2,#0x20
                                    614 ;	main.c:15: P12_QUASI_MODE;
      000080 53 B3 FB         [24]  615 	anl	_P1M1,#0xfb
      000083 53 B4 FB         [24]  616 	anl	_P1M2,#0xfb
                                    617 ;	main.c:17: DelayT0_Init();
      000086 12 00 99         [24]  618 	lcall	_DelayT0_Init
                                    619 ;	main.c:18: SPI_Init();
      000089 12 00 F1         [24]  620 	lcall	_SPI_Init
                                    621 ;	main.c:19: P15 = 0;
                                    622 ;	assignBit
      00008C C2 95            [12]  623 	clr	_P15
                                    624 ;	main.c:23: while (1) {
      00008E                        625 00104$:
                                    626 ;	main.c:25: if(!P12)
      00008E 20 92 FD         [24]  627 	jb	_P12,00104$
                                    628 ;	main.c:27: SPI_Send(0x7E);
      000091 75 82 7E         [24]  629 	mov	dpl,#0x7e
      000094 12 01 31         [24]  630 	lcall	_SPI_Send
                                    631 ;	main.c:38: }
      000097 80 F5            [24]  632 	sjmp	00104$
                                    633 	.area CSEG    (CODE)
                                    634 	.area CONST   (CODE)
                                    635 	.area XINIT   (CODE)
                                    636 	.area CABS    (ABS,CODE)
