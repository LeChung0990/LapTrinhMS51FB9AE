                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pwm
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
                                    243 	.globl _PWM_Init
                                    244 	.globl _PWM0_RUN
                                    245 	.globl _PWM0_STOP
                                    246 	.globl _SET_DUTY
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
                                    501 	.area	OSEG    (OVR,DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; indirectly addressable internal ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area ISEG    (DATA)
                                    506 ;--------------------------------------------------------
                                    507 ; absolute internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area IABS    (ABS,DATA)
                                    510 	.area IABS    (ABS,DATA)
                                    511 ;--------------------------------------------------------
                                    512 ; bit data
                                    513 ;--------------------------------------------------------
                                    514 	.area BSEG    (BIT)
                                    515 ;--------------------------------------------------------
                                    516 ; paged external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area PSEG    (PAG,XDATA)
                                    519 ;--------------------------------------------------------
                                    520 ; uninitialized external ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XSEG    (XDATA)
                                    523 ;--------------------------------------------------------
                                    524 ; absolute external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area XABS    (ABS,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; initialized external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XISEG   (XDATA)
                                    531 	.area HOME    (CODE)
                                    532 	.area GSINIT0 (CODE)
                                    533 	.area GSINIT1 (CODE)
                                    534 	.area GSINIT2 (CODE)
                                    535 	.area GSINIT3 (CODE)
                                    536 	.area GSINIT4 (CODE)
                                    537 	.area GSINIT5 (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area CSEG    (CODE)
                                    541 ;--------------------------------------------------------
                                    542 ; global & static initialisations
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.area GSFINAL (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 ;--------------------------------------------------------
                                    549 ; Home
                                    550 ;--------------------------------------------------------
                                    551 	.area HOME    (CODE)
                                    552 	.area HOME    (CODE)
                                    553 ;--------------------------------------------------------
                                    554 ; code
                                    555 ;--------------------------------------------------------
                                    556 	.area CSEG    (CODE)
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'PWM_Init'
                                    559 ;------------------------------------------------------------
                                    560 ;high                      Allocated to registers 
                                    561 ;low                       Allocated to registers 
                                    562 ;------------------------------------------------------------
                                    563 ;	lib/src/pwm.c:6: void PWM_Init(void)
                                    564 ;	-----------------------------------------
                                    565 ;	 function PWM_Init
                                    566 ;	-----------------------------------------
      000139                        567 _PWM_Init:
                           000007   568 	ar7 = 0x07
                           000006   569 	ar6 = 0x06
                           000005   570 	ar5 = 0x05
                           000004   571 	ar4 = 0x04
                           000003   572 	ar3 = 0x03
                           000002   573 	ar2 = 0x02
                           000001   574 	ar1 = 0x01
                           000000   575 	ar0 = 0x00
                                    576 ;	lib/src/pwm.c:9: set_PWMCON0_CLRPWM;		/*Clearing PWM 16-bit counter*/
                                    577 ;	assignBit
      000139 D2 DC            [12]  578 	setb	_CLRPWM
                                    579 ;	lib/src/pwm.c:11: clr_CKCON_PWMCKS;	/*The clock source of PWM is the system clock FSYS.*/
      00013B 53 8E BF         [24]  580 	anl	_CKCON,#0xbf
                                    581 ;	lib/src/pwm.c:14: PWMCON1 &= 0x07;
      00013E 53 DF 07         [24]  582 	anl	_PWMCON1,#0x07
                                    583 ;	lib/src/pwm.c:15: PWMCON1 |= 0x00;
      000141 85 DF DF         [24]  584 	mov	_PWMCON1,_PWMCON1
                                    585 ;	lib/src/pwm.c:16: PWMPH = (uint8_t)(16000 >> 8) & 0xFF;
      000144 75 D1 3E         [24]  586 	mov	_PWMPH,#0x3e
                                    587 ;	lib/src/pwm.c:17: PWMPL = (uint8_t)16000 & 0xFF;
      000147 75 D9 80         [24]  588 	mov	_PWMPL,#0x80
                                    589 ;	lib/src/pwm.c:25: PWM0H = (uint8_t)high;
      00014A 75 D2 3E         [24]  590 	mov	_PWM0H,#0x3e
                                    591 ;	lib/src/pwm.c:26: PWM0L = (uint8_t)low;
      00014D 75 DA 80         [24]  592 	mov	_PWM0L,#0x80
                                    593 ;	lib/src/pwm.c:28: P1M1 &= ~(1 << 2);
      000150 53 B3 FB         [24]  594 	anl	_P1M1,#0xfb
                                    595 ;	lib/src/pwm.c:29: P1M2 |= (1 << 2);
      000153 43 B4 04         [24]  596 	orl	_P1M2,#0x04
                                    597 ;	lib/src/pwm.c:30: set_PIOCON0_PIO00; /* P1.2/PWM0 pin functions as PWM0 output.*/
      000156 43 DE 01         [24]  598 	orl	_PIOCON0,#0x01
                                    599 ;	lib/src/pwm.c:32: PWM0_RUN();
                                    600 ;	lib/src/pwm.c:33: }
      000159 02 01 5C         [24]  601 	ljmp	_PWM0_RUN
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'PWM0_RUN'
                                    604 ;------------------------------------------------------------
                                    605 ;	lib/src/pwm.c:35: void PWM0_RUN(void)
                                    606 ;	-----------------------------------------
                                    607 ;	 function PWM0_RUN
                                    608 ;	-----------------------------------------
      00015C                        609 _PWM0_RUN:
                                    610 ;	lib/src/pwm.c:37: set_PWMCON0_PWMRUN;
                                    611 ;	assignBit
      00015C D2 DF            [12]  612 	setb	_PWMRUN
                                    613 ;	lib/src/pwm.c:38: }
      00015E 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'PWM0_STOP'
                                    617 ;------------------------------------------------------------
                                    618 ;	lib/src/pwm.c:39: void PWM0_STOP(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function PWM0_STOP
                                    621 ;	-----------------------------------------
      00015F                        622 _PWM0_STOP:
                                    623 ;	lib/src/pwm.c:41: clr_PWMCON0_PWMRUN;
                                    624 ;	assignBit
      00015F C2 DF            [12]  625 	clr	_PWMRUN
                                    626 ;	lib/src/pwm.c:42: }
      000161 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'SET_DUTY'
                                    630 ;------------------------------------------------------------
                                    631 ;dem                       Allocated to registers r7 
                                    632 ;high                      Allocated to registers 
                                    633 ;low                       Allocated to registers 
                                    634 ;------------------------------------------------------------
                                    635 ;	lib/src/pwm.c:43: void SET_DUTY(uint8_t dem)
                                    636 ;	-----------------------------------------
                                    637 ;	 function SET_DUTY
                                    638 ;	-----------------------------------------
      000162                        639 _SET_DUTY:
                                    640 ;	lib/src/pwm.c:46: high = (uint8_t) (((16000/100) * dem) >> 8 ) & 0xFF;
      000162 E5 82            [12]  641 	mov	a,dpl
      000164 FF               [12]  642 	mov	r7,a
      000165 75 F0 A0         [24]  643 	mov	b,#0xa0
      000168 A4               [48]  644 	mul	ab
      000169 AE F0            [24]  645 	mov	r6,b
      00016B 8E D2            [24]  646 	mov	_PWM0H,r6
                                    647 ;	lib/src/pwm.c:47: low = (uint8_t)((16000/100) * dem) & 0xFF;
      00016D EF               [12]  648 	mov	a,r7
      00016E 75 F0 A0         [24]  649 	mov	b,#0xa0
      000171 A4               [48]  650 	mul	ab
      000172 F5 DA            [12]  651 	mov	_PWM0L,a
                                    652 ;	lib/src/pwm.c:50: PWM0L = (uint8_t)low;
                                    653 ;	lib/src/pwm.c:51: }
      000174 22               [24]  654 	ret
                                    655 	.area CSEG    (CODE)
                                    656 	.area CONST   (CODE)
                                    657 	.area XINIT   (CODE)
                                    658 	.area CABS    (ABS,CODE)
