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
                                     11 	.globl _UART0_ISR
                                     12 	.globl _main
                                     13 	.globl _UART0_GetFlag
                                     14 	.globl _UART0_ClearFlag
                                     15 	.globl _UART0_SendData
                                     16 	.globl _UART0_Init
                                     17 	.globl _Delay_Ms
                                     18 	.globl _MOSI
                                     19 	.globl _P00
                                     20 	.globl _MISO
                                     21 	.globl _P01
                                     22 	.globl _RXD_1
                                     23 	.globl _P02
                                     24 	.globl _P03
                                     25 	.globl _STADC
                                     26 	.globl _P04
                                     27 	.globl _P05
                                     28 	.globl _TXD
                                     29 	.globl _P06
                                     30 	.globl _RXD
                                     31 	.globl _P07
                                     32 	.globl _IT0
                                     33 	.globl _IE0
                                     34 	.globl _IT1
                                     35 	.globl _IE1
                                     36 	.globl _TR0
                                     37 	.globl _TF0
                                     38 	.globl _TR1
                                     39 	.globl _TF1
                                     40 	.globl _P10
                                     41 	.globl _P11
                                     42 	.globl _P12
                                     43 	.globl _SCL
                                     44 	.globl _P13
                                     45 	.globl _SDA
                                     46 	.globl _P14
                                     47 	.globl _P15
                                     48 	.globl _TXD_1
                                     49 	.globl _P16
                                     50 	.globl _P17
                                     51 	.globl _RI
                                     52 	.globl _TI
                                     53 	.globl _RB8
                                     54 	.globl _TB8
                                     55 	.globl _REN
                                     56 	.globl _SM2
                                     57 	.globl _SM1
                                     58 	.globl _FE
                                     59 	.globl _SM0
                                     60 	.globl _P20
                                     61 	.globl _EX0
                                     62 	.globl _ET0
                                     63 	.globl _EX1
                                     64 	.globl _ET1
                                     65 	.globl _ES
                                     66 	.globl _EBOD
                                     67 	.globl _EADC
                                     68 	.globl _EA
                                     69 	.globl _P30
                                     70 	.globl _PX0
                                     71 	.globl _PT0
                                     72 	.globl _PX1
                                     73 	.globl _PT1
                                     74 	.globl _PS
                                     75 	.globl _PBOD
                                     76 	.globl _PADC
                                     77 	.globl _I2CPX
                                     78 	.globl _AA
                                     79 	.globl _SI
                                     80 	.globl _STO
                                     81 	.globl _STA
                                     82 	.globl _I2CEN
                                     83 	.globl _CM_RL2
                                     84 	.globl _TR2
                                     85 	.globl _TF2
                                     86 	.globl _P
                                     87 	.globl _OV
                                     88 	.globl _RS0
                                     89 	.globl _RS1
                                     90 	.globl _F0
                                     91 	.globl _AC
                                     92 	.globl _CY
                                     93 	.globl _CLRPWM
                                     94 	.globl _PWMF
                                     95 	.globl _LOAD
                                     96 	.globl _PWMRUN
                                     97 	.globl _ADCHS0
                                     98 	.globl _ADCHS1
                                     99 	.globl _ADCHS2
                                    100 	.globl _ADCHS3
                                    101 	.globl _ETGSEL0
                                    102 	.globl _ETGSEL1
                                    103 	.globl _ADCS
                                    104 	.globl _ADCF
                                    105 	.globl _RI_1
                                    106 	.globl _TI_1
                                    107 	.globl _RB8_1
                                    108 	.globl _TB8_1
                                    109 	.globl _REN_1
                                    110 	.globl _SM2_1
                                    111 	.globl _SM1_1
                                    112 	.globl _FE_1
                                    113 	.globl _SM0_1
                                    114 	.globl _EIPH1
                                    115 	.globl _EIP1
                                    116 	.globl _PMD
                                    117 	.globl _PMEN
                                    118 	.globl _PDTCNT
                                    119 	.globl _PDTEN
                                    120 	.globl _SCON_1
                                    121 	.globl _EIPH
                                    122 	.globl _AINDIDS
                                    123 	.globl _SPDR
                                    124 	.globl _SPSR
                                    125 	.globl _SPCR2
                                    126 	.globl _SPCR
                                    127 	.globl _CAPCON4
                                    128 	.globl _CAPCON3
                                    129 	.globl _B
                                    130 	.globl _EIP
                                    131 	.globl _C2H
                                    132 	.globl _C2L
                                    133 	.globl _PIF
                                    134 	.globl _PIPEN
                                    135 	.globl _PINEN
                                    136 	.globl _PICON
                                    137 	.globl _ADCCON0
                                    138 	.globl _C1H
                                    139 	.globl _C1L
                                    140 	.globl _C0H
                                    141 	.globl _C0L
                                    142 	.globl _ADCDLY
                                    143 	.globl _ADCCON2
                                    144 	.globl _ADCCON1
                                    145 	.globl _ACC
                                    146 	.globl _PWMCON1
                                    147 	.globl _PIOCON0
                                    148 	.globl _PWM3L
                                    149 	.globl _PWM2L
                                    150 	.globl _PWM1L
                                    151 	.globl _PWM0L
                                    152 	.globl _PWMPL
                                    153 	.globl _PWMCON0
                                    154 	.globl _FBD
                                    155 	.globl _PNP
                                    156 	.globl _PWM3H
                                    157 	.globl _PWM2H
                                    158 	.globl _PWM1H
                                    159 	.globl _PWM0H
                                    160 	.globl _PWMPH
                                    161 	.globl _PSW
                                    162 	.globl _ADCMPH
                                    163 	.globl _ADCMPL
                                    164 	.globl _PWM5L
                                    165 	.globl _TH2
                                    166 	.globl _PWM4L
                                    167 	.globl _TL2
                                    168 	.globl _RCMP2H
                                    169 	.globl _RCMP2L
                                    170 	.globl _T2MOD
                                    171 	.globl _T2CON
                                    172 	.globl _TA
                                    173 	.globl _PIOCON1
                                    174 	.globl _RH3
                                    175 	.globl _PWM5H
                                    176 	.globl _RL3
                                    177 	.globl _PWM4H
                                    178 	.globl _T3CON
                                    179 	.globl _ADCRH
                                    180 	.globl _ADCRL
                                    181 	.globl _I2ADDR
                                    182 	.globl _I2CON
                                    183 	.globl _I2TOC
                                    184 	.globl _I2CLK
                                    185 	.globl _I2STAT
                                    186 	.globl _I2DAT
                                    187 	.globl _SADDR_1
                                    188 	.globl _SADEN_1
                                    189 	.globl _SADEN
                                    190 	.globl _IP
                                    191 	.globl _PWMINTC
                                    192 	.globl _IPH
                                    193 	.globl _P2S
                                    194 	.globl _P1SR
                                    195 	.globl _P1M2
                                    196 	.globl _P1S
                                    197 	.globl _P1M1
                                    198 	.globl _P0SR
                                    199 	.globl _P0M2
                                    200 	.globl _P0S
                                    201 	.globl _P0M1
                                    202 	.globl _P3
                                    203 	.globl _IAPCN
                                    204 	.globl _IAPFD
                                    205 	.globl _P3SR
                                    206 	.globl _P3M2
                                    207 	.globl _P3S
                                    208 	.globl _P3M1
                                    209 	.globl _BODCON1
                                    210 	.globl _WDCON
                                    211 	.globl _SADDR
                                    212 	.globl _IE
                                    213 	.globl _IAPAH
                                    214 	.globl _IAPAL
                                    215 	.globl _IAPUEN
                                    216 	.globl _IAPTRG
                                    217 	.globl _BODCON0
                                    218 	.globl _AUXR1
                                    219 	.globl _P2
                                    220 	.globl _CHPCON
                                    221 	.globl _EIE1
                                    222 	.globl _EIE
                                    223 	.globl _SBUF_1
                                    224 	.globl _SBUF
                                    225 	.globl _SCON
                                    226 	.globl _CKEN
                                    227 	.globl _CKSWT
                                    228 	.globl _CKDIV
                                    229 	.globl _CAPCON2
                                    230 	.globl _CAPCON1
                                    231 	.globl _CAPCON0
                                    232 	.globl _SFRS
                                    233 	.globl _P1
                                    234 	.globl _WKCON
                                    235 	.globl _CKCON
                                    236 	.globl _TH1
                                    237 	.globl _TH0
                                    238 	.globl _TL1
                                    239 	.globl _TL0
                                    240 	.globl _TMOD
                                    241 	.globl _TCON
                                    242 	.globl _PCON
                                    243 	.globl _RWK
                                    244 	.globl _RCTRIM1
                                    245 	.globl _RCTRIM0
                                    246 	.globl _DPH
                                    247 	.globl _DPL
                                    248 	.globl _SP
                                    249 	.globl _P0
                                    250 ;--------------------------------------------------------
                                    251 ; special function registers
                                    252 ;--------------------------------------------------------
                                    253 	.area RSEG    (ABS,DATA)
      000000                        254 	.org 0x0000
                           000080   255 _P0	=	0x0080
                           000081   256 _SP	=	0x0081
                           000082   257 _DPL	=	0x0082
                           000083   258 _DPH	=	0x0083
                           000084   259 _RCTRIM0	=	0x0084
                           000085   260 _RCTRIM1	=	0x0085
                           000086   261 _RWK	=	0x0086
                           000087   262 _PCON	=	0x0087
                           000088   263 _TCON	=	0x0088
                           000089   264 _TMOD	=	0x0089
                           00008A   265 _TL0	=	0x008a
                           00008B   266 _TL1	=	0x008b
                           00008C   267 _TH0	=	0x008c
                           00008D   268 _TH1	=	0x008d
                           00008E   269 _CKCON	=	0x008e
                           00008F   270 _WKCON	=	0x008f
                           000090   271 _P1	=	0x0090
                           000091   272 _SFRS	=	0x0091
                           000092   273 _CAPCON0	=	0x0092
                           000093   274 _CAPCON1	=	0x0093
                           000094   275 _CAPCON2	=	0x0094
                           000095   276 _CKDIV	=	0x0095
                           000096   277 _CKSWT	=	0x0096
                           000097   278 _CKEN	=	0x0097
                           000098   279 _SCON	=	0x0098
                           000099   280 _SBUF	=	0x0099
                           00009A   281 _SBUF_1	=	0x009a
                           00009B   282 _EIE	=	0x009b
                           00009C   283 _EIE1	=	0x009c
                           00009F   284 _CHPCON	=	0x009f
                           0000A0   285 _P2	=	0x00a0
                           0000A2   286 _AUXR1	=	0x00a2
                           0000A3   287 _BODCON0	=	0x00a3
                           0000A4   288 _IAPTRG	=	0x00a4
                           0000A5   289 _IAPUEN	=	0x00a5
                           0000A6   290 _IAPAL	=	0x00a6
                           0000A7   291 _IAPAH	=	0x00a7
                           0000A8   292 _IE	=	0x00a8
                           0000A9   293 _SADDR	=	0x00a9
                           0000AA   294 _WDCON	=	0x00aa
                           0000AB   295 _BODCON1	=	0x00ab
                           0000AC   296 _P3M1	=	0x00ac
                           0000AC   297 _P3S	=	0x00ac
                           0000AD   298 _P3M2	=	0x00ad
                           0000AD   299 _P3SR	=	0x00ad
                           0000AE   300 _IAPFD	=	0x00ae
                           0000AF   301 _IAPCN	=	0x00af
                           0000B0   302 _P3	=	0x00b0
                           0000B1   303 _P0M1	=	0x00b1
                           0000B1   304 _P0S	=	0x00b1
                           0000B2   305 _P0M2	=	0x00b2
                           0000B2   306 _P0SR	=	0x00b2
                           0000B3   307 _P1M1	=	0x00b3
                           0000B3   308 _P1S	=	0x00b3
                           0000B4   309 _P1M2	=	0x00b4
                           0000B4   310 _P1SR	=	0x00b4
                           0000B5   311 _P2S	=	0x00b5
                           0000B7   312 _IPH	=	0x00b7
                           0000B7   313 _PWMINTC	=	0x00b7
                           0000B8   314 _IP	=	0x00b8
                           0000B9   315 _SADEN	=	0x00b9
                           0000BA   316 _SADEN_1	=	0x00ba
                           0000BB   317 _SADDR_1	=	0x00bb
                           0000BC   318 _I2DAT	=	0x00bc
                           0000BD   319 _I2STAT	=	0x00bd
                           0000BE   320 _I2CLK	=	0x00be
                           0000BF   321 _I2TOC	=	0x00bf
                           0000C0   322 _I2CON	=	0x00c0
                           0000C1   323 _I2ADDR	=	0x00c1
                           0000C2   324 _ADCRL	=	0x00c2
                           0000C3   325 _ADCRH	=	0x00c3
                           0000C4   326 _T3CON	=	0x00c4
                           0000C4   327 _PWM4H	=	0x00c4
                           0000C5   328 _RL3	=	0x00c5
                           0000C5   329 _PWM5H	=	0x00c5
                           0000C6   330 _RH3	=	0x00c6
                           0000C6   331 _PIOCON1	=	0x00c6
                           0000C7   332 _TA	=	0x00c7
                           0000C8   333 _T2CON	=	0x00c8
                           0000C9   334 _T2MOD	=	0x00c9
                           0000CA   335 _RCMP2L	=	0x00ca
                           0000CB   336 _RCMP2H	=	0x00cb
                           0000CC   337 _TL2	=	0x00cc
                           0000CC   338 _PWM4L	=	0x00cc
                           0000CD   339 _TH2	=	0x00cd
                           0000CD   340 _PWM5L	=	0x00cd
                           0000CE   341 _ADCMPL	=	0x00ce
                           0000CF   342 _ADCMPH	=	0x00cf
                           0000D0   343 _PSW	=	0x00d0
                           0000D1   344 _PWMPH	=	0x00d1
                           0000D2   345 _PWM0H	=	0x00d2
                           0000D3   346 _PWM1H	=	0x00d3
                           0000D4   347 _PWM2H	=	0x00d4
                           0000D5   348 _PWM3H	=	0x00d5
                           0000D6   349 _PNP	=	0x00d6
                           0000D7   350 _FBD	=	0x00d7
                           0000D8   351 _PWMCON0	=	0x00d8
                           0000D9   352 _PWMPL	=	0x00d9
                           0000DA   353 _PWM0L	=	0x00da
                           0000DB   354 _PWM1L	=	0x00db
                           0000DC   355 _PWM2L	=	0x00dc
                           0000DD   356 _PWM3L	=	0x00dd
                           0000DE   357 _PIOCON0	=	0x00de
                           0000DF   358 _PWMCON1	=	0x00df
                           0000E0   359 _ACC	=	0x00e0
                           0000E1   360 _ADCCON1	=	0x00e1
                           0000E2   361 _ADCCON2	=	0x00e2
                           0000E3   362 _ADCDLY	=	0x00e3
                           0000E4   363 _C0L	=	0x00e4
                           0000E5   364 _C0H	=	0x00e5
                           0000E6   365 _C1L	=	0x00e6
                           0000E7   366 _C1H	=	0x00e7
                           0000E8   367 _ADCCON0	=	0x00e8
                           0000E9   368 _PICON	=	0x00e9
                           0000EA   369 _PINEN	=	0x00ea
                           0000EB   370 _PIPEN	=	0x00eb
                           0000EC   371 _PIF	=	0x00ec
                           0000ED   372 _C2L	=	0x00ed
                           0000EE   373 _C2H	=	0x00ee
                           0000EF   374 _EIP	=	0x00ef
                           0000F0   375 _B	=	0x00f0
                           0000F1   376 _CAPCON3	=	0x00f1
                           0000F2   377 _CAPCON4	=	0x00f2
                           0000F3   378 _SPCR	=	0x00f3
                           0000F3   379 _SPCR2	=	0x00f3
                           0000F4   380 _SPSR	=	0x00f4
                           0000F5   381 _SPDR	=	0x00f5
                           0000F6   382 _AINDIDS	=	0x00f6
                           0000F7   383 _EIPH	=	0x00f7
                           0000F8   384 _SCON_1	=	0x00f8
                           0000F9   385 _PDTEN	=	0x00f9
                           0000FA   386 _PDTCNT	=	0x00fa
                           0000FB   387 _PMEN	=	0x00fb
                           0000FC   388 _PMD	=	0x00fc
                           0000FE   389 _EIP1	=	0x00fe
                           0000FF   390 _EIPH1	=	0x00ff
                                    391 ;--------------------------------------------------------
                                    392 ; special function bits
                                    393 ;--------------------------------------------------------
                                    394 	.area RSEG    (ABS,DATA)
      000000                        395 	.org 0x0000
                           0000FF   396 _SM0_1	=	0x00ff
                           0000FF   397 _FE_1	=	0x00ff
                           0000FE   398 _SM1_1	=	0x00fe
                           0000FD   399 _SM2_1	=	0x00fd
                           0000FC   400 _REN_1	=	0x00fc
                           0000FB   401 _TB8_1	=	0x00fb
                           0000FA   402 _RB8_1	=	0x00fa
                           0000F9   403 _TI_1	=	0x00f9
                           0000F8   404 _RI_1	=	0x00f8
                           0000EF   405 _ADCF	=	0x00ef
                           0000EE   406 _ADCS	=	0x00ee
                           0000ED   407 _ETGSEL1	=	0x00ed
                           0000EC   408 _ETGSEL0	=	0x00ec
                           0000EB   409 _ADCHS3	=	0x00eb
                           0000EA   410 _ADCHS2	=	0x00ea
                           0000E9   411 _ADCHS1	=	0x00e9
                           0000E8   412 _ADCHS0	=	0x00e8
                           0000DF   413 _PWMRUN	=	0x00df
                           0000DE   414 _LOAD	=	0x00de
                           0000DD   415 _PWMF	=	0x00dd
                           0000DC   416 _CLRPWM	=	0x00dc
                           0000D7   417 _CY	=	0x00d7
                           0000D6   418 _AC	=	0x00d6
                           0000D5   419 _F0	=	0x00d5
                           0000D4   420 _RS1	=	0x00d4
                           0000D3   421 _RS0	=	0x00d3
                           0000D2   422 _OV	=	0x00d2
                           0000D0   423 _P	=	0x00d0
                           0000CF   424 _TF2	=	0x00cf
                           0000CA   425 _TR2	=	0x00ca
                           0000C8   426 _CM_RL2	=	0x00c8
                           0000C6   427 _I2CEN	=	0x00c6
                           0000C5   428 _STA	=	0x00c5
                           0000C4   429 _STO	=	0x00c4
                           0000C3   430 _SI	=	0x00c3
                           0000C2   431 _AA	=	0x00c2
                           0000C0   432 _I2CPX	=	0x00c0
                           0000BE   433 _PADC	=	0x00be
                           0000BD   434 _PBOD	=	0x00bd
                           0000BC   435 _PS	=	0x00bc
                           0000BB   436 _PT1	=	0x00bb
                           0000BA   437 _PX1	=	0x00ba
                           0000B9   438 _PT0	=	0x00b9
                           0000B8   439 _PX0	=	0x00b8
                           0000B0   440 _P30	=	0x00b0
                           0000AF   441 _EA	=	0x00af
                           0000AE   442 _EADC	=	0x00ae
                           0000AD   443 _EBOD	=	0x00ad
                           0000AC   444 _ES	=	0x00ac
                           0000AB   445 _ET1	=	0x00ab
                           0000AA   446 _EX1	=	0x00aa
                           0000A9   447 _ET0	=	0x00a9
                           0000A8   448 _EX0	=	0x00a8
                           0000A0   449 _P20	=	0x00a0
                           00009F   450 _SM0	=	0x009f
                           00009F   451 _FE	=	0x009f
                           00009E   452 _SM1	=	0x009e
                           00009D   453 _SM2	=	0x009d
                           00009C   454 _REN	=	0x009c
                           00009B   455 _TB8	=	0x009b
                           00009A   456 _RB8	=	0x009a
                           000099   457 _TI	=	0x0099
                           000098   458 _RI	=	0x0098
                           000097   459 _P17	=	0x0097
                           000096   460 _P16	=	0x0096
                           000096   461 _TXD_1	=	0x0096
                           000095   462 _P15	=	0x0095
                           000094   463 _P14	=	0x0094
                           000094   464 _SDA	=	0x0094
                           000093   465 _P13	=	0x0093
                           000093   466 _SCL	=	0x0093
                           000092   467 _P12	=	0x0092
                           000091   468 _P11	=	0x0091
                           000090   469 _P10	=	0x0090
                           00008F   470 _TF1	=	0x008f
                           00008E   471 _TR1	=	0x008e
                           00008D   472 _TF0	=	0x008d
                           00008C   473 _TR0	=	0x008c
                           00008B   474 _IE1	=	0x008b
                           00008A   475 _IT1	=	0x008a
                           000089   476 _IE0	=	0x0089
                           000088   477 _IT0	=	0x0088
                           000087   478 _P07	=	0x0087
                           000087   479 _RXD	=	0x0087
                           000086   480 _P06	=	0x0086
                           000086   481 _TXD	=	0x0086
                           000085   482 _P05	=	0x0085
                           000084   483 _P04	=	0x0084
                           000084   484 _STADC	=	0x0084
                           000083   485 _P03	=	0x0083
                           000082   486 _P02	=	0x0082
                           000082   487 _RXD_1	=	0x0082
                           000081   488 _P01	=	0x0081
                           000081   489 _MISO	=	0x0081
                           000080   490 _P00	=	0x0080
                           000080   491 _MOSI	=	0x0080
                                    492 ;--------------------------------------------------------
                                    493 ; overlayable register banks
                                    494 ;--------------------------------------------------------
                                    495 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        496 	.ds 8
                                    497 ;--------------------------------------------------------
                                    498 ; internal ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area DSEG    (DATA)
                                    501 ;--------------------------------------------------------
                                    502 ; overlayable items in internal ram
                                    503 ;--------------------------------------------------------
                                    504 ;--------------------------------------------------------
                                    505 ; Stack segment in internal ram
                                    506 ;--------------------------------------------------------
                                    507 	.area SSEG
      000008                        508 __start__stack:
      000008                        509 	.ds	1
                                    510 
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
                                    551 ; interrupt vector
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
      000000                        554 __interrupt_vect:
      000000 02 00 29         [24]  555 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  556 	reti
      000004                        557 	.ds	7
      00000B 32               [24]  558 	reti
      00000C                        559 	.ds	7
      000013 32               [24]  560 	reti
      000014                        561 	.ds	7
      00001B 32               [24]  562 	reti
      00001C                        563 	.ds	7
      000023 02 00 A6         [24]  564 	ljmp	_UART0_ISR
                                    565 ;--------------------------------------------------------
                                    566 ; global & static initialisations
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 	.area GSFINAL (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.globl __sdcc_gsinit_startup
                                    573 	.globl __sdcc_program_startup
                                    574 	.globl __start__stack
                                    575 	.globl __mcs51_genXINIT
                                    576 	.globl __mcs51_genXRAMCLEAR
                                    577 	.globl __mcs51_genRAMCLEAR
                                    578 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  579 	ljmp	__sdcc_program_startup
                                    580 ;--------------------------------------------------------
                                    581 ; Home
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
                                    584 	.area HOME    (CODE)
      000026                        585 __sdcc_program_startup:
      000026 02 00 85         [24]  586 	ljmp	_main
                                    587 ;	return from main will return to caller
                                    588 ;--------------------------------------------------------
                                    589 ; code
                                    590 ;--------------------------------------------------------
                                    591 	.area CSEG    (CODE)
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'main'
                                    594 ;------------------------------------------------------------
                                    595 ;	main.c:6: void main(void)
                                    596 ;	-----------------------------------------
                                    597 ;	 function main
                                    598 ;	-----------------------------------------
      000085                        599 _main:
                           000007   600 	ar7 = 0x07
                           000006   601 	ar6 = 0x06
                           000005   602 	ar5 = 0x05
                           000004   603 	ar4 = 0x04
                           000003   604 	ar3 = 0x03
                           000002   605 	ar2 = 0x02
                           000001   606 	ar1 = 0x01
                           000000   607 	ar0 = 0x00
                                    608 ;	main.c:12: UART0_Init();
      000085 12 00 F6         [24]  609 	lcall	_UART0_Init
                                    610 ;	main.c:13: while (1) {
      000088                        611 00105$:
                                    612 ;	main.c:14: UART0_SendData(0x39);
      000088 75 82 39         [24]  613 	mov	dpl,#0x39
      00008B 12 01 25         [24]  614 	lcall	_UART0_SendData
                                    615 ;	main.c:16: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {
      00008E                        616 00101$:
      00008E 75 82 02         [24]  617 	mov	dpl,#0x02
      000091 12 01 39         [24]  618 	lcall	_UART0_GetFlag
      000094 E5 82            [12]  619 	mov	a,dpl
      000096 60 F6            [24]  620 	jz	00101$
                                    621 ;	main.c:18: UART0_ClearFlag(UART0_TX_FLAG);
      000098 75 82 02         [24]  622 	mov	dpl,#0x02
      00009B 12 01 33         [24]  623 	lcall	_UART0_ClearFlag
                                    624 ;	main.c:19: Delay_Ms(1000);
      00009E 90 03 E8         [24]  625 	mov	dptr,#0x03e8
      0000A1 12 00 B7         [24]  626 	lcall	_Delay_Ms
                                    627 ;	main.c:21: }
      0000A4 80 E2            [24]  628 	sjmp	00105$
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'UART0_ISR'
                                    631 ;------------------------------------------------------------
                                    632 ;	main.c:22: void UART0_ISR(void) __interrupt (4){}
                                    633 ;	-----------------------------------------
                                    634 ;	 function UART0_ISR
                                    635 ;	-----------------------------------------
      0000A6                        636 _UART0_ISR:
      0000A6 32               [24]  637 	reti
                                    638 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    639 ;	eliminated unneeded push/pop not_psw
                                    640 ;	eliminated unneeded push/pop dpl
                                    641 ;	eliminated unneeded push/pop dph
                                    642 ;	eliminated unneeded push/pop b
                                    643 ;	eliminated unneeded push/pop acc
                                    644 	.area CSEG    (CODE)
                                    645 	.area CONST   (CODE)
                                    646 	.area XINIT   (CODE)
                                    647 	.area CABS    (ABS,CODE)
