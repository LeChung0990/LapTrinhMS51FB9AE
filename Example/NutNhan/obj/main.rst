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
                                     11 	.globl _Exti_ISR
                                     12 	.globl _main
                                     13 	.globl _External_Int_Config
                                     14 	.globl _MOSI
                                     15 	.globl _P00
                                     16 	.globl _MISO
                                     17 	.globl _P01
                                     18 	.globl _RXD_1
                                     19 	.globl _P02
                                     20 	.globl _P03
                                     21 	.globl _STADC
                                     22 	.globl _P04
                                     23 	.globl _P05
                                     24 	.globl _TXD
                                     25 	.globl _P06
                                     26 	.globl _RXD
                                     27 	.globl _P07
                                     28 	.globl _IT0
                                     29 	.globl _IE0
                                     30 	.globl _IT1
                                     31 	.globl _IE1
                                     32 	.globl _TR0
                                     33 	.globl _TF0
                                     34 	.globl _TR1
                                     35 	.globl _TF1
                                     36 	.globl _P10
                                     37 	.globl _P11
                                     38 	.globl _P12
                                     39 	.globl _SCL
                                     40 	.globl _P13
                                     41 	.globl _SDA
                                     42 	.globl _P14
                                     43 	.globl _P15
                                     44 	.globl _TXD_1
                                     45 	.globl _P16
                                     46 	.globl _P17
                                     47 	.globl _RI
                                     48 	.globl _TI
                                     49 	.globl _RB8
                                     50 	.globl _TB8
                                     51 	.globl _REN
                                     52 	.globl _SM2
                                     53 	.globl _SM1
                                     54 	.globl _FE
                                     55 	.globl _SM0
                                     56 	.globl _P20
                                     57 	.globl _EX0
                                     58 	.globl _ET0
                                     59 	.globl _EX1
                                     60 	.globl _ET1
                                     61 	.globl _ES
                                     62 	.globl _EBOD
                                     63 	.globl _EADC
                                     64 	.globl _EA
                                     65 	.globl _P30
                                     66 	.globl _PX0
                                     67 	.globl _PT0
                                     68 	.globl _PX1
                                     69 	.globl _PT1
                                     70 	.globl _PS
                                     71 	.globl _PBOD
                                     72 	.globl _PADC
                                     73 	.globl _I2CPX
                                     74 	.globl _AA
                                     75 	.globl _SI
                                     76 	.globl _STO
                                     77 	.globl _STA
                                     78 	.globl _I2CEN
                                     79 	.globl _CM_RL2
                                     80 	.globl _TR2
                                     81 	.globl _TF2
                                     82 	.globl _P
                                     83 	.globl _OV
                                     84 	.globl _RS0
                                     85 	.globl _RS1
                                     86 	.globl _F0
                                     87 	.globl _AC
                                     88 	.globl _CY
                                     89 	.globl _CLRPWM
                                     90 	.globl _PWMF
                                     91 	.globl _LOAD
                                     92 	.globl _PWMRUN
                                     93 	.globl _ADCHS0
                                     94 	.globl _ADCHS1
                                     95 	.globl _ADCHS2
                                     96 	.globl _ADCHS3
                                     97 	.globl _ETGSEL0
                                     98 	.globl _ETGSEL1
                                     99 	.globl _ADCS
                                    100 	.globl _ADCF
                                    101 	.globl _RI_1
                                    102 	.globl _TI_1
                                    103 	.globl _RB8_1
                                    104 	.globl _TB8_1
                                    105 	.globl _REN_1
                                    106 	.globl _SM2_1
                                    107 	.globl _SM1_1
                                    108 	.globl _FE_1
                                    109 	.globl _SM0_1
                                    110 	.globl _EIPH1
                                    111 	.globl _EIP1
                                    112 	.globl _PMD
                                    113 	.globl _PMEN
                                    114 	.globl _PDTCNT
                                    115 	.globl _PDTEN
                                    116 	.globl _SCON_1
                                    117 	.globl _EIPH
                                    118 	.globl _AINDIDS
                                    119 	.globl _SPDR
                                    120 	.globl _SPSR
                                    121 	.globl _SPCR2
                                    122 	.globl _SPCR
                                    123 	.globl _CAPCON4
                                    124 	.globl _CAPCON3
                                    125 	.globl _B
                                    126 	.globl _EIP
                                    127 	.globl _C2H
                                    128 	.globl _C2L
                                    129 	.globl _PIF
                                    130 	.globl _PIPEN
                                    131 	.globl _PINEN
                                    132 	.globl _PICON
                                    133 	.globl _ADCCON0
                                    134 	.globl _C1H
                                    135 	.globl _C1L
                                    136 	.globl _C0H
                                    137 	.globl _C0L
                                    138 	.globl _ADCDLY
                                    139 	.globl _ADCCON2
                                    140 	.globl _ADCCON1
                                    141 	.globl _ACC
                                    142 	.globl _PWMCON1
                                    143 	.globl _PIOCON0
                                    144 	.globl _PWM3L
                                    145 	.globl _PWM2L
                                    146 	.globl _PWM1L
                                    147 	.globl _PWM0L
                                    148 	.globl _PWMPL
                                    149 	.globl _PWMCON0
                                    150 	.globl _FBD
                                    151 	.globl _PNP
                                    152 	.globl _PWM3H
                                    153 	.globl _PWM2H
                                    154 	.globl _PWM1H
                                    155 	.globl _PWM0H
                                    156 	.globl _PWMPH
                                    157 	.globl _PSW
                                    158 	.globl _ADCMPH
                                    159 	.globl _ADCMPL
                                    160 	.globl _PWM5L
                                    161 	.globl _TH2
                                    162 	.globl _PWM4L
                                    163 	.globl _TL2
                                    164 	.globl _RCMP2H
                                    165 	.globl _RCMP2L
                                    166 	.globl _T2MOD
                                    167 	.globl _T2CON
                                    168 	.globl _TA
                                    169 	.globl _PIOCON1
                                    170 	.globl _RH3
                                    171 	.globl _PWM5H
                                    172 	.globl _RL3
                                    173 	.globl _PWM4H
                                    174 	.globl _T3CON
                                    175 	.globl _ADCRH
                                    176 	.globl _ADCRL
                                    177 	.globl _I2ADDR
                                    178 	.globl _I2CON
                                    179 	.globl _I2TOC
                                    180 	.globl _I2CLK
                                    181 	.globl _I2STAT
                                    182 	.globl _I2DAT
                                    183 	.globl _SADDR_1
                                    184 	.globl _SADEN_1
                                    185 	.globl _SADEN
                                    186 	.globl _IP
                                    187 	.globl _PWMINTC
                                    188 	.globl _IPH
                                    189 	.globl _P2S
                                    190 	.globl _P1SR
                                    191 	.globl _P1M2
                                    192 	.globl _P1S
                                    193 	.globl _P1M1
                                    194 	.globl _P0SR
                                    195 	.globl _P0M2
                                    196 	.globl _P0S
                                    197 	.globl _P0M1
                                    198 	.globl _P3
                                    199 	.globl _IAPCN
                                    200 	.globl _IAPFD
                                    201 	.globl _P3SR
                                    202 	.globl _P3M2
                                    203 	.globl _P3S
                                    204 	.globl _P3M1
                                    205 	.globl _BODCON1
                                    206 	.globl _WDCON
                                    207 	.globl _SADDR
                                    208 	.globl _IE
                                    209 	.globl _IAPAH
                                    210 	.globl _IAPAL
                                    211 	.globl _IAPUEN
                                    212 	.globl _IAPTRG
                                    213 	.globl _BODCON0
                                    214 	.globl _AUXR1
                                    215 	.globl _P2
                                    216 	.globl _CHPCON
                                    217 	.globl _EIE1
                                    218 	.globl _EIE
                                    219 	.globl _SBUF_1
                                    220 	.globl _SBUF
                                    221 	.globl _SCON
                                    222 	.globl _CKEN
                                    223 	.globl _CKSWT
                                    224 	.globl _CKDIV
                                    225 	.globl _CAPCON2
                                    226 	.globl _CAPCON1
                                    227 	.globl _CAPCON0
                                    228 	.globl _SFRS
                                    229 	.globl _P1
                                    230 	.globl _WKCON
                                    231 	.globl _CKCON
                                    232 	.globl _TH1
                                    233 	.globl _TH0
                                    234 	.globl _TL1
                                    235 	.globl _TL0
                                    236 	.globl _TMOD
                                    237 	.globl _TCON
                                    238 	.globl _PCON
                                    239 	.globl _RWK
                                    240 	.globl _RCTRIM1
                                    241 	.globl _RCTRIM0
                                    242 	.globl _DPH
                                    243 	.globl _DPL
                                    244 	.globl _SP
                                    245 	.globl _P0
                                    246 	.globl _APROM
                                    247 ;--------------------------------------------------------
                                    248 ; special function registers
                                    249 ;--------------------------------------------------------
                                    250 	.area RSEG    (ABS,DATA)
      000000                        251 	.org 0x0000
                           000080   252 _P0	=	0x0080
                           000081   253 _SP	=	0x0081
                           000082   254 _DPL	=	0x0082
                           000083   255 _DPH	=	0x0083
                           000084   256 _RCTRIM0	=	0x0084
                           000085   257 _RCTRIM1	=	0x0085
                           000086   258 _RWK	=	0x0086
                           000087   259 _PCON	=	0x0087
                           000088   260 _TCON	=	0x0088
                           000089   261 _TMOD	=	0x0089
                           00008A   262 _TL0	=	0x008a
                           00008B   263 _TL1	=	0x008b
                           00008C   264 _TH0	=	0x008c
                           00008D   265 _TH1	=	0x008d
                           00008E   266 _CKCON	=	0x008e
                           00008F   267 _WKCON	=	0x008f
                           000090   268 _P1	=	0x0090
                           000091   269 _SFRS	=	0x0091
                           000092   270 _CAPCON0	=	0x0092
                           000093   271 _CAPCON1	=	0x0093
                           000094   272 _CAPCON2	=	0x0094
                           000095   273 _CKDIV	=	0x0095
                           000096   274 _CKSWT	=	0x0096
                           000097   275 _CKEN	=	0x0097
                           000098   276 _SCON	=	0x0098
                           000099   277 _SBUF	=	0x0099
                           00009A   278 _SBUF_1	=	0x009a
                           00009B   279 _EIE	=	0x009b
                           00009C   280 _EIE1	=	0x009c
                           00009F   281 _CHPCON	=	0x009f
                           0000A0   282 _P2	=	0x00a0
                           0000A2   283 _AUXR1	=	0x00a2
                           0000A3   284 _BODCON0	=	0x00a3
                           0000A4   285 _IAPTRG	=	0x00a4
                           0000A5   286 _IAPUEN	=	0x00a5
                           0000A6   287 _IAPAL	=	0x00a6
                           0000A7   288 _IAPAH	=	0x00a7
                           0000A8   289 _IE	=	0x00a8
                           0000A9   290 _SADDR	=	0x00a9
                           0000AA   291 _WDCON	=	0x00aa
                           0000AB   292 _BODCON1	=	0x00ab
                           0000AC   293 _P3M1	=	0x00ac
                           0000AC   294 _P3S	=	0x00ac
                           0000AD   295 _P3M2	=	0x00ad
                           0000AD   296 _P3SR	=	0x00ad
                           0000AE   297 _IAPFD	=	0x00ae
                           0000AF   298 _IAPCN	=	0x00af
                           0000B0   299 _P3	=	0x00b0
                           0000B1   300 _P0M1	=	0x00b1
                           0000B1   301 _P0S	=	0x00b1
                           0000B2   302 _P0M2	=	0x00b2
                           0000B2   303 _P0SR	=	0x00b2
                           0000B3   304 _P1M1	=	0x00b3
                           0000B3   305 _P1S	=	0x00b3
                           0000B4   306 _P1M2	=	0x00b4
                           0000B4   307 _P1SR	=	0x00b4
                           0000B5   308 _P2S	=	0x00b5
                           0000B7   309 _IPH	=	0x00b7
                           0000B7   310 _PWMINTC	=	0x00b7
                           0000B8   311 _IP	=	0x00b8
                           0000B9   312 _SADEN	=	0x00b9
                           0000BA   313 _SADEN_1	=	0x00ba
                           0000BB   314 _SADDR_1	=	0x00bb
                           0000BC   315 _I2DAT	=	0x00bc
                           0000BD   316 _I2STAT	=	0x00bd
                           0000BE   317 _I2CLK	=	0x00be
                           0000BF   318 _I2TOC	=	0x00bf
                           0000C0   319 _I2CON	=	0x00c0
                           0000C1   320 _I2ADDR	=	0x00c1
                           0000C2   321 _ADCRL	=	0x00c2
                           0000C3   322 _ADCRH	=	0x00c3
                           0000C4   323 _T3CON	=	0x00c4
                           0000C4   324 _PWM4H	=	0x00c4
                           0000C5   325 _RL3	=	0x00c5
                           0000C5   326 _PWM5H	=	0x00c5
                           0000C6   327 _RH3	=	0x00c6
                           0000C6   328 _PIOCON1	=	0x00c6
                           0000C7   329 _TA	=	0x00c7
                           0000C8   330 _T2CON	=	0x00c8
                           0000C9   331 _T2MOD	=	0x00c9
                           0000CA   332 _RCMP2L	=	0x00ca
                           0000CB   333 _RCMP2H	=	0x00cb
                           0000CC   334 _TL2	=	0x00cc
                           0000CC   335 _PWM4L	=	0x00cc
                           0000CD   336 _TH2	=	0x00cd
                           0000CD   337 _PWM5L	=	0x00cd
                           0000CE   338 _ADCMPL	=	0x00ce
                           0000CF   339 _ADCMPH	=	0x00cf
                           0000D0   340 _PSW	=	0x00d0
                           0000D1   341 _PWMPH	=	0x00d1
                           0000D2   342 _PWM0H	=	0x00d2
                           0000D3   343 _PWM1H	=	0x00d3
                           0000D4   344 _PWM2H	=	0x00d4
                           0000D5   345 _PWM3H	=	0x00d5
                           0000D6   346 _PNP	=	0x00d6
                           0000D7   347 _FBD	=	0x00d7
                           0000D8   348 _PWMCON0	=	0x00d8
                           0000D9   349 _PWMPL	=	0x00d9
                           0000DA   350 _PWM0L	=	0x00da
                           0000DB   351 _PWM1L	=	0x00db
                           0000DC   352 _PWM2L	=	0x00dc
                           0000DD   353 _PWM3L	=	0x00dd
                           0000DE   354 _PIOCON0	=	0x00de
                           0000DF   355 _PWMCON1	=	0x00df
                           0000E0   356 _ACC	=	0x00e0
                           0000E1   357 _ADCCON1	=	0x00e1
                           0000E2   358 _ADCCON2	=	0x00e2
                           0000E3   359 _ADCDLY	=	0x00e3
                           0000E4   360 _C0L	=	0x00e4
                           0000E5   361 _C0H	=	0x00e5
                           0000E6   362 _C1L	=	0x00e6
                           0000E7   363 _C1H	=	0x00e7
                           0000E8   364 _ADCCON0	=	0x00e8
                           0000E9   365 _PICON	=	0x00e9
                           0000EA   366 _PINEN	=	0x00ea
                           0000EB   367 _PIPEN	=	0x00eb
                           0000EC   368 _PIF	=	0x00ec
                           0000ED   369 _C2L	=	0x00ed
                           0000EE   370 _C2H	=	0x00ee
                           0000EF   371 _EIP	=	0x00ef
                           0000F0   372 _B	=	0x00f0
                           0000F1   373 _CAPCON3	=	0x00f1
                           0000F2   374 _CAPCON4	=	0x00f2
                           0000F3   375 _SPCR	=	0x00f3
                           0000F3   376 _SPCR2	=	0x00f3
                           0000F4   377 _SPSR	=	0x00f4
                           0000F5   378 _SPDR	=	0x00f5
                           0000F6   379 _AINDIDS	=	0x00f6
                           0000F7   380 _EIPH	=	0x00f7
                           0000F8   381 _SCON_1	=	0x00f8
                           0000F9   382 _PDTEN	=	0x00f9
                           0000FA   383 _PDTCNT	=	0x00fa
                           0000FB   384 _PMEN	=	0x00fb
                           0000FC   385 _PMD	=	0x00fc
                           0000FE   386 _EIP1	=	0x00fe
                           0000FF   387 _EIPH1	=	0x00ff
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000FF   393 _SM0_1	=	0x00ff
                           0000FF   394 _FE_1	=	0x00ff
                           0000FE   395 _SM1_1	=	0x00fe
                           0000FD   396 _SM2_1	=	0x00fd
                           0000FC   397 _REN_1	=	0x00fc
                           0000FB   398 _TB8_1	=	0x00fb
                           0000FA   399 _RB8_1	=	0x00fa
                           0000F9   400 _TI_1	=	0x00f9
                           0000F8   401 _RI_1	=	0x00f8
                           0000EF   402 _ADCF	=	0x00ef
                           0000EE   403 _ADCS	=	0x00ee
                           0000ED   404 _ETGSEL1	=	0x00ed
                           0000EC   405 _ETGSEL0	=	0x00ec
                           0000EB   406 _ADCHS3	=	0x00eb
                           0000EA   407 _ADCHS2	=	0x00ea
                           0000E9   408 _ADCHS1	=	0x00e9
                           0000E8   409 _ADCHS0	=	0x00e8
                           0000DF   410 _PWMRUN	=	0x00df
                           0000DE   411 _LOAD	=	0x00de
                           0000DD   412 _PWMF	=	0x00dd
                           0000DC   413 _CLRPWM	=	0x00dc
                           0000D7   414 _CY	=	0x00d7
                           0000D6   415 _AC	=	0x00d6
                           0000D5   416 _F0	=	0x00d5
                           0000D4   417 _RS1	=	0x00d4
                           0000D3   418 _RS0	=	0x00d3
                           0000D2   419 _OV	=	0x00d2
                           0000D0   420 _P	=	0x00d0
                           0000CF   421 _TF2	=	0x00cf
                           0000CA   422 _TR2	=	0x00ca
                           0000C8   423 _CM_RL2	=	0x00c8
                           0000C6   424 _I2CEN	=	0x00c6
                           0000C5   425 _STA	=	0x00c5
                           0000C4   426 _STO	=	0x00c4
                           0000C3   427 _SI	=	0x00c3
                           0000C2   428 _AA	=	0x00c2
                           0000C0   429 _I2CPX	=	0x00c0
                           0000BE   430 _PADC	=	0x00be
                           0000BD   431 _PBOD	=	0x00bd
                           0000BC   432 _PS	=	0x00bc
                           0000BB   433 _PT1	=	0x00bb
                           0000BA   434 _PX1	=	0x00ba
                           0000B9   435 _PT0	=	0x00b9
                           0000B8   436 _PX0	=	0x00b8
                           0000B0   437 _P30	=	0x00b0
                           0000AF   438 _EA	=	0x00af
                           0000AE   439 _EADC	=	0x00ae
                           0000AD   440 _EBOD	=	0x00ad
                           0000AC   441 _ES	=	0x00ac
                           0000AB   442 _ET1	=	0x00ab
                           0000AA   443 _EX1	=	0x00aa
                           0000A9   444 _ET0	=	0x00a9
                           0000A8   445 _EX0	=	0x00a8
                           0000A0   446 _P20	=	0x00a0
                           00009F   447 _SM0	=	0x009f
                           00009F   448 _FE	=	0x009f
                           00009E   449 _SM1	=	0x009e
                           00009D   450 _SM2	=	0x009d
                           00009C   451 _REN	=	0x009c
                           00009B   452 _TB8	=	0x009b
                           00009A   453 _RB8	=	0x009a
                           000099   454 _TI	=	0x0099
                           000098   455 _RI	=	0x0098
                           000097   456 _P17	=	0x0097
                           000096   457 _P16	=	0x0096
                           000096   458 _TXD_1	=	0x0096
                           000095   459 _P15	=	0x0095
                           000094   460 _P14	=	0x0094
                           000094   461 _SDA	=	0x0094
                           000093   462 _P13	=	0x0093
                           000093   463 _SCL	=	0x0093
                           000092   464 _P12	=	0x0092
                           000091   465 _P11	=	0x0091
                           000090   466 _P10	=	0x0090
                           00008F   467 _TF1	=	0x008f
                           00008E   468 _TR1	=	0x008e
                           00008D   469 _TF0	=	0x008d
                           00008C   470 _TR0	=	0x008c
                           00008B   471 _IE1	=	0x008b
                           00008A   472 _IT1	=	0x008a
                           000089   473 _IE0	=	0x0089
                           000088   474 _IT0	=	0x0088
                           000087   475 _P07	=	0x0087
                           000087   476 _RXD	=	0x0087
                           000086   477 _P06	=	0x0086
                           000086   478 _TXD	=	0x0086
                           000085   479 _P05	=	0x0085
                           000084   480 _P04	=	0x0084
                           000084   481 _STADC	=	0x0084
                           000083   482 _P03	=	0x0083
                           000082   483 _P02	=	0x0082
                           000082   484 _RXD_1	=	0x0082
                           000081   485 _P01	=	0x0081
                           000081   486 _MISO	=	0x0081
                           000080   487 _P00	=	0x0080
                           000080   488 _MOSI	=	0x0080
                                    489 ;--------------------------------------------------------
                                    490 ; overlayable register banks
                                    491 ;--------------------------------------------------------
                                    492 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        493 	.ds 8
                                    494 ;--------------------------------------------------------
                                    495 ; internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area DSEG    (DATA)
                                    498 ;--------------------------------------------------------
                                    499 ; overlayable items in internal ram
                                    500 ;--------------------------------------------------------
                                    501 ;--------------------------------------------------------
                                    502 ; Stack segment in internal ram
                                    503 ;--------------------------------------------------------
                                    504 	.area SSEG
      00000A                        505 __start__stack:
      00000A                        506 	.ds	1
                                    507 
                                    508 ;--------------------------------------------------------
                                    509 ; indirectly addressable internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area ISEG    (DATA)
                                    512 ;--------------------------------------------------------
                                    513 ; absolute internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area IABS    (ABS,DATA)
                                    516 	.area IABS    (ABS,DATA)
                                    517 ;--------------------------------------------------------
                                    518 ; bit data
                                    519 ;--------------------------------------------------------
                                    520 	.area BSEG    (BIT)
                                    521 ;--------------------------------------------------------
                                    522 ; paged external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area PSEG    (PAG,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; uninitialized external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XSEG    (XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; absolute external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XABS    (ABS,XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; initialized external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XISEG   (XDATA)
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT0 (CODE)
                                    539 	.area GSINIT1 (CODE)
                                    540 	.area GSINIT2 (CODE)
                                    541 	.area GSINIT3 (CODE)
                                    542 	.area GSINIT4 (CODE)
                                    543 	.area GSINIT5 (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.area GSFINAL (CODE)
                                    546 	.area CSEG    (CODE)
                                    547 ;--------------------------------------------------------
                                    548 ; interrupt vector
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
      000000                        551 __interrupt_vect:
      000000 02 00 41         [24]  552 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  553 	reti
      000004                        554 	.ds	7
      00000B 32               [24]  555 	reti
      00000C                        556 	.ds	7
      000013 32               [24]  557 	reti
      000014                        558 	.ds	7
      00001B 32               [24]  559 	reti
      00001C                        560 	.ds	7
      000023 32               [24]  561 	reti
      000024                        562 	.ds	7
      00002B 32               [24]  563 	reti
      00002C                        564 	.ds	7
      000033 32               [24]  565 	reti
      000034                        566 	.ds	7
      00003B 02 00 B7         [24]  567 	ljmp	_Exti_ISR
                                    568 ;--------------------------------------------------------
                                    569 ; global & static initialisations
                                    570 ;--------------------------------------------------------
                                    571 	.area HOME    (CODE)
                                    572 	.area GSINIT  (CODE)
                                    573 	.area GSFINAL (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.globl __sdcc_gsinit_startup
                                    576 	.globl __sdcc_program_startup
                                    577 	.globl __start__stack
                                    578 	.globl __mcs51_genXINIT
                                    579 	.globl __mcs51_genXRAMCLEAR
                                    580 	.globl __mcs51_genRAMCLEAR
                                    581 	.area GSFINAL (CODE)
      00009A 02 00 3E         [24]  582 	ljmp	__sdcc_program_startup
                                    583 ;--------------------------------------------------------
                                    584 ; Home
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
                                    587 	.area HOME    (CODE)
      00003E                        588 __sdcc_program_startup:
      00003E 02 00 A7         [24]  589 	ljmp	_main
                                    590 ;	return from main will return to caller
                                    591 ;--------------------------------------------------------
                                    592 ; code
                                    593 ;--------------------------------------------------------
                                    594 	.area CSEG    (CODE)
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'External_Int_Config'
                                    597 ;------------------------------------------------------------
                                    598 ;	main.c:10: void External_Int_Config(void)
                                    599 ;	-----------------------------------------
                                    600 ;	 function External_Int_Config
                                    601 ;	-----------------------------------------
      00009D                        602 _External_Int_Config:
                           000007   603 	ar7 = 0x07
                           000006   604 	ar6 = 0x06
                           000005   605 	ar5 = 0x05
                           000004   606 	ar4 = 0x04
                           000003   607 	ar3 = 0x03
                           000002   608 	ar2 = 0x02
                           000001   609 	ar1 = 0x01
                           000000   610 	ar0 = 0x00
                                    611 ;	main.c:13: set_PICON_PIT1;	  /*Edge triggered.*/
      00009D 43 E9 08         [24]  612 	orl	_PICON,#0x08
                                    613 ;	main.c:14: set_PINEN_PINEN1; /*Low-level/falling edge detect Enabled*/
      0000A0 43 EA 02         [24]  614 	orl	_PINEN,#0x02
                                    615 ;	main.c:15: set_PICON_PIPS0;
      0000A3 43 E9 01         [24]  616 	orl	_PICON,#0x01
                                    617 ;	main.c:22: }
      0000A6 22               [24]  618 	ret
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'main'
                                    621 ;------------------------------------------------------------
                                    622 ;	main.c:24: void main(void)
                                    623 ;	-----------------------------------------
                                    624 ;	 function main
                                    625 ;	-----------------------------------------
      0000A7                        626 _main:
                                    627 ;	main.c:29: P15_PUSHPULL_MODE;
      0000A7 53 B3 DF         [24]  628 	anl	_P1M1,#0xdf
      0000AA 43 B4 20         [24]  629 	orl	_P1M2,#0x20
                                    630 ;	main.c:31: P15 = 0;
                                    631 ;	assignBit
      0000AD C2 95            [12]  632 	clr	_P15
                                    633 ;	main.c:32: External_Int_Config();
      0000AF 12 00 9D         [24]  634 	lcall	_External_Int_Config
                                    635 ;	main.c:34: APROM();
      0000B2 12 00 BD         [24]  636 	lcall	_APROM
                                    637 ;	main.c:35: while (1)
      0000B5                        638 00102$:
                                    639 ;	main.c:46: }
      0000B5 80 FE            [24]  640 	sjmp	00102$
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'Exti_ISR'
                                    643 ;------------------------------------------------------------
                                    644 ;	main.c:49: void Exti_ISR(void) __interrupt(7)
                                    645 ;	-----------------------------------------
                                    646 ;	 function Exti_ISR
                                    647 ;	-----------------------------------------
      0000B7                        648 _Exti_ISR:
                                    649 ;	main.c:51: PIF &= ~(1 << 1); /*clear Interrupt Flags*/
      0000B7 53 EC FD         [24]  650 	anl	_PIF,#0xfd
                                    651 ;	main.c:53: P15 = 1;
                                    652 ;	assignBit
      0000BA D2 95            [12]  653 	setb	_P15
                                    654 ;	main.c:54: }
      0000BC 32               [24]  655 	reti
                                    656 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    657 ;	eliminated unneeded push/pop not_psw
                                    658 ;	eliminated unneeded push/pop dpl
                                    659 ;	eliminated unneeded push/pop dph
                                    660 ;	eliminated unneeded push/pop b
                                    661 ;	eliminated unneeded push/pop acc
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'APROM'
                                    664 ;------------------------------------------------------------
                                    665 ;	main.c:55: void APROM(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function APROM
                                    668 ;	-----------------------------------------
      0000BD                        669 _APROM:
                                    670 ;	main.c:57: TA = 0xAA; // CHPCON is TA protected
      0000BD 75 C7 AA         [24]  671 	mov	_TA,#0xaa
                                    672 ;	main.c:58: TA = 0x55;
      0000C0 75 C7 55         [24]  673 	mov	_TA,#0x55
                                    674 ;	main.c:59: CHPCON |= 0x01; // IAPEN = 1, enable IAP mode
      0000C3 43 9F 01         [24]  675 	orl	_CHPCON,#0x01
                                    676 ;	main.c:60: TA = 0Xaa;		// IAPUEN is TA protected
      0000C6 75 C7 AA         [24]  677 	mov	_TA,#0xaa
                                    678 ;	main.c:61: TA = 0x55;
      0000C9 75 C7 55         [24]  679 	mov	_TA,#0x55
                                    680 ;	main.c:62: IAPUEN |= 0x01; // APUEN = 1, enable APROM update
      0000CC 43 A5 01         [24]  681 	orl	_IAPUEN,#0x01
                                    682 ;	main.c:63: IAPCN = 0x22;	// Erase page 200h~27Fh
      0000CF 75 AF 22         [24]  683 	mov	_IAPCN,#0x22
                                    684 ;	main.c:64: IAPAH = 0x02;
      0000D2 75 A7 02         [24]  685 	mov	_IAPAH,#0x02
                                    686 ;	main.c:65: IAPAL = 0x00;
      0000D5 75 A6 00         [24]  687 	mov	_IAPAL,#0x00
                                    688 ;	main.c:66: IAPFD = 0Xff;
      0000D8 75 AE FF         [24]  689 	mov	_IAPFD,#0xff
                                    690 ;	main.c:67: TA = 0Xaa; // IAPTRG is TA protected
      0000DB 75 C7 AA         [24]  691 	mov	_TA,#0xaa
                                    692 ;	main.c:68: TA = 0x55;
      0000DE 75 C7 55         [24]  693 	mov	_TA,#0x55
                                    694 ;	main.c:69: IAPTRG |= 0x01; // write ‘1’ to IAPGO to trigger IAP process
      0000E1 43 A4 01         [24]  695 	orl	_IAPTRG,#0x01
                                    696 ;	main.c:70: IAPCN = 0x21;	// Program 201h with 55h
      0000E4 75 AF 21         [24]  697 	mov	_IAPCN,#0x21
                                    698 ;	main.c:71: IAPAH = 0x02;
      0000E7 75 A7 02         [24]  699 	mov	_IAPAH,#0x02
                                    700 ;	main.c:72: IAPAL = 0x01;
      0000EA 75 A6 01         [24]  701 	mov	_IAPAL,#0x01
                                    702 ;	main.c:73: IAPFD = 0x55;
      0000ED 75 AE 55         [24]  703 	mov	_IAPFD,#0x55
                                    704 ;	main.c:74: TA = 0Xaa;
      0000F0 75 C7 AA         [24]  705 	mov	_TA,#0xaa
                                    706 ;	main.c:75: TA = 0x55;
      0000F3 75 C7 55         [24]  707 	mov	_TA,#0x55
                                    708 ;	main.c:76: IAPTRG |= 0x01; // write ‘1’ to IAPGO to trigger IAP process
      0000F6 43 A4 01         [24]  709 	orl	_IAPTRG,#0x01
                                    710 ;	main.c:77: TA = 0Xaa;		// IAPUEN is TA protected
      0000F9 75 C7 AA         [24]  711 	mov	_TA,#0xaa
                                    712 ;	main.c:78: TA = 0x55;
      0000FC 75 C7 55         [24]  713 	mov	_TA,#0x55
                                    714 ;	main.c:79: IAPUEN &= ~0x01; // APUEN = 0, disable APROM update
      0000FF 53 A5 FE         [24]  715 	anl	_IAPUEN,#0xfe
                                    716 ;	main.c:80: TA = 0Xaa;		 // CHPCON is TA protected
      000102 75 C7 AA         [24]  717 	mov	_TA,#0xaa
                                    718 ;	main.c:81: }
      000105 22               [24]  719 	ret
                                    720 	.area CSEG    (CODE)
                                    721 	.area CONST   (CODE)
                                    722 	.area XINIT   (CODE)
                                    723 	.area CABS    (ABS,CODE)
