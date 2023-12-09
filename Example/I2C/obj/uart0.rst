                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart0
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
                                    243 	.globl _UART0_Init
                                    244 	.globl _UART0_SendData
                                    245 	.globl _UART0_GetData
                                    246 	.globl _UART0_EnableInterrupt
                                    247 	.globl _UART0_DisableInterrupt
                                    248 	.globl _UART0_ClearFlag
                                    249 	.globl _UART0_GetFlag
                                    250 	.globl _UART0_STRING
                                    251 	.globl _UART0_NUMBER
                                    252 ;--------------------------------------------------------
                                    253 ; special function registers
                                    254 ;--------------------------------------------------------
                                    255 	.area RSEG    (ABS,DATA)
      000000                        256 	.org 0x0000
                           000080   257 _P0	=	0x0080
                           000081   258 _SP	=	0x0081
                           000082   259 _DPL	=	0x0082
                           000083   260 _DPH	=	0x0083
                           000084   261 _RCTRIM0	=	0x0084
                           000085   262 _RCTRIM1	=	0x0085
                           000086   263 _RWK	=	0x0086
                           000087   264 _PCON	=	0x0087
                           000088   265 _TCON	=	0x0088
                           000089   266 _TMOD	=	0x0089
                           00008A   267 _TL0	=	0x008a
                           00008B   268 _TL1	=	0x008b
                           00008C   269 _TH0	=	0x008c
                           00008D   270 _TH1	=	0x008d
                           00008E   271 _CKCON	=	0x008e
                           00008F   272 _WKCON	=	0x008f
                           000090   273 _P1	=	0x0090
                           000091   274 _SFRS	=	0x0091
                           000092   275 _CAPCON0	=	0x0092
                           000093   276 _CAPCON1	=	0x0093
                           000094   277 _CAPCON2	=	0x0094
                           000095   278 _CKDIV	=	0x0095
                           000096   279 _CKSWT	=	0x0096
                           000097   280 _CKEN	=	0x0097
                           000098   281 _SCON	=	0x0098
                           000099   282 _SBUF	=	0x0099
                           00009A   283 _SBUF_1	=	0x009a
                           00009B   284 _EIE	=	0x009b
                           00009C   285 _EIE1	=	0x009c
                           00009F   286 _CHPCON	=	0x009f
                           0000A0   287 _P2	=	0x00a0
                           0000A2   288 _AUXR1	=	0x00a2
                           0000A3   289 _BODCON0	=	0x00a3
                           0000A4   290 _IAPTRG	=	0x00a4
                           0000A5   291 _IAPUEN	=	0x00a5
                           0000A6   292 _IAPAL	=	0x00a6
                           0000A7   293 _IAPAH	=	0x00a7
                           0000A8   294 _IE	=	0x00a8
                           0000A9   295 _SADDR	=	0x00a9
                           0000AA   296 _WDCON	=	0x00aa
                           0000AB   297 _BODCON1	=	0x00ab
                           0000AC   298 _P3M1	=	0x00ac
                           0000AC   299 _P3S	=	0x00ac
                           0000AD   300 _P3M2	=	0x00ad
                           0000AD   301 _P3SR	=	0x00ad
                           0000AE   302 _IAPFD	=	0x00ae
                           0000AF   303 _IAPCN	=	0x00af
                           0000B0   304 _P3	=	0x00b0
                           0000B1   305 _P0M1	=	0x00b1
                           0000B1   306 _P0S	=	0x00b1
                           0000B2   307 _P0M2	=	0x00b2
                           0000B2   308 _P0SR	=	0x00b2
                           0000B3   309 _P1M1	=	0x00b3
                           0000B3   310 _P1S	=	0x00b3
                           0000B4   311 _P1M2	=	0x00b4
                           0000B4   312 _P1SR	=	0x00b4
                           0000B5   313 _P2S	=	0x00b5
                           0000B7   314 _IPH	=	0x00b7
                           0000B7   315 _PWMINTC	=	0x00b7
                           0000B8   316 _IP	=	0x00b8
                           0000B9   317 _SADEN	=	0x00b9
                           0000BA   318 _SADEN_1	=	0x00ba
                           0000BB   319 _SADDR_1	=	0x00bb
                           0000BC   320 _I2DAT	=	0x00bc
                           0000BD   321 _I2STAT	=	0x00bd
                           0000BE   322 _I2CLK	=	0x00be
                           0000BF   323 _I2TOC	=	0x00bf
                           0000C0   324 _I2CON	=	0x00c0
                           0000C1   325 _I2ADDR	=	0x00c1
                           0000C2   326 _ADCRL	=	0x00c2
                           0000C3   327 _ADCRH	=	0x00c3
                           0000C4   328 _T3CON	=	0x00c4
                           0000C4   329 _PWM4H	=	0x00c4
                           0000C5   330 _RL3	=	0x00c5
                           0000C5   331 _PWM5H	=	0x00c5
                           0000C6   332 _RH3	=	0x00c6
                           0000C6   333 _PIOCON1	=	0x00c6
                           0000C7   334 _TA	=	0x00c7
                           0000C8   335 _T2CON	=	0x00c8
                           0000C9   336 _T2MOD	=	0x00c9
                           0000CA   337 _RCMP2L	=	0x00ca
                           0000CB   338 _RCMP2H	=	0x00cb
                           0000CC   339 _TL2	=	0x00cc
                           0000CC   340 _PWM4L	=	0x00cc
                           0000CD   341 _TH2	=	0x00cd
                           0000CD   342 _PWM5L	=	0x00cd
                           0000CE   343 _ADCMPL	=	0x00ce
                           0000CF   344 _ADCMPH	=	0x00cf
                           0000D0   345 _PSW	=	0x00d0
                           0000D1   346 _PWMPH	=	0x00d1
                           0000D2   347 _PWM0H	=	0x00d2
                           0000D3   348 _PWM1H	=	0x00d3
                           0000D4   349 _PWM2H	=	0x00d4
                           0000D5   350 _PWM3H	=	0x00d5
                           0000D6   351 _PNP	=	0x00d6
                           0000D7   352 _FBD	=	0x00d7
                           0000D8   353 _PWMCON0	=	0x00d8
                           0000D9   354 _PWMPL	=	0x00d9
                           0000DA   355 _PWM0L	=	0x00da
                           0000DB   356 _PWM1L	=	0x00db
                           0000DC   357 _PWM2L	=	0x00dc
                           0000DD   358 _PWM3L	=	0x00dd
                           0000DE   359 _PIOCON0	=	0x00de
                           0000DF   360 _PWMCON1	=	0x00df
                           0000E0   361 _ACC	=	0x00e0
                           0000E1   362 _ADCCON1	=	0x00e1
                           0000E2   363 _ADCCON2	=	0x00e2
                           0000E3   364 _ADCDLY	=	0x00e3
                           0000E4   365 _C0L	=	0x00e4
                           0000E5   366 _C0H	=	0x00e5
                           0000E6   367 _C1L	=	0x00e6
                           0000E7   368 _C1H	=	0x00e7
                           0000E8   369 _ADCCON0	=	0x00e8
                           0000E9   370 _PICON	=	0x00e9
                           0000EA   371 _PINEN	=	0x00ea
                           0000EB   372 _PIPEN	=	0x00eb
                           0000EC   373 _PIF	=	0x00ec
                           0000ED   374 _C2L	=	0x00ed
                           0000EE   375 _C2H	=	0x00ee
                           0000EF   376 _EIP	=	0x00ef
                           0000F0   377 _B	=	0x00f0
                           0000F1   378 _CAPCON3	=	0x00f1
                           0000F2   379 _CAPCON4	=	0x00f2
                           0000F3   380 _SPCR	=	0x00f3
                           0000F3   381 _SPCR2	=	0x00f3
                           0000F4   382 _SPSR	=	0x00f4
                           0000F5   383 _SPDR	=	0x00f5
                           0000F6   384 _AINDIDS	=	0x00f6
                           0000F7   385 _EIPH	=	0x00f7
                           0000F8   386 _SCON_1	=	0x00f8
                           0000F9   387 _PDTEN	=	0x00f9
                           0000FA   388 _PDTCNT	=	0x00fa
                           0000FB   389 _PMEN	=	0x00fb
                           0000FC   390 _PMD	=	0x00fc
                           0000FE   391 _EIP1	=	0x00fe
                           0000FF   392 _EIPH1	=	0x00ff
                                    393 ;--------------------------------------------------------
                                    394 ; special function bits
                                    395 ;--------------------------------------------------------
                                    396 	.area RSEG    (ABS,DATA)
      000000                        397 	.org 0x0000
                           0000FF   398 _SM0_1	=	0x00ff
                           0000FF   399 _FE_1	=	0x00ff
                           0000FE   400 _SM1_1	=	0x00fe
                           0000FD   401 _SM2_1	=	0x00fd
                           0000FC   402 _REN_1	=	0x00fc
                           0000FB   403 _TB8_1	=	0x00fb
                           0000FA   404 _RB8_1	=	0x00fa
                           0000F9   405 _TI_1	=	0x00f9
                           0000F8   406 _RI_1	=	0x00f8
                           0000EF   407 _ADCF	=	0x00ef
                           0000EE   408 _ADCS	=	0x00ee
                           0000ED   409 _ETGSEL1	=	0x00ed
                           0000EC   410 _ETGSEL0	=	0x00ec
                           0000EB   411 _ADCHS3	=	0x00eb
                           0000EA   412 _ADCHS2	=	0x00ea
                           0000E9   413 _ADCHS1	=	0x00e9
                           0000E8   414 _ADCHS0	=	0x00e8
                           0000DF   415 _PWMRUN	=	0x00df
                           0000DE   416 _LOAD	=	0x00de
                           0000DD   417 _PWMF	=	0x00dd
                           0000DC   418 _CLRPWM	=	0x00dc
                           0000D7   419 _CY	=	0x00d7
                           0000D6   420 _AC	=	0x00d6
                           0000D5   421 _F0	=	0x00d5
                           0000D4   422 _RS1	=	0x00d4
                           0000D3   423 _RS0	=	0x00d3
                           0000D2   424 _OV	=	0x00d2
                           0000D0   425 _P	=	0x00d0
                           0000CF   426 _TF2	=	0x00cf
                           0000CA   427 _TR2	=	0x00ca
                           0000C8   428 _CM_RL2	=	0x00c8
                           0000C6   429 _I2CEN	=	0x00c6
                           0000C5   430 _STA	=	0x00c5
                           0000C4   431 _STO	=	0x00c4
                           0000C3   432 _SI	=	0x00c3
                           0000C2   433 _AA	=	0x00c2
                           0000C0   434 _I2CPX	=	0x00c0
                           0000BE   435 _PADC	=	0x00be
                           0000BD   436 _PBOD	=	0x00bd
                           0000BC   437 _PS	=	0x00bc
                           0000BB   438 _PT1	=	0x00bb
                           0000BA   439 _PX1	=	0x00ba
                           0000B9   440 _PT0	=	0x00b9
                           0000B8   441 _PX0	=	0x00b8
                           0000B0   442 _P30	=	0x00b0
                           0000AF   443 _EA	=	0x00af
                           0000AE   444 _EADC	=	0x00ae
                           0000AD   445 _EBOD	=	0x00ad
                           0000AC   446 _ES	=	0x00ac
                           0000AB   447 _ET1	=	0x00ab
                           0000AA   448 _EX1	=	0x00aa
                           0000A9   449 _ET0	=	0x00a9
                           0000A8   450 _EX0	=	0x00a8
                           0000A0   451 _P20	=	0x00a0
                           00009F   452 _SM0	=	0x009f
                           00009F   453 _FE	=	0x009f
                           00009E   454 _SM1	=	0x009e
                           00009D   455 _SM2	=	0x009d
                           00009C   456 _REN	=	0x009c
                           00009B   457 _TB8	=	0x009b
                           00009A   458 _RB8	=	0x009a
                           000099   459 _TI	=	0x0099
                           000098   460 _RI	=	0x0098
                           000097   461 _P17	=	0x0097
                           000096   462 _P16	=	0x0096
                           000096   463 _TXD_1	=	0x0096
                           000095   464 _P15	=	0x0095
                           000094   465 _P14	=	0x0094
                           000094   466 _SDA	=	0x0094
                           000093   467 _P13	=	0x0093
                           000093   468 _SCL	=	0x0093
                           000092   469 _P12	=	0x0092
                           000091   470 _P11	=	0x0091
                           000090   471 _P10	=	0x0090
                           00008F   472 _TF1	=	0x008f
                           00008E   473 _TR1	=	0x008e
                           00008D   474 _TF0	=	0x008d
                           00008C   475 _TR0	=	0x008c
                           00008B   476 _IE1	=	0x008b
                           00008A   477 _IT1	=	0x008a
                           000089   478 _IE0	=	0x0089
                           000088   479 _IT0	=	0x0088
                           000087   480 _P07	=	0x0087
                           000087   481 _RXD	=	0x0087
                           000086   482 _P06	=	0x0086
                           000086   483 _TXD	=	0x0086
                           000085   484 _P05	=	0x0085
                           000084   485 _P04	=	0x0084
                           000084   486 _STADC	=	0x0084
                           000083   487 _P03	=	0x0083
                           000082   488 _P02	=	0x0082
                           000082   489 _RXD_1	=	0x0082
                           000081   490 _P01	=	0x0081
                           000081   491 _MISO	=	0x0081
                           000080   492 _P00	=	0x0080
                           000080   493 _MOSI	=	0x0080
                                    494 ;--------------------------------------------------------
                                    495 ; overlayable register banks
                                    496 ;--------------------------------------------------------
                                    497 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        498 	.ds 8
                                    499 ;--------------------------------------------------------
                                    500 ; internal ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area DSEG    (DATA)
      000016                        503 _UART0_NUMBER_digit_65536_31:
      000016                        504 	.ds 5
                                    505 ;--------------------------------------------------------
                                    506 ; overlayable items in internal ram
                                    507 ;--------------------------------------------------------
                                    508 	.area	OSEG    (OVR,DATA)
                                    509 	.area	OSEG    (OVR,DATA)
                                    510 	.area	OSEG    (OVR,DATA)
                                    511 ;--------------------------------------------------------
                                    512 ; indirectly addressable internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area ISEG    (DATA)
                                    515 ;--------------------------------------------------------
                                    516 ; absolute internal ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area IABS    (ABS,DATA)
                                    519 	.area IABS    (ABS,DATA)
                                    520 ;--------------------------------------------------------
                                    521 ; bit data
                                    522 ;--------------------------------------------------------
                                    523 	.area BSEG    (BIT)
                                    524 ;--------------------------------------------------------
                                    525 ; paged external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area PSEG    (PAG,XDATA)
                                    528 ;--------------------------------------------------------
                                    529 ; uninitialized external ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area XSEG    (XDATA)
                                    532 ;--------------------------------------------------------
                                    533 ; absolute external ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area XABS    (ABS,XDATA)
                                    536 ;--------------------------------------------------------
                                    537 ; initialized external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XISEG   (XDATA)
                                    540 	.area HOME    (CODE)
                                    541 	.area GSINIT0 (CODE)
                                    542 	.area GSINIT1 (CODE)
                                    543 	.area GSINIT2 (CODE)
                                    544 	.area GSINIT3 (CODE)
                                    545 	.area GSINIT4 (CODE)
                                    546 	.area GSINIT5 (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 	.area GSFINAL (CODE)
                                    549 	.area CSEG    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; global & static initialisations
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 ;--------------------------------------------------------
                                    558 ; Home
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area HOME    (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; code
                                    564 ;--------------------------------------------------------
                                    565 	.area CSEG    (CODE)
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'UART0_Init'
                                    568 ;------------------------------------------------------------
                                    569 ;	lib/src/uart0.c:5: void UART0_Init(void)
                                    570 ;	-----------------------------------------
                                    571 ;	 function UART0_Init
                                    572 ;	-----------------------------------------
      0003C7                        573 _UART0_Init:
                           000007   574 	ar7 = 0x07
                           000006   575 	ar6 = 0x06
                           000005   576 	ar5 = 0x05
                           000004   577 	ar4 = 0x04
                           000003   578 	ar3 = 0x03
                           000002   579 	ar2 = 0x02
                           000001   580 	ar1 = 0x01
                           000000   581 	ar0 = 0x00
                                    582 ;	lib/src/uart0.c:8: T3CON |= (1 << 5);
      0003C7 43 C4 20         [24]  583 	orl	_T3CON,#0x20
                                    584 ;	lib/src/uart0.c:10: T3CON &= 0xF8;
      0003CA 53 C4 F8         [24]  585 	anl	_T3CON,#0xf8
                                    586 ;	lib/src/uart0.c:13: EIE1 &= ~(1 << 1);
      0003CD 53 9C FD         [24]  587 	anl	_EIE1,#0xfd
                                    588 ;	lib/src/uart0.c:15: RH3 = 0xff;
      0003D0 75 C6 FF         [24]  589 	mov	_RH3,#0xff
                                    590 ;	lib/src/uart0.c:16: RL3 = 0xe6;
      0003D3 75 C5 E6         [24]  591 	mov	_RL3,#0xe6
                                    592 ;	lib/src/uart0.c:18: T3CON |= (1 << 3);
      0003D6 43 C4 08         [24]  593 	orl	_T3CON,#0x08
                                    594 ;	lib/src/uart0.c:20: PCON &= ~(1 << 7);
      0003D9 53 87 7F         [24]  595 	anl	_PCON,#0x7f
                                    596 ;	lib/src/uart0.c:22: P06 = 1;
                                    597 ;	assignBit
      0003DC D2 86            [12]  598 	setb	_P06
                                    599 ;	lib/src/uart0.c:23: P0M1 &= ~(1 << 6);
      0003DE 53 B1 BF         [24]  600 	anl	_P0M1,#0xbf
                                    601 ;	lib/src/uart0.c:24: P0M2 |= (1 << 6);
      0003E1 43 B2 40         [24]  602 	orl	_P0M2,#0x40
                                    603 ;	lib/src/uart0.c:25: P07 = 1;
                                    604 ;	assignBit
      0003E4 D2 87            [12]  605 	setb	_P07
                                    606 ;	lib/src/uart0.c:26: P0M1 &= ~(1 << 7);
      0003E6 53 B1 7F         [24]  607 	anl	_P0M1,#0x7f
                                    608 ;	lib/src/uart0.c:27: P0M2 &= ~(1 << 7);
      0003E9 53 B2 7F         [24]  609 	anl	_P0M2,#0x7f
                                    610 ;	lib/src/uart0.c:29: PCON &= ~(1 << 6);
      0003EC 53 87 BF         [24]  611 	anl	_PCON,#0xbf
                                    612 ;	lib/src/uart0.c:30: SM0 = 0;
                                    613 ;	assignBit
      0003EF C2 9F            [12]  614 	clr	_SM0
                                    615 ;	lib/src/uart0.c:31: SM1 = 1;
                                    616 ;	assignBit
      0003F1 D2 9E            [12]  617 	setb	_SM1
                                    618 ;	lib/src/uart0.c:33: REN = 1;
                                    619 ;	assignBit
      0003F3 D2 9C            [12]  620 	setb	_REN
                                    621 ;	lib/src/uart0.c:34: }
      0003F5 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'UART0_SendData'
                                    625 ;------------------------------------------------------------
                                    626 ;u8Data                    Allocated to registers 
                                    627 ;------------------------------------------------------------
                                    628 ;	lib/src/uart0.c:36: void UART0_SendData(uint8_t u8Data)
                                    629 ;	-----------------------------------------
                                    630 ;	 function UART0_SendData
                                    631 ;	-----------------------------------------
      0003F6                        632 _UART0_SendData:
      0003F6 85 82 99         [24]  633 	mov	_SBUF,dpl
                                    634 ;	lib/src/uart0.c:38: SBUF = u8Data;
                                    635 ;	lib/src/uart0.c:39: }
      0003F9 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'UART0_GetData'
                                    639 ;------------------------------------------------------------
                                    640 ;	lib/src/uart0.c:41: uint8_t UART0_GetData(void)
                                    641 ;	-----------------------------------------
                                    642 ;	 function UART0_GetData
                                    643 ;	-----------------------------------------
      0003FA                        644 _UART0_GetData:
                                    645 ;	lib/src/uart0.c:43: return SBUF;
      0003FA 85 99 82         [24]  646 	mov	dpl,_SBUF
                                    647 ;	lib/src/uart0.c:44: }
      0003FD 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'UART0_EnableInterrupt'
                                    651 ;------------------------------------------------------------
                                    652 ;	lib/src/uart0.c:46: void UART0_EnableInterrupt(void)
                                    653 ;	-----------------------------------------
                                    654 ;	 function UART0_EnableInterrupt
                                    655 ;	-----------------------------------------
      0003FE                        656 _UART0_EnableInterrupt:
                                    657 ;	lib/src/uart0.c:48: ES = 1;
                                    658 ;	assignBit
      0003FE D2 AC            [12]  659 	setb	_ES
                                    660 ;	lib/src/uart0.c:49: }
      000400 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'UART0_DisableInterrupt'
                                    664 ;------------------------------------------------------------
                                    665 ;	lib/src/uart0.c:51: void UART0_DisableInterrupt(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function UART0_DisableInterrupt
                                    668 ;	-----------------------------------------
      000401                        669 _UART0_DisableInterrupt:
                                    670 ;	lib/src/uart0.c:53: ES = 0;
                                    671 ;	assignBit
      000401 C2 AC            [12]  672 	clr	_ES
                                    673 ;	lib/src/uart0.c:54: }
      000403 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'UART0_ClearFlag'
                                    677 ;------------------------------------------------------------
                                    678 ;u8Flag                    Allocated to registers r7 
                                    679 ;------------------------------------------------------------
                                    680 ;	lib/src/uart0.c:56: void UART0_ClearFlag(uint8_t u8Flag)
                                    681 ;	-----------------------------------------
                                    682 ;	 function UART0_ClearFlag
                                    683 ;	-----------------------------------------
      000404                        684 _UART0_ClearFlag:
                                    685 ;	lib/src/uart0.c:58: SCON &= ~(u8Flag);
      000404 E5 82            [12]  686 	mov	a,dpl
      000406 F4               [12]  687 	cpl	a
      000407 52 98            [12]  688 	anl	_SCON,a
                                    689 ;	lib/src/uart0.c:59: }
      000409 22               [24]  690 	ret
                                    691 ;------------------------------------------------------------
                                    692 ;Allocation info for local variables in function 'UART0_GetFlag'
                                    693 ;------------------------------------------------------------
                                    694 ;u8Flag                    Allocated to registers r7 
                                    695 ;------------------------------------------------------------
                                    696 ;	lib/src/uart0.c:61: uint8_t UART0_GetFlag(uint8_t u8Flag)
                                    697 ;	-----------------------------------------
                                    698 ;	 function UART0_GetFlag
                                    699 ;	-----------------------------------------
      00040A                        700 _UART0_GetFlag:
                                    701 ;	lib/src/uart0.c:63: if (SCON & (u8Flag)) {
      00040A E5 82            [12]  702 	mov	a,dpl
      00040C 55 98            [12]  703 	anl	a,_SCON
      00040E 60 04            [24]  704 	jz	00102$
                                    705 ;	lib/src/uart0.c:64: return 1;
      000410 75 82 01         [24]  706 	mov	dpl,#0x01
      000413 22               [24]  707 	ret
      000414                        708 00102$:
                                    709 ;	lib/src/uart0.c:66: return 0;
      000414 75 82 00         [24]  710 	mov	dpl,#0x00
                                    711 ;	lib/src/uart0.c:68: }
      000417 22               [24]  712 	ret
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'UART0_STRING'
                                    715 ;------------------------------------------------------------
                                    716 ;cy                        Allocated to registers 
                                    717 ;------------------------------------------------------------
                                    718 ;	lib/src/uart0.c:69: void UART0_STRING(const char *cy)
                                    719 ;	-----------------------------------------
                                    720 ;	 function UART0_STRING
                                    721 ;	-----------------------------------------
      000418                        722 _UART0_STRING:
      000418 AD 82            [24]  723 	mov	r5,dpl
      00041A AE 83            [24]  724 	mov	r6,dph
      00041C AF F0            [24]  725 	mov	r7,b
                                    726 ;	lib/src/uart0.c:71: while(*cy)
      00041E                        727 00104$:
      00041E 8D 82            [24]  728 	mov	dpl,r5
      000420 8E 83            [24]  729 	mov	dph,r6
      000422 8F F0            [24]  730 	mov	b,r7
      000424 12 05 C1         [24]  731 	lcall	__gptrget
      000427 FC               [12]  732 	mov	r4,a
      000428 60 31            [24]  733 	jz	00107$
                                    734 ;	lib/src/uart0.c:73: SBUF = (*cy);
      00042A 8C 99            [24]  735 	mov	_SBUF,r4
                                    736 ;	lib/src/uart0.c:74: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
      00042C                        737 00101$:
      00042C 75 82 02         [24]  738 	mov	dpl,#0x02
      00042F C0 07            [24]  739 	push	ar7
      000431 C0 06            [24]  740 	push	ar6
      000433 C0 05            [24]  741 	push	ar5
      000435 12 04 0A         [24]  742 	lcall	_UART0_GetFlag
      000438 E5 82            [12]  743 	mov	a,dpl
      00043A D0 05            [24]  744 	pop	ar5
      00043C D0 06            [24]  745 	pop	ar6
      00043E D0 07            [24]  746 	pop	ar7
      000440 60 EA            [24]  747 	jz	00101$
                                    748 ;	lib/src/uart0.c:75: UART0_ClearFlag(UART0_TX_FLAG);
      000442 75 82 02         [24]  749 	mov	dpl,#0x02
      000445 C0 07            [24]  750 	push	ar7
      000447 C0 06            [24]  751 	push	ar6
      000449 C0 05            [24]  752 	push	ar5
      00044B 12 04 04         [24]  753 	lcall	_UART0_ClearFlag
      00044E D0 05            [24]  754 	pop	ar5
      000450 D0 06            [24]  755 	pop	ar6
      000452 D0 07            [24]  756 	pop	ar7
                                    757 ;	lib/src/uart0.c:76: cy++;
      000454 0D               [12]  758 	inc	r5
      000455 BD 00 C6         [24]  759 	cjne	r5,#0x00,00104$
      000458 0E               [12]  760 	inc	r6
      000459 80 C3            [24]  761 	sjmp	00104$
      00045B                        762 00107$:
                                    763 ;	lib/src/uart0.c:78: }
      00045B 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'UART0_NUMBER'
                                    767 ;------------------------------------------------------------
                                    768 ;number                    Allocated to registers r6 r7 
                                    769 ;count                     Allocated to registers r5 
                                    770 ;digit                     Allocated with name '_UART0_NUMBER_digit_65536_31'
                                    771 ;------------------------------------------------------------
                                    772 ;	lib/src/uart0.c:79: void UART0_NUMBER(int number)
                                    773 ;	-----------------------------------------
                                    774 ;	 function UART0_NUMBER
                                    775 ;	-----------------------------------------
      00045C                        776 _UART0_NUMBER:
      00045C AE 82            [24]  777 	mov	r6,dpl
      00045E AF 83            [24]  778 	mov	r7,dph
                                    779 ;	lib/src/uart0.c:82: char digit[5] = "";
      000460 75 16 00         [24]  780 	mov	_UART0_NUMBER_digit_65536_31,#0x00
      000463 75 17 00         [24]  781 	mov	(_UART0_NUMBER_digit_65536_31 + 0x0001),#0x00
      000466 75 18 00         [24]  782 	mov	(_UART0_NUMBER_digit_65536_31 + 0x0002),#0x00
      000469 75 19 00         [24]  783 	mov	(_UART0_NUMBER_digit_65536_31 + 0x0003),#0x00
      00046C 75 1A 00         [24]  784 	mov	(_UART0_NUMBER_digit_65536_31 + 0x0004),#0x00
                                    785 ;	lib/src/uart0.c:83: while(number != 0)
      00046F 7D 00            [12]  786 	mov	r5,#0x00
      000471                        787 00101$:
      000471 EE               [12]  788 	mov	a,r6
      000472 4F               [12]  789 	orl	a,r7
      000473 60 3D            [24]  790 	jz	00117$
                                    791 ;	lib/src/uart0.c:85: digit[count] = number%10;   //lay chu so ngoai cung xxxx8;
      000475 ED               [12]  792 	mov	a,r5
      000476 24 16            [12]  793 	add	a,#_UART0_NUMBER_digit_65536_31
      000478 F9               [12]  794 	mov	r1,a
      000479 75 1B 0A         [24]  795 	mov	__modsint_PARM_2,#0x0a
      00047C 75 1C 00         [24]  796 	mov	(__modsint_PARM_2 + 1),#0x00
      00047F 8E 82            [24]  797 	mov	dpl,r6
      000481 8F 83            [24]  798 	mov	dph,r7
      000483 C0 07            [24]  799 	push	ar7
      000485 C0 06            [24]  800 	push	ar6
      000487 C0 05            [24]  801 	push	ar5
      000489 C0 01            [24]  802 	push	ar1
      00048B 12 05 DD         [24]  803 	lcall	__modsint
      00048E AB 82            [24]  804 	mov	r3,dpl
      000490 D0 01            [24]  805 	pop	ar1
      000492 D0 05            [24]  806 	pop	ar5
      000494 D0 06            [24]  807 	pop	ar6
      000496 D0 07            [24]  808 	pop	ar7
      000498 A7 03            [24]  809 	mov	@r1,ar3
                                    810 ;	lib/src/uart0.c:86: ++count;
      00049A 0D               [12]  811 	inc	r5
                                    812 ;	lib/src/uart0.c:87: number = number/10;         //chia so number cho 10 de bo so ngoai cung xxxx
      00049B 75 1B 0A         [24]  813 	mov	__divsint_PARM_2,#0x0a
      00049E 75 1C 00         [24]  814 	mov	(__divsint_PARM_2 + 1),#0x00
      0004A1 8E 82            [24]  815 	mov	dpl,r6
      0004A3 8F 83            [24]  816 	mov	dph,r7
      0004A5 C0 05            [24]  817 	push	ar5
      0004A7 12 06 13         [24]  818 	lcall	__divsint
      0004AA AE 82            [24]  819 	mov	r6,dpl
      0004AC AF 83            [24]  820 	mov	r7,dph
      0004AE D0 05            [24]  821 	pop	ar5
                                    822 ;	lib/src/uart0.c:89: while (count!=0)
      0004B0 80 BF            [24]  823 	sjmp	00101$
      0004B2                        824 00117$:
      0004B2 8D 07            [24]  825 	mov	ar7,r5
      0004B4                        826 00107$:
      0004B4 EF               [12]  827 	mov	a,r7
      0004B5 60 29            [24]  828 	jz	00110$
                                    829 ;	lib/src/uart0.c:91: SBUF = (digit[count - 1] + 0x30); // 0x30 = 48 ;
      0004B7 8F 06            [24]  830 	mov	ar6,r7
      0004B9 EE               [12]  831 	mov	a,r6
      0004BA 14               [12]  832 	dec	a
      0004BB 24 16            [12]  833 	add	a,#_UART0_NUMBER_digit_65536_31
      0004BD F9               [12]  834 	mov	r1,a
      0004BE 87 06            [24]  835 	mov	ar6,@r1
      0004C0 74 30            [12]  836 	mov	a,#0x30
      0004C2 2E               [12]  837 	add	a,r6
      0004C3 F5 99            [12]  838 	mov	_SBUF,a
                                    839 ;	lib/src/uart0.c:92: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
      0004C5                        840 00104$:
      0004C5 75 82 02         [24]  841 	mov	dpl,#0x02
      0004C8 C0 07            [24]  842 	push	ar7
      0004CA 12 04 0A         [24]  843 	lcall	_UART0_GetFlag
      0004CD E5 82            [12]  844 	mov	a,dpl
      0004CF D0 07            [24]  845 	pop	ar7
      0004D1 60 F2            [24]  846 	jz	00104$
                                    847 ;	lib/src/uart0.c:93: UART0_ClearFlag(UART0_TX_FLAG);
      0004D3 75 82 02         [24]  848 	mov	dpl,#0x02
      0004D6 C0 07            [24]  849 	push	ar7
      0004D8 12 04 04         [24]  850 	lcall	_UART0_ClearFlag
      0004DB D0 07            [24]  851 	pop	ar7
                                    852 ;	lib/src/uart0.c:94: --count;
      0004DD 1F               [12]  853 	dec	r7
      0004DE 80 D4            [24]  854 	sjmp	00107$
      0004E0                        855 00110$:
                                    856 ;	lib/src/uart0.c:96: }
      0004E0 22               [24]  857 	ret
                                    858 	.area CSEG    (CODE)
                                    859 	.area CONST   (CODE)
                                    860 	.area XINIT   (CODE)
                                    861 	.area CABS    (ABS,CODE)
