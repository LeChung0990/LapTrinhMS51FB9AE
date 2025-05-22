                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _MOSI
                                     12 	.globl _P00
                                     13 	.globl _MISO
                                     14 	.globl _P01
                                     15 	.globl _RXD_1
                                     16 	.globl _P02
                                     17 	.globl _P03
                                     18 	.globl _STADC
                                     19 	.globl _P04
                                     20 	.globl _P05
                                     21 	.globl _TXD
                                     22 	.globl _P06
                                     23 	.globl _RXD
                                     24 	.globl _P07
                                     25 	.globl _IT0
                                     26 	.globl _IE0
                                     27 	.globl _IT1
                                     28 	.globl _IE1
                                     29 	.globl _TR0
                                     30 	.globl _TF0
                                     31 	.globl _TR1
                                     32 	.globl _TF1
                                     33 	.globl _P10
                                     34 	.globl _P11
                                     35 	.globl _P12
                                     36 	.globl _SCL
                                     37 	.globl _P13
                                     38 	.globl _SDA
                                     39 	.globl _P14
                                     40 	.globl _P15
                                     41 	.globl _TXD_1
                                     42 	.globl _P16
                                     43 	.globl _P17
                                     44 	.globl _RI
                                     45 	.globl _TI
                                     46 	.globl _RB8
                                     47 	.globl _TB8
                                     48 	.globl _REN
                                     49 	.globl _SM2
                                     50 	.globl _SM1
                                     51 	.globl _FE
                                     52 	.globl _SM0
                                     53 	.globl _P20
                                     54 	.globl _EX0
                                     55 	.globl _ET0
                                     56 	.globl _EX1
                                     57 	.globl _ET1
                                     58 	.globl _ES
                                     59 	.globl _EBOD
                                     60 	.globl _EADC
                                     61 	.globl _EA
                                     62 	.globl _P30
                                     63 	.globl _PX0
                                     64 	.globl _PT0
                                     65 	.globl _PX1
                                     66 	.globl _PT1
                                     67 	.globl _PS
                                     68 	.globl _PBOD
                                     69 	.globl _PADC
                                     70 	.globl _I2CPX
                                     71 	.globl _AA
                                     72 	.globl _SI
                                     73 	.globl _STO
                                     74 	.globl _STA
                                     75 	.globl _I2CEN
                                     76 	.globl _CM_RL2
                                     77 	.globl _TR2
                                     78 	.globl _TF2
                                     79 	.globl _P
                                     80 	.globl _OV
                                     81 	.globl _RS0
                                     82 	.globl _RS1
                                     83 	.globl _F0
                                     84 	.globl _AC
                                     85 	.globl _CY
                                     86 	.globl _CLRPWM
                                     87 	.globl _PWMF
                                     88 	.globl _LOAD
                                     89 	.globl _PWMRUN
                                     90 	.globl _ADCHS0
                                     91 	.globl _ADCHS1
                                     92 	.globl _ADCHS2
                                     93 	.globl _ADCHS3
                                     94 	.globl _ETGSEL0
                                     95 	.globl _ETGSEL1
                                     96 	.globl _ADCS
                                     97 	.globl _ADCF
                                     98 	.globl _RI_1
                                     99 	.globl _TI_1
                                    100 	.globl _RB8_1
                                    101 	.globl _TB8_1
                                    102 	.globl _REN_1
                                    103 	.globl _SM2_1
                                    104 	.globl _SM1_1
                                    105 	.globl _FE_1
                                    106 	.globl _SM0_1
                                    107 	.globl _EIPH1
                                    108 	.globl _EIP1
                                    109 	.globl _PMD
                                    110 	.globl _PMEN
                                    111 	.globl _PDTCNT
                                    112 	.globl _PDTEN
                                    113 	.globl _SCON_1
                                    114 	.globl _EIPH
                                    115 	.globl _AINDIDS
                                    116 	.globl _SPDR
                                    117 	.globl _SPSR
                                    118 	.globl _SPCR2
                                    119 	.globl _SPCR
                                    120 	.globl _CAPCON4
                                    121 	.globl _CAPCON3
                                    122 	.globl _B
                                    123 	.globl _EIP
                                    124 	.globl _C2H
                                    125 	.globl _C2L
                                    126 	.globl _PIF
                                    127 	.globl _PIPEN
                                    128 	.globl _PINEN
                                    129 	.globl _PICON
                                    130 	.globl _ADCCON0
                                    131 	.globl _C1H
                                    132 	.globl _C1L
                                    133 	.globl _C0H
                                    134 	.globl _C0L
                                    135 	.globl _ADCDLY
                                    136 	.globl _ADCCON2
                                    137 	.globl _ADCCON1
                                    138 	.globl _ACC
                                    139 	.globl _PWMCON1
                                    140 	.globl _PIOCON0
                                    141 	.globl _PWM3L
                                    142 	.globl _PWM2L
                                    143 	.globl _PWM1L
                                    144 	.globl _PWM0L
                                    145 	.globl _PWMPL
                                    146 	.globl _PWMCON0
                                    147 	.globl _FBD
                                    148 	.globl _PNP
                                    149 	.globl _PWM3H
                                    150 	.globl _PWM2H
                                    151 	.globl _PWM1H
                                    152 	.globl _PWM0H
                                    153 	.globl _PWMPH
                                    154 	.globl _PSW
                                    155 	.globl _ADCMPH
                                    156 	.globl _ADCMPL
                                    157 	.globl _PWM5L
                                    158 	.globl _TH2
                                    159 	.globl _PWM4L
                                    160 	.globl _TL2
                                    161 	.globl _RCMP2H
                                    162 	.globl _RCMP2L
                                    163 	.globl _T2MOD
                                    164 	.globl _T2CON
                                    165 	.globl _TA
                                    166 	.globl _PIOCON1
                                    167 	.globl _RH3
                                    168 	.globl _PWM5H
                                    169 	.globl _RL3
                                    170 	.globl _PWM4H
                                    171 	.globl _T3CON
                                    172 	.globl _ADCRH
                                    173 	.globl _ADCRL
                                    174 	.globl _I2ADDR
                                    175 	.globl _I2CON
                                    176 	.globl _I2TOC
                                    177 	.globl _I2CLK
                                    178 	.globl _I2STAT
                                    179 	.globl _I2DAT
                                    180 	.globl _SADDR_1
                                    181 	.globl _SADEN_1
                                    182 	.globl _SADEN
                                    183 	.globl _IP
                                    184 	.globl _PWMINTC
                                    185 	.globl _IPH
                                    186 	.globl _P2S
                                    187 	.globl _P1SR
                                    188 	.globl _P1M2
                                    189 	.globl _P1S
                                    190 	.globl _P1M1
                                    191 	.globl _P0SR
                                    192 	.globl _P0M2
                                    193 	.globl _P0S
                                    194 	.globl _P0M1
                                    195 	.globl _P3
                                    196 	.globl _IAPCN
                                    197 	.globl _IAPFD
                                    198 	.globl _P3SR
                                    199 	.globl _P3M2
                                    200 	.globl _P3S
                                    201 	.globl _P3M1
                                    202 	.globl _BODCON1
                                    203 	.globl _WDCON
                                    204 	.globl _SADDR
                                    205 	.globl _IE
                                    206 	.globl _IAPAH
                                    207 	.globl _IAPAL
                                    208 	.globl _IAPUEN
                                    209 	.globl _IAPTRG
                                    210 	.globl _BODCON0
                                    211 	.globl _AUXR1
                                    212 	.globl _P2
                                    213 	.globl _CHPCON
                                    214 	.globl _EIE1
                                    215 	.globl _EIE
                                    216 	.globl _SBUF_1
                                    217 	.globl _SBUF
                                    218 	.globl _SCON
                                    219 	.globl _CKEN
                                    220 	.globl _CKSWT
                                    221 	.globl _CKDIV
                                    222 	.globl _CAPCON2
                                    223 	.globl _CAPCON1
                                    224 	.globl _CAPCON0
                                    225 	.globl _SFRS
                                    226 	.globl _P1
                                    227 	.globl _WKCON
                                    228 	.globl _CKCON
                                    229 	.globl _TH1
                                    230 	.globl _TH0
                                    231 	.globl _TL1
                                    232 	.globl _TL0
                                    233 	.globl _TMOD
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _RWK
                                    237 	.globl _RCTRIM1
                                    238 	.globl _RCTRIM0
                                    239 	.globl _DPH
                                    240 	.globl _DPL
                                    241 	.globl _SP
                                    242 	.globl _P0
                                    243 	.globl _Delay_Init
                                    244 	.globl _Delay_Ms
                                    245 ;--------------------------------------------------------
                                    246 ; special function registers
                                    247 ;--------------------------------------------------------
                                    248 	.area RSEG    (ABS,DATA)
      000000                        249 	.org 0x0000
                           000080   250 _P0	=	0x0080
                           000081   251 _SP	=	0x0081
                           000082   252 _DPL	=	0x0082
                           000083   253 _DPH	=	0x0083
                           000084   254 _RCTRIM0	=	0x0084
                           000085   255 _RCTRIM1	=	0x0085
                           000086   256 _RWK	=	0x0086
                           000087   257 _PCON	=	0x0087
                           000088   258 _TCON	=	0x0088
                           000089   259 _TMOD	=	0x0089
                           00008A   260 _TL0	=	0x008a
                           00008B   261 _TL1	=	0x008b
                           00008C   262 _TH0	=	0x008c
                           00008D   263 _TH1	=	0x008d
                           00008E   264 _CKCON	=	0x008e
                           00008F   265 _WKCON	=	0x008f
                           000090   266 _P1	=	0x0090
                           000091   267 _SFRS	=	0x0091
                           000092   268 _CAPCON0	=	0x0092
                           000093   269 _CAPCON1	=	0x0093
                           000094   270 _CAPCON2	=	0x0094
                           000095   271 _CKDIV	=	0x0095
                           000096   272 _CKSWT	=	0x0096
                           000097   273 _CKEN	=	0x0097
                           000098   274 _SCON	=	0x0098
                           000099   275 _SBUF	=	0x0099
                           00009A   276 _SBUF_1	=	0x009a
                           00009B   277 _EIE	=	0x009b
                           00009C   278 _EIE1	=	0x009c
                           00009F   279 _CHPCON	=	0x009f
                           0000A0   280 _P2	=	0x00a0
                           0000A2   281 _AUXR1	=	0x00a2
                           0000A3   282 _BODCON0	=	0x00a3
                           0000A4   283 _IAPTRG	=	0x00a4
                           0000A5   284 _IAPUEN	=	0x00a5
                           0000A6   285 _IAPAL	=	0x00a6
                           0000A7   286 _IAPAH	=	0x00a7
                           0000A8   287 _IE	=	0x00a8
                           0000A9   288 _SADDR	=	0x00a9
                           0000AA   289 _WDCON	=	0x00aa
                           0000AB   290 _BODCON1	=	0x00ab
                           0000AC   291 _P3M1	=	0x00ac
                           0000AC   292 _P3S	=	0x00ac
                           0000AD   293 _P3M2	=	0x00ad
                           0000AD   294 _P3SR	=	0x00ad
                           0000AE   295 _IAPFD	=	0x00ae
                           0000AF   296 _IAPCN	=	0x00af
                           0000B0   297 _P3	=	0x00b0
                           0000B1   298 _P0M1	=	0x00b1
                           0000B1   299 _P0S	=	0x00b1
                           0000B2   300 _P0M2	=	0x00b2
                           0000B2   301 _P0SR	=	0x00b2
                           0000B3   302 _P1M1	=	0x00b3
                           0000B3   303 _P1S	=	0x00b3
                           0000B4   304 _P1M2	=	0x00b4
                           0000B4   305 _P1SR	=	0x00b4
                           0000B5   306 _P2S	=	0x00b5
                           0000B7   307 _IPH	=	0x00b7
                           0000B7   308 _PWMINTC	=	0x00b7
                           0000B8   309 _IP	=	0x00b8
                           0000B9   310 _SADEN	=	0x00b9
                           0000BA   311 _SADEN_1	=	0x00ba
                           0000BB   312 _SADDR_1	=	0x00bb
                           0000BC   313 _I2DAT	=	0x00bc
                           0000BD   314 _I2STAT	=	0x00bd
                           0000BE   315 _I2CLK	=	0x00be
                           0000BF   316 _I2TOC	=	0x00bf
                           0000C0   317 _I2CON	=	0x00c0
                           0000C1   318 _I2ADDR	=	0x00c1
                           0000C2   319 _ADCRL	=	0x00c2
                           0000C3   320 _ADCRH	=	0x00c3
                           0000C4   321 _T3CON	=	0x00c4
                           0000C4   322 _PWM4H	=	0x00c4
                           0000C5   323 _RL3	=	0x00c5
                           0000C5   324 _PWM5H	=	0x00c5
                           0000C6   325 _RH3	=	0x00c6
                           0000C6   326 _PIOCON1	=	0x00c6
                           0000C7   327 _TA	=	0x00c7
                           0000C8   328 _T2CON	=	0x00c8
                           0000C9   329 _T2MOD	=	0x00c9
                           0000CA   330 _RCMP2L	=	0x00ca
                           0000CB   331 _RCMP2H	=	0x00cb
                           0000CC   332 _TL2	=	0x00cc
                           0000CC   333 _PWM4L	=	0x00cc
                           0000CD   334 _TH2	=	0x00cd
                           0000CD   335 _PWM5L	=	0x00cd
                           0000CE   336 _ADCMPL	=	0x00ce
                           0000CF   337 _ADCMPH	=	0x00cf
                           0000D0   338 _PSW	=	0x00d0
                           0000D1   339 _PWMPH	=	0x00d1
                           0000D2   340 _PWM0H	=	0x00d2
                           0000D3   341 _PWM1H	=	0x00d3
                           0000D4   342 _PWM2H	=	0x00d4
                           0000D5   343 _PWM3H	=	0x00d5
                           0000D6   344 _PNP	=	0x00d6
                           0000D7   345 _FBD	=	0x00d7
                           0000D8   346 _PWMCON0	=	0x00d8
                           0000D9   347 _PWMPL	=	0x00d9
                           0000DA   348 _PWM0L	=	0x00da
                           0000DB   349 _PWM1L	=	0x00db
                           0000DC   350 _PWM2L	=	0x00dc
                           0000DD   351 _PWM3L	=	0x00dd
                           0000DE   352 _PIOCON0	=	0x00de
                           0000DF   353 _PWMCON1	=	0x00df
                           0000E0   354 _ACC	=	0x00e0
                           0000E1   355 _ADCCON1	=	0x00e1
                           0000E2   356 _ADCCON2	=	0x00e2
                           0000E3   357 _ADCDLY	=	0x00e3
                           0000E4   358 _C0L	=	0x00e4
                           0000E5   359 _C0H	=	0x00e5
                           0000E6   360 _C1L	=	0x00e6
                           0000E7   361 _C1H	=	0x00e7
                           0000E8   362 _ADCCON0	=	0x00e8
                           0000E9   363 _PICON	=	0x00e9
                           0000EA   364 _PINEN	=	0x00ea
                           0000EB   365 _PIPEN	=	0x00eb
                           0000EC   366 _PIF	=	0x00ec
                           0000ED   367 _C2L	=	0x00ed
                           0000EE   368 _C2H	=	0x00ee
                           0000EF   369 _EIP	=	0x00ef
                           0000F0   370 _B	=	0x00f0
                           0000F1   371 _CAPCON3	=	0x00f1
                           0000F2   372 _CAPCON4	=	0x00f2
                           0000F3   373 _SPCR	=	0x00f3
                           0000F3   374 _SPCR2	=	0x00f3
                           0000F4   375 _SPSR	=	0x00f4
                           0000F5   376 _SPDR	=	0x00f5
                           0000F6   377 _AINDIDS	=	0x00f6
                           0000F7   378 _EIPH	=	0x00f7
                           0000F8   379 _SCON_1	=	0x00f8
                           0000F9   380 _PDTEN	=	0x00f9
                           0000FA   381 _PDTCNT	=	0x00fa
                           0000FB   382 _PMEN	=	0x00fb
                           0000FC   383 _PMD	=	0x00fc
                           0000FE   384 _EIP1	=	0x00fe
                           0000FF   385 _EIPH1	=	0x00ff
                                    386 ;--------------------------------------------------------
                                    387 ; special function bits
                                    388 ;--------------------------------------------------------
                                    389 	.area RSEG    (ABS,DATA)
      000000                        390 	.org 0x0000
                           0000FF   391 _SM0_1	=	0x00ff
                           0000FF   392 _FE_1	=	0x00ff
                           0000FE   393 _SM1_1	=	0x00fe
                           0000FD   394 _SM2_1	=	0x00fd
                           0000FC   395 _REN_1	=	0x00fc
                           0000FB   396 _TB8_1	=	0x00fb
                           0000FA   397 _RB8_1	=	0x00fa
                           0000F9   398 _TI_1	=	0x00f9
                           0000F8   399 _RI_1	=	0x00f8
                           0000EF   400 _ADCF	=	0x00ef
                           0000EE   401 _ADCS	=	0x00ee
                           0000ED   402 _ETGSEL1	=	0x00ed
                           0000EC   403 _ETGSEL0	=	0x00ec
                           0000EB   404 _ADCHS3	=	0x00eb
                           0000EA   405 _ADCHS2	=	0x00ea
                           0000E9   406 _ADCHS1	=	0x00e9
                           0000E8   407 _ADCHS0	=	0x00e8
                           0000DF   408 _PWMRUN	=	0x00df
                           0000DE   409 _LOAD	=	0x00de
                           0000DD   410 _PWMF	=	0x00dd
                           0000DC   411 _CLRPWM	=	0x00dc
                           0000D7   412 _CY	=	0x00d7
                           0000D6   413 _AC	=	0x00d6
                           0000D5   414 _F0	=	0x00d5
                           0000D4   415 _RS1	=	0x00d4
                           0000D3   416 _RS0	=	0x00d3
                           0000D2   417 _OV	=	0x00d2
                           0000D0   418 _P	=	0x00d0
                           0000CF   419 _TF2	=	0x00cf
                           0000CA   420 _TR2	=	0x00ca
                           0000C8   421 _CM_RL2	=	0x00c8
                           0000C6   422 _I2CEN	=	0x00c6
                           0000C5   423 _STA	=	0x00c5
                           0000C4   424 _STO	=	0x00c4
                           0000C3   425 _SI	=	0x00c3
                           0000C2   426 _AA	=	0x00c2
                           0000C0   427 _I2CPX	=	0x00c0
                           0000BE   428 _PADC	=	0x00be
                           0000BD   429 _PBOD	=	0x00bd
                           0000BC   430 _PS	=	0x00bc
                           0000BB   431 _PT1	=	0x00bb
                           0000BA   432 _PX1	=	0x00ba
                           0000B9   433 _PT0	=	0x00b9
                           0000B8   434 _PX0	=	0x00b8
                           0000B0   435 _P30	=	0x00b0
                           0000AF   436 _EA	=	0x00af
                           0000AE   437 _EADC	=	0x00ae
                           0000AD   438 _EBOD	=	0x00ad
                           0000AC   439 _ES	=	0x00ac
                           0000AB   440 _ET1	=	0x00ab
                           0000AA   441 _EX1	=	0x00aa
                           0000A9   442 _ET0	=	0x00a9
                           0000A8   443 _EX0	=	0x00a8
                           0000A0   444 _P20	=	0x00a0
                           00009F   445 _SM0	=	0x009f
                           00009F   446 _FE	=	0x009f
                           00009E   447 _SM1	=	0x009e
                           00009D   448 _SM2	=	0x009d
                           00009C   449 _REN	=	0x009c
                           00009B   450 _TB8	=	0x009b
                           00009A   451 _RB8	=	0x009a
                           000099   452 _TI	=	0x0099
                           000098   453 _RI	=	0x0098
                           000097   454 _P17	=	0x0097
                           000096   455 _P16	=	0x0096
                           000096   456 _TXD_1	=	0x0096
                           000095   457 _P15	=	0x0095
                           000094   458 _P14	=	0x0094
                           000094   459 _SDA	=	0x0094
                           000093   460 _P13	=	0x0093
                           000093   461 _SCL	=	0x0093
                           000092   462 _P12	=	0x0092
                           000091   463 _P11	=	0x0091
                           000090   464 _P10	=	0x0090
                           00008F   465 _TF1	=	0x008f
                           00008E   466 _TR1	=	0x008e
                           00008D   467 _TF0	=	0x008d
                           00008C   468 _TR0	=	0x008c
                           00008B   469 _IE1	=	0x008b
                           00008A   470 _IT1	=	0x008a
                           000089   471 _IE0	=	0x0089
                           000088   472 _IT0	=	0x0088
                           000087   473 _P07	=	0x0087
                           000087   474 _RXD	=	0x0087
                           000086   475 _P06	=	0x0086
                           000086   476 _TXD	=	0x0086
                           000085   477 _P05	=	0x0085
                           000084   478 _P04	=	0x0084
                           000084   479 _STADC	=	0x0084
                           000083   480 _P03	=	0x0083
                           000082   481 _P02	=	0x0082
                           000082   482 _RXD_1	=	0x0082
                           000081   483 _P01	=	0x0081
                           000081   484 _MISO	=	0x0081
                           000080   485 _P00	=	0x0080
                           000080   486 _MOSI	=	0x0080
                                    487 ;--------------------------------------------------------
                                    488 ; overlayable register banks
                                    489 ;--------------------------------------------------------
                                    490 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        491 	.ds 8
                                    492 ;--------------------------------------------------------
                                    493 ; internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area DSEG    (DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; overlayable items in internal ram
                                    498 ;--------------------------------------------------------
                                    499 ;--------------------------------------------------------
                                    500 ; indirectly addressable internal ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area ISEG    (DATA)
                                    503 ;--------------------------------------------------------
                                    504 ; absolute internal ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area IABS    (ABS,DATA)
                                    507 	.area IABS    (ABS,DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; bit data
                                    510 ;--------------------------------------------------------
                                    511 	.area BSEG    (BIT)
                                    512 ;--------------------------------------------------------
                                    513 ; paged external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area PSEG    (PAG,XDATA)
                                    516 ;--------------------------------------------------------
                                    517 ; uninitialized external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XSEG    (XDATA)
                                    520 ;--------------------------------------------------------
                                    521 ; absolute external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XABS    (ABS,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; initialized external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XISEG   (XDATA)
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT0 (CODE)
                                    530 	.area GSINIT1 (CODE)
                                    531 	.area GSINIT2 (CODE)
                                    532 	.area GSINIT3 (CODE)
                                    533 	.area GSINIT4 (CODE)
                                    534 	.area GSINIT5 (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area CSEG    (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; Home
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area HOME    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'Delay_Init'
                                    556 ;------------------------------------------------------------
                                    557 ;	lib/src/delay.c:7: void Delay_Init(void)
                                    558 ;	-----------------------------------------
                                    559 ;	 function Delay_Init
                                    560 ;	-----------------------------------------
      0005BE                        561 _Delay_Init:
                           000007   562 	ar7 = 0x07
                           000006   563 	ar6 = 0x06
                           000005   564 	ar5 = 0x05
                           000004   565 	ar4 = 0x04
                           000003   566 	ar3 = 0x03
                           000002   567 	ar2 = 0x02
                           000001   568 	ar1 = 0x01
                           000000   569 	ar0 = 0x00
                                    570 ;	lib/src/delay.c:9: TMOD |= (1 << 0);
      0005BE 43 89 01         [24]  571 	orl	_TMOD,#0x01
                                    572 ;	lib/src/delay.c:10: TMOD &= ~(1 << 1);
      0005C1 53 89 FD         [24]  573 	anl	_TMOD,#0xfd
                                    574 ;	lib/src/delay.c:11: CKCON |= (1 << 3);
      0005C4 43 8E 08         [24]  575 	orl	_CKCON,#0x08
                                    576 ;	lib/src/delay.c:12: TMOD &= ~(1 << 2);
      0005C7 53 89 FB         [24]  577 	anl	_TMOD,#0xfb
                                    578 ;	lib/src/delay.c:13: TMOD &= ~(1 << 3);
      0005CA 53 89 F7         [24]  579 	anl	_TMOD,#0xf7
                                    580 ;	lib/src/delay.c:14: }
      0005CD 22               [24]  581 	ret
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'Delay_Ms'
                                    584 ;------------------------------------------------------------
                                    585 ;u16Delay                  Allocated to registers 
                                    586 ;------------------------------------------------------------
                                    587 ;	lib/src/delay.c:16: void Delay_Ms(uint16_t u16Delay)
                                    588 ;	-----------------------------------------
                                    589 ;	 function Delay_Ms
                                    590 ;	-----------------------------------------
      0005CE                        591 _Delay_Ms:
      0005CE AE 82            [24]  592 	mov	r6,dpl
      0005D0 AF 83            [24]  593 	mov	r7,dph
                                    594 ;	lib/src/delay.c:18: while (u16Delay) {
      0005D2                        595 00101$:
      0005D2 EE               [12]  596 	mov	a,r6
      0005D3 4F               [12]  597 	orl	a,r7
      0005D4 60 12            [24]  598 	jz	00104$
                                    599 ;	lib/src/delay.c:19: --u16Delay;
      0005D6 1E               [12]  600 	dec	r6
      0005D7 BE FF 01         [24]  601 	cjne	r6,#0xff,00116$
      0005DA 1F               [12]  602 	dec	r7
      0005DB                        603 00116$:
                                    604 ;	lib/src/delay.c:20: delay_1ms();
      0005DB C0 07            [24]  605 	push	ar7
      0005DD C0 06            [24]  606 	push	ar6
      0005DF 12 05 E9         [24]  607 	lcall	_delay_1ms
      0005E2 D0 06            [24]  608 	pop	ar6
      0005E4 D0 07            [24]  609 	pop	ar7
      0005E6 80 EA            [24]  610 	sjmp	00101$
      0005E8                        611 00104$:
                                    612 ;	lib/src/delay.c:22: }
      0005E8 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'delay_1ms'
                                    616 ;------------------------------------------------------------
                                    617 ;	lib/src/delay.c:24: void delay_1ms(void)
                                    618 ;	-----------------------------------------
                                    619 ;	 function delay_1ms
                                    620 ;	-----------------------------------------
      0005E9                        621 _delay_1ms:
                                    622 ;	lib/src/delay.c:26: TH0 = 0;
      0005E9 75 8C 00         [24]  623 	mov	_TH0,#0x00
                                    624 ;	lib/src/delay.c:27: TL0 = 0;
      0005EC 75 8A 00         [24]  625 	mov	_TL0,#0x00
                                    626 ;	lib/src/delay.c:28: TR0 = 1;	/*Timer 0 Enable*/
                                    627 ;	assignBit
      0005EF D2 8C            [12]  628 	setb	_TR0
                                    629 ;	lib/src/delay.c:29: while (TH0 * 256 + TL0 < 16000) {
      0005F1                        630 00101$:
      0005F1 AF 8C            [24]  631 	mov	r7,_TH0
      0005F3 7E 00            [12]  632 	mov	r6,#0x00
      0005F5 AC 8A            [24]  633 	mov	r4,_TL0
      0005F7 7D 00            [12]  634 	mov	r5,#0x00
      0005F9 EC               [12]  635 	mov	a,r4
      0005FA 2E               [12]  636 	add	a,r6
      0005FB FE               [12]  637 	mov	r6,a
      0005FC ED               [12]  638 	mov	a,r5
      0005FD 3F               [12]  639 	addc	a,r7
      0005FE FF               [12]  640 	mov	r7,a
      0005FF C3               [12]  641 	clr	c
      000600 EE               [12]  642 	mov	a,r6
      000601 94 80            [12]  643 	subb	a,#0x80
      000603 EF               [12]  644 	mov	a,r7
      000604 64 80            [12]  645 	xrl	a,#0x80
      000606 94 BE            [12]  646 	subb	a,#0xbe
      000608 40 E7            [24]  647 	jc	00101$
                                    648 ;	lib/src/delay.c:31: TR0 = 0;	/*Stop Timer0 and the current count will be preserved in TH0,TL0*/
                                    649 ;	assignBit
      00060A C2 8C            [12]  650 	clr	_TR0
                                    651 ;	lib/src/delay.c:32: }
      00060C 22               [24]  652 	ret
                                    653 	.area CSEG    (CODE)
                                    654 	.area CONST   (CODE)
                                    655 	.area XINIT   (CODE)
                                    656 	.area CABS    (ABS,CODE)
