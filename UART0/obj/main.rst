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
                                     12 	.globl _UART0_GetFlag
                                     13 	.globl _UART0_ClearFlag
                                     14 	.globl _UART0_SendData
                                     15 	.globl _UART0_Init
                                     16 	.globl _Delay_Ms
                                     17 	.globl _MOSI
                                     18 	.globl _P00
                                     19 	.globl _MISO
                                     20 	.globl _P01
                                     21 	.globl _RXD_1
                                     22 	.globl _P02
                                     23 	.globl _P03
                                     24 	.globl _STADC
                                     25 	.globl _P04
                                     26 	.globl _P05
                                     27 	.globl _TXD
                                     28 	.globl _P06
                                     29 	.globl _RXD
                                     30 	.globl _P07
                                     31 	.globl _IT0
                                     32 	.globl _IE0
                                     33 	.globl _IT1
                                     34 	.globl _IE1
                                     35 	.globl _TR0
                                     36 	.globl _TF0
                                     37 	.globl _TR1
                                     38 	.globl _TF1
                                     39 	.globl _P10
                                     40 	.globl _P11
                                     41 	.globl _P12
                                     42 	.globl _SCL
                                     43 	.globl _P13
                                     44 	.globl _SDA
                                     45 	.globl _P14
                                     46 	.globl _P15
                                     47 	.globl _TXD_1
                                     48 	.globl _P16
                                     49 	.globl _P17
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _FE
                                     58 	.globl _SM0
                                     59 	.globl _P20
                                     60 	.globl _EX0
                                     61 	.globl _ET0
                                     62 	.globl _EX1
                                     63 	.globl _ET1
                                     64 	.globl _ES
                                     65 	.globl _EBOD
                                     66 	.globl _EADC
                                     67 	.globl _EA
                                     68 	.globl _P30
                                     69 	.globl _PX0
                                     70 	.globl _PT0
                                     71 	.globl _PX1
                                     72 	.globl _PT1
                                     73 	.globl _PS
                                     74 	.globl _PBOD
                                     75 	.globl _PADC
                                     76 	.globl _I2CPX
                                     77 	.globl _AA
                                     78 	.globl _SI
                                     79 	.globl _STO
                                     80 	.globl _STA
                                     81 	.globl _I2CEN
                                     82 	.globl _CM_RL2
                                     83 	.globl _TR2
                                     84 	.globl _TF2
                                     85 	.globl _P
                                     86 	.globl _OV
                                     87 	.globl _RS0
                                     88 	.globl _RS1
                                     89 	.globl _F0
                                     90 	.globl _AC
                                     91 	.globl _CY
                                     92 	.globl _CLRPWM
                                     93 	.globl _PWMF
                                     94 	.globl _LOAD
                                     95 	.globl _PWMRUN
                                     96 	.globl _ADCHS0
                                     97 	.globl _ADCHS1
                                     98 	.globl _ADCHS2
                                     99 	.globl _ADCHS3
                                    100 	.globl _ETGSEL0
                                    101 	.globl _ETGSEL1
                                    102 	.globl _ADCS
                                    103 	.globl _ADCF
                                    104 	.globl _RI_1
                                    105 	.globl _TI_1
                                    106 	.globl _RB8_1
                                    107 	.globl _TB8_1
                                    108 	.globl _REN_1
                                    109 	.globl _SM2_1
                                    110 	.globl _SM1_1
                                    111 	.globl _FE_1
                                    112 	.globl _SM0_1
                                    113 	.globl _EIPH1
                                    114 	.globl _EIP1
                                    115 	.globl _PMD
                                    116 	.globl _PMEN
                                    117 	.globl _PDTCNT
                                    118 	.globl _PDTEN
                                    119 	.globl _SCON_1
                                    120 	.globl _EIPH
                                    121 	.globl _AINDIDS
                                    122 	.globl _SPDR
                                    123 	.globl _SPSR
                                    124 	.globl _SPCR2
                                    125 	.globl _SPCR
                                    126 	.globl _CAPCON4
                                    127 	.globl _CAPCON3
                                    128 	.globl _B
                                    129 	.globl _EIP
                                    130 	.globl _C2H
                                    131 	.globl _C2L
                                    132 	.globl _PIF
                                    133 	.globl _PIPEN
                                    134 	.globl _PINEN
                                    135 	.globl _PICON
                                    136 	.globl _ADCCON0
                                    137 	.globl _C1H
                                    138 	.globl _C1L
                                    139 	.globl _C0H
                                    140 	.globl _C0L
                                    141 	.globl _ADCDLY
                                    142 	.globl _ADCCON2
                                    143 	.globl _ADCCON1
                                    144 	.globl _ACC
                                    145 	.globl _PWMCON1
                                    146 	.globl _PIOCON0
                                    147 	.globl _PWM3L
                                    148 	.globl _PWM2L
                                    149 	.globl _PWM1L
                                    150 	.globl _PWM0L
                                    151 	.globl _PWMPL
                                    152 	.globl _PWMCON0
                                    153 	.globl _FBD
                                    154 	.globl _PNP
                                    155 	.globl _PWM3H
                                    156 	.globl _PWM2H
                                    157 	.globl _PWM1H
                                    158 	.globl _PWM0H
                                    159 	.globl _PWMPH
                                    160 	.globl _PSW
                                    161 	.globl _ADCMPH
                                    162 	.globl _ADCMPL
                                    163 	.globl _PWM5L
                                    164 	.globl _TH2
                                    165 	.globl _PWM4L
                                    166 	.globl _TL2
                                    167 	.globl _RCMP2H
                                    168 	.globl _RCMP2L
                                    169 	.globl _T2MOD
                                    170 	.globl _T2CON
                                    171 	.globl _TA
                                    172 	.globl _PIOCON1
                                    173 	.globl _RH3
                                    174 	.globl _PWM5H
                                    175 	.globl _RL3
                                    176 	.globl _PWM4H
                                    177 	.globl _T3CON
                                    178 	.globl _ADCRH
                                    179 	.globl _ADCRL
                                    180 	.globl _I2ADDR
                                    181 	.globl _I2CON
                                    182 	.globl _I2TOC
                                    183 	.globl _I2CLK
                                    184 	.globl _I2STAT
                                    185 	.globl _I2DAT
                                    186 	.globl _SADDR_1
                                    187 	.globl _SADEN_1
                                    188 	.globl _SADEN
                                    189 	.globl _IP
                                    190 	.globl _PWMINTC
                                    191 	.globl _IPH
                                    192 	.globl _P2S
                                    193 	.globl _P1SR
                                    194 	.globl _P1M2
                                    195 	.globl _P1S
                                    196 	.globl _P1M1
                                    197 	.globl _P0SR
                                    198 	.globl _P0M2
                                    199 	.globl _P0S
                                    200 	.globl _P0M1
                                    201 	.globl _P3
                                    202 	.globl _IAPCN
                                    203 	.globl _IAPFD
                                    204 	.globl _P3SR
                                    205 	.globl _P3M2
                                    206 	.globl _P3S
                                    207 	.globl _P3M1
                                    208 	.globl _BODCON1
                                    209 	.globl _WDCON
                                    210 	.globl _SADDR
                                    211 	.globl _IE
                                    212 	.globl _IAPAH
                                    213 	.globl _IAPAL
                                    214 	.globl _IAPUEN
                                    215 	.globl _IAPTRG
                                    216 	.globl _BODCON0
                                    217 	.globl _AUXR1
                                    218 	.globl _P2
                                    219 	.globl _CHPCON
                                    220 	.globl _EIE1
                                    221 	.globl _EIE
                                    222 	.globl _SBUF_1
                                    223 	.globl _SBUF
                                    224 	.globl _SCON
                                    225 	.globl _CKEN
                                    226 	.globl _CKSWT
                                    227 	.globl _CKDIV
                                    228 	.globl _CAPCON2
                                    229 	.globl _CAPCON1
                                    230 	.globl _CAPCON0
                                    231 	.globl _SFRS
                                    232 	.globl _P1
                                    233 	.globl _WKCON
                                    234 	.globl _CKCON
                                    235 	.globl _TH1
                                    236 	.globl _TH0
                                    237 	.globl _TL1
                                    238 	.globl _TL0
                                    239 	.globl _TMOD
                                    240 	.globl _TCON
                                    241 	.globl _PCON
                                    242 	.globl _RWK
                                    243 	.globl _RCTRIM1
                                    244 	.globl _RCTRIM0
                                    245 	.globl _DPH
                                    246 	.globl _DPL
                                    247 	.globl _SP
                                    248 	.globl _P0
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
                                    500 ;--------------------------------------------------------
                                    501 ; overlayable items in internal ram
                                    502 ;--------------------------------------------------------
                                    503 ;--------------------------------------------------------
                                    504 ; Stack segment in internal ram
                                    505 ;--------------------------------------------------------
                                    506 	.area SSEG
      000008                        507 __start__stack:
      000008                        508 	.ds	1
                                    509 
                                    510 ;--------------------------------------------------------
                                    511 ; indirectly addressable internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area ISEG    (DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; absolute internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area IABS    (ABS,DATA)
                                    518 	.area IABS    (ABS,DATA)
                                    519 ;--------------------------------------------------------
                                    520 ; bit data
                                    521 ;--------------------------------------------------------
                                    522 	.area BSEG    (BIT)
                                    523 ;--------------------------------------------------------
                                    524 ; paged external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area PSEG    (PAG,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; uninitialized external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XSEG    (XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; initialized external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT0 (CODE)
                                    541 	.area GSINIT1 (CODE)
                                    542 	.area GSINIT2 (CODE)
                                    543 	.area GSINIT3 (CODE)
                                    544 	.area GSINIT4 (CODE)
                                    545 	.area GSINIT5 (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area CSEG    (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; interrupt vector
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
      000000                        553 __interrupt_vect:
      000000 02 00 06         [24]  554 	ljmp	__sdcc_gsinit_startup
                                    555 ;--------------------------------------------------------
                                    556 ; global & static initialisations
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.globl __sdcc_gsinit_startup
                                    563 	.globl __sdcc_program_startup
                                    564 	.globl __start__stack
                                    565 	.globl __mcs51_genXINIT
                                    566 	.globl __mcs51_genXRAMCLEAR
                                    567 	.globl __mcs51_genRAMCLEAR
                                    568 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  569 	ljmp	__sdcc_program_startup
                                    570 ;--------------------------------------------------------
                                    571 ; Home
                                    572 ;--------------------------------------------------------
                                    573 	.area HOME    (CODE)
                                    574 	.area HOME    (CODE)
      000003                        575 __sdcc_program_startup:
      000003 02 00 62         [24]  576 	ljmp	_main
                                    577 ;	return from main will return to caller
                                    578 ;--------------------------------------------------------
                                    579 ; code
                                    580 ;--------------------------------------------------------
                                    581 	.area CSEG    (CODE)
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'main'
                                    584 ;------------------------------------------------------------
                                    585 ;	main.c:6: void main(void)
                                    586 ;	-----------------------------------------
                                    587 ;	 function main
                                    588 ;	-----------------------------------------
      000062                        589 _main:
                           000007   590 	ar7 = 0x07
                           000006   591 	ar6 = 0x06
                           000005   592 	ar5 = 0x05
                           000004   593 	ar4 = 0x04
                           000003   594 	ar3 = 0x03
                           000002   595 	ar2 = 0x02
                           000001   596 	ar1 = 0x01
                           000000   597 	ar0 = 0x00
                                    598 ;	main.c:10: P1M1 &= ~(1 << 5);
      000062 53 B3 DF         [24]  599 	anl	_P1M1,#0xdf
                                    600 ;	main.c:11: P1M2 |= (1 << 5);  
      000065 43 B4 20         [24]  601 	orl	_P1M2,#0x20
                                    602 ;	main.c:12: UART0_Init();
      000068 12 00 D8         [24]  603 	lcall	_UART0_Init
                                    604 ;	main.c:13: while (1) {
      00006B                        605 00105$:
                                    606 ;	main.c:14: UART0_SendData(0x39);
      00006B 75 82 39         [24]  607 	mov	dpl,#0x39
      00006E 12 01 0A         [24]  608 	lcall	_UART0_SendData
                                    609 ;	main.c:16: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {
      000071                        610 00101$:
      000071 75 82 02         [24]  611 	mov	dpl,#0x02
      000074 12 01 1E         [24]  612 	lcall	_UART0_GetFlag
      000077 E5 82            [12]  613 	mov	a,dpl
      000079 60 F6            [24]  614 	jz	00101$
                                    615 ;	main.c:18: UART0_ClearFlag(UART0_TX_FLAG);
      00007B 75 82 02         [24]  616 	mov	dpl,#0x02
      00007E 12 01 18         [24]  617 	lcall	_UART0_ClearFlag
                                    618 ;	main.c:19: Delay_Ms(1000);
      000081 90 03 E8         [24]  619 	mov	dptr,#0x03e8
      000084 12 00 99         [24]  620 	lcall	_Delay_Ms
                                    621 ;	main.c:21: }
      000087 80 E2            [24]  622 	sjmp	00105$
                                    623 	.area CSEG    (CODE)
                                    624 	.area CONST   (CODE)
                                    625 	.area XINIT   (CODE)
                                    626 	.area CABS    (ABS,CODE)
