                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Apr  3 10:29:26 2025
                                      5 ;--------------------------------------------------------
                                      6 	.module uart0
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _MOSI
                                     13 	.globl _P00
                                     14 	.globl _MISO
                                     15 	.globl _P01
                                     16 	.globl _RXD_1
                                     17 	.globl _P02
                                     18 	.globl _P03
                                     19 	.globl _STADC
                                     20 	.globl _P04
                                     21 	.globl _P05
                                     22 	.globl _TXD
                                     23 	.globl _P06
                                     24 	.globl _RXD
                                     25 	.globl _P07
                                     26 	.globl _IT0
                                     27 	.globl _IE0
                                     28 	.globl _IT1
                                     29 	.globl _IE1
                                     30 	.globl _TR0
                                     31 	.globl _TF0
                                     32 	.globl _TR1
                                     33 	.globl _TF1
                                     34 	.globl _P10
                                     35 	.globl _P11
                                     36 	.globl _P12
                                     37 	.globl _SCL
                                     38 	.globl _P13
                                     39 	.globl _SDA
                                     40 	.globl _P14
                                     41 	.globl _P15
                                     42 	.globl _TXD_1
                                     43 	.globl _P16
                                     44 	.globl _P17
                                     45 	.globl _RI
                                     46 	.globl _TI
                                     47 	.globl _RB8
                                     48 	.globl _TB8
                                     49 	.globl _REN
                                     50 	.globl _SM2
                                     51 	.globl _SM1
                                     52 	.globl _FE
                                     53 	.globl _SM0
                                     54 	.globl _P20
                                     55 	.globl _EX0
                                     56 	.globl _ET0
                                     57 	.globl _EX1
                                     58 	.globl _ET1
                                     59 	.globl _ES
                                     60 	.globl _EBOD
                                     61 	.globl _EADC
                                     62 	.globl _EA
                                     63 	.globl _P30
                                     64 	.globl _PX0
                                     65 	.globl _PT0
                                     66 	.globl _PX1
                                     67 	.globl _PT1
                                     68 	.globl _PS
                                     69 	.globl _PBOD
                                     70 	.globl _PADC
                                     71 	.globl _I2CPX
                                     72 	.globl _AA
                                     73 	.globl _SI
                                     74 	.globl _STO
                                     75 	.globl _STA
                                     76 	.globl _I2CEN
                                     77 	.globl _CM_RL2
                                     78 	.globl _TR2
                                     79 	.globl _TF2
                                     80 	.globl _P
                                     81 	.globl _OV
                                     82 	.globl _RS0
                                     83 	.globl _RS1
                                     84 	.globl _F0
                                     85 	.globl _AC
                                     86 	.globl _CY
                                     87 	.globl _CLRPWM
                                     88 	.globl _PWMF
                                     89 	.globl _LOAD
                                     90 	.globl _PWMRUN
                                     91 	.globl _ADCHS0
                                     92 	.globl _ADCHS1
                                     93 	.globl _ADCHS2
                                     94 	.globl _ADCHS3
                                     95 	.globl _ETGSEL0
                                     96 	.globl _ETGSEL1
                                     97 	.globl _ADCS
                                     98 	.globl _ADCF
                                     99 	.globl _RI_1
                                    100 	.globl _TI_1
                                    101 	.globl _RB8_1
                                    102 	.globl _TB8_1
                                    103 	.globl _REN_1
                                    104 	.globl _SM2_1
                                    105 	.globl _SM1_1
                                    106 	.globl _FE_1
                                    107 	.globl _SM0_1
                                    108 	.globl _EIPH1
                                    109 	.globl _EIP1
                                    110 	.globl _PMD
                                    111 	.globl _PMEN
                                    112 	.globl _PDTCNT
                                    113 	.globl _PDTEN
                                    114 	.globl _SCON_1
                                    115 	.globl _EIPH
                                    116 	.globl _AINDIDS
                                    117 	.globl _SPDR
                                    118 	.globl _SPSR
                                    119 	.globl _SPCR2
                                    120 	.globl _SPCR
                                    121 	.globl _CAPCON4
                                    122 	.globl _CAPCON3
                                    123 	.globl _B
                                    124 	.globl _EIP
                                    125 	.globl _C2H
                                    126 	.globl _C2L
                                    127 	.globl _PIF
                                    128 	.globl _PIPEN
                                    129 	.globl _PINEN
                                    130 	.globl _PICON
                                    131 	.globl _ADCCON0
                                    132 	.globl _C1H
                                    133 	.globl _C1L
                                    134 	.globl _C0H
                                    135 	.globl _C0L
                                    136 	.globl _ADCDLY
                                    137 	.globl _ADCCON2
                                    138 	.globl _ADCCON1
                                    139 	.globl _ACC
                                    140 	.globl _PWMCON1
                                    141 	.globl _PIOCON0
                                    142 	.globl _PWM3L
                                    143 	.globl _PWM2L
                                    144 	.globl _PWM1L
                                    145 	.globl _PWM0L
                                    146 	.globl _PWMPL
                                    147 	.globl _PWMCON0
                                    148 	.globl _FBD
                                    149 	.globl _PNP
                                    150 	.globl _PWM3H
                                    151 	.globl _PWM2H
                                    152 	.globl _PWM1H
                                    153 	.globl _PWM0H
                                    154 	.globl _PWMPH
                                    155 	.globl _PSW
                                    156 	.globl _ADCMPH
                                    157 	.globl _ADCMPL
                                    158 	.globl _PWM5L
                                    159 	.globl _TH2
                                    160 	.globl _PWM4L
                                    161 	.globl _TL2
                                    162 	.globl _RCMP2H
                                    163 	.globl _RCMP2L
                                    164 	.globl _T2MOD
                                    165 	.globl _T2CON
                                    166 	.globl _TA
                                    167 	.globl _PIOCON1
                                    168 	.globl _RH3
                                    169 	.globl _PWM5H
                                    170 	.globl _RL3
                                    171 	.globl _PWM4H
                                    172 	.globl _T3CON
                                    173 	.globl _ADCRH
                                    174 	.globl _ADCRL
                                    175 	.globl _I2ADDR
                                    176 	.globl _I2CON
                                    177 	.globl _I2TOC
                                    178 	.globl _I2CLK
                                    179 	.globl _I2STAT
                                    180 	.globl _I2DAT
                                    181 	.globl _SADDR_1
                                    182 	.globl _SADEN_1
                                    183 	.globl _SADEN
                                    184 	.globl _IP
                                    185 	.globl _PWMINTC
                                    186 	.globl _IPH
                                    187 	.globl _P2S
                                    188 	.globl _P1SR
                                    189 	.globl _P1M2
                                    190 	.globl _P1S
                                    191 	.globl _P1M1
                                    192 	.globl _P0SR
                                    193 	.globl _P0M2
                                    194 	.globl _P0S
                                    195 	.globl _P0M1
                                    196 	.globl _P3
                                    197 	.globl _IAPCN
                                    198 	.globl _IAPFD
                                    199 	.globl _P3SR
                                    200 	.globl _P3M2
                                    201 	.globl _P3S
                                    202 	.globl _P3M1
                                    203 	.globl _BODCON1
                                    204 	.globl _WDCON
                                    205 	.globl _SADDR
                                    206 	.globl _IE
                                    207 	.globl _IAPAH
                                    208 	.globl _IAPAL
                                    209 	.globl _IAPUEN
                                    210 	.globl _IAPTRG
                                    211 	.globl _BODCON0
                                    212 	.globl _AUXR1
                                    213 	.globl _P2
                                    214 	.globl _CHPCON
                                    215 	.globl _EIE1
                                    216 	.globl _EIE
                                    217 	.globl _SBUF_1
                                    218 	.globl _SBUF
                                    219 	.globl _SCON
                                    220 	.globl _CKEN
                                    221 	.globl _CKSWT
                                    222 	.globl _CKDIV
                                    223 	.globl _CAPCON2
                                    224 	.globl _CAPCON1
                                    225 	.globl _CAPCON0
                                    226 	.globl _SFRS
                                    227 	.globl _P1
                                    228 	.globl _WKCON
                                    229 	.globl _CKCON
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _PCON
                                    237 	.globl _RWK
                                    238 	.globl _RCTRIM1
                                    239 	.globl _RCTRIM0
                                    240 	.globl _DPH
                                    241 	.globl _DPL
                                    242 	.globl _SP
                                    243 	.globl _P0
                                    244 	.globl _UART0_Init
                                    245 	.globl _UART0_SendData
                                    246 	.globl _UART0_GetData
                                    247 	.globl _UART0_EnableInterrupt
                                    248 	.globl _UART0_DisableInterrupt
                                    249 	.globl _UART0_ClearFlag
                                    250 	.globl _UART0_GetFlag
                                    251 	.globl _UART0_STRING
                                    252 	.globl _UART0_NUMBER
                                    253 	.globl _UART0_Receive
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
      00004F                        505 _UART0_NUMBER_digit_1_31:
      00004F                        506 	.ds 5
                                    507 ;--------------------------------------------------------
                                    508 ; overlayable items in internal ram 
                                    509 ;--------------------------------------------------------
                                    510 	.area	OSEG    (OVR,DATA)
                                    511 	.area	OSEG    (OVR,DATA)
                                    512 	.area	OSEG    (OVR,DATA)
                                    513 	.area	OSEG    (OVR,DATA)
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
                                    532 ; external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XSEG    (XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; absolute external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XABS    (ABS,XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; external initialized ram data
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
                                    554 ; global & static initialisations
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.area GSFINAL (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 ;--------------------------------------------------------
                                    561 ; Home
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area HOME    (CODE)
                                    565 ;--------------------------------------------------------
                                    566 ; code
                                    567 ;--------------------------------------------------------
                                    568 	.area CSEG    (CODE)
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'UART0_Init'
                                    571 ;------------------------------------------------------------
                                    572 ;	uart0.c:2: void UART0_Init(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function UART0_Init
                                    575 ;	-----------------------------------------
      00086D                        576 _UART0_Init:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
                                    585 ;	uart0.c:5: T3CON |= (1 << 5);
      00086D 43 C4 20         [24]  586 	orl	_T3CON,#0x20
                                    587 ;	uart0.c:7: T3CON &= 0xF8;
      000870 53 C4 F8         [24]  588 	anl	_T3CON,#0xF8
                                    589 ;	uart0.c:10: EIE1 &= ~(1 << 1);
      000873 AF 9C            [24]  590 	mov	r7,_EIE1
      000875 74 FD            [12]  591 	mov	a,#0xFD
      000877 5F               [12]  592 	anl	a,r7
      000878 F5 9C            [12]  593 	mov	_EIE1,a
                                    594 ;	uart0.c:12: RH3 = 0xff;
      00087A 75 C6 FF         [24]  595 	mov	_RH3,#0xFF
                                    596 ;	uart0.c:13: RL3 = 0xcc;
      00087D 75 C5 CC         [24]  597 	mov	_RL3,#0xCC
                                    598 ;	uart0.c:15: T3CON |= (1 << 3);
      000880 43 C4 08         [24]  599 	orl	_T3CON,#0x08
                                    600 ;	uart0.c:17: PCON &= ~(1 << 7);
      000883 AF 87            [24]  601 	mov	r7,_PCON
      000885 74 7F            [12]  602 	mov	a,#0x7F
      000887 5F               [12]  603 	anl	a,r7
      000888 F5 87            [12]  604 	mov	_PCON,a
                                    605 ;	uart0.c:19: P06 = 1;
      00088A D2 86            [12]  606 	setb	_P06
                                    607 ;	uart0.c:20: P0M1 &= ~(1 << 6);
      00088C AF B1            [24]  608 	mov	r7,_P0M1
      00088E 74 BF            [12]  609 	mov	a,#0xBF
      000890 5F               [12]  610 	anl	a,r7
      000891 F5 B1            [12]  611 	mov	_P0M1,a
                                    612 ;	uart0.c:21: P0M2 |= (1 << 6);
      000893 43 B2 40         [24]  613 	orl	_P0M2,#0x40
                                    614 ;	uart0.c:22: P07 = 1;
      000896 D2 87            [12]  615 	setb	_P07
                                    616 ;	uart0.c:23: P0M1 &= ~(1 << 7);
      000898 AF B1            [24]  617 	mov	r7,_P0M1
      00089A 74 7F            [12]  618 	mov	a,#0x7F
      00089C 5F               [12]  619 	anl	a,r7
      00089D F5 B1            [12]  620 	mov	_P0M1,a
                                    621 ;	uart0.c:24: P0M2 &= ~(1 << 7);
      00089F AF B2            [24]  622 	mov	r7,_P0M2
      0008A1 74 7F            [12]  623 	mov	a,#0x7F
      0008A3 5F               [12]  624 	anl	a,r7
      0008A4 F5 B2            [12]  625 	mov	_P0M2,a
                                    626 ;	uart0.c:26: PCON &= ~(1 << 6);
      0008A6 AF 87            [24]  627 	mov	r7,_PCON
      0008A8 74 BF            [12]  628 	mov	a,#0xBF
      0008AA 5F               [12]  629 	anl	a,r7
      0008AB F5 87            [12]  630 	mov	_PCON,a
                                    631 ;	uart0.c:27: SM0 = 0;
      0008AD C2 9F            [12]  632 	clr	_SM0
                                    633 ;	uart0.c:28: SM1 = 1;
      0008AF D2 9E            [12]  634 	setb	_SM1
                                    635 ;	uart0.c:30: REN = 1;
      0008B1 D2 9C            [12]  636 	setb	_REN
      0008B3 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'UART0_SendData'
                                    640 ;------------------------------------------------------------
                                    641 ;u8Data                    Allocated to registers 
                                    642 ;------------------------------------------------------------
                                    643 ;	uart0.c:33: void UART0_SendData(uint8_t u8Data)
                                    644 ;	-----------------------------------------
                                    645 ;	 function UART0_SendData
                                    646 ;	-----------------------------------------
      0008B4                        647 _UART0_SendData:
      0008B4 85 82 99         [24]  648 	mov	_SBUF,dpl
                                    649 ;	uart0.c:35: SBUF = u8Data;
      0008B7 22               [24]  650 	ret
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'UART0_GetData'
                                    653 ;------------------------------------------------------------
                                    654 ;	uart0.c:38: uint8_t UART0_GetData(void)
                                    655 ;	-----------------------------------------
                                    656 ;	 function UART0_GetData
                                    657 ;	-----------------------------------------
      0008B8                        658 _UART0_GetData:
                                    659 ;	uart0.c:40: return SBUF;
      0008B8 85 99 82         [24]  660 	mov	dpl,_SBUF
      0008BB 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'UART0_EnableInterrupt'
                                    664 ;------------------------------------------------------------
                                    665 ;	uart0.c:43: void UART0_EnableInterrupt(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function UART0_EnableInterrupt
                                    668 ;	-----------------------------------------
      0008BC                        669 _UART0_EnableInterrupt:
                                    670 ;	uart0.c:45: ES = 1;
      0008BC D2 AC            [12]  671 	setb	_ES
      0008BE 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'UART0_DisableInterrupt'
                                    675 ;------------------------------------------------------------
                                    676 ;	uart0.c:48: void UART0_DisableInterrupt(void)
                                    677 ;	-----------------------------------------
                                    678 ;	 function UART0_DisableInterrupt
                                    679 ;	-----------------------------------------
      0008BF                        680 _UART0_DisableInterrupt:
                                    681 ;	uart0.c:50: ES = 0;
      0008BF C2 AC            [12]  682 	clr	_ES
      0008C1 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'UART0_ClearFlag'
                                    686 ;------------------------------------------------------------
                                    687 ;u8Flag                    Allocated to registers r7 
                                    688 ;------------------------------------------------------------
                                    689 ;	uart0.c:53: void UART0_ClearFlag(uint8_t u8Flag)
                                    690 ;	-----------------------------------------
                                    691 ;	 function UART0_ClearFlag
                                    692 ;	-----------------------------------------
      0008C2                        693 _UART0_ClearFlag:
                                    694 ;	uart0.c:55: SCON &= ~(u8Flag);
      0008C2 E5 82            [12]  695 	mov	a,dpl
      0008C4 F4               [12]  696 	cpl	a
      0008C5 52 98            [12]  697 	anl	_SCON,a
      0008C7 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'UART0_GetFlag'
                                    701 ;------------------------------------------------------------
                                    702 ;u8Flag                    Allocated to registers r7 
                                    703 ;------------------------------------------------------------
                                    704 ;	uart0.c:58: uint8_t UART0_GetFlag(uint8_t u8Flag)
                                    705 ;	-----------------------------------------
                                    706 ;	 function UART0_GetFlag
                                    707 ;	-----------------------------------------
      0008C8                        708 _UART0_GetFlag:
                                    709 ;	uart0.c:60: if (SCON & (u8Flag)) {
      0008C8 E5 82            [12]  710 	mov	a,dpl
      0008CA FF               [12]  711 	mov	r7,a
      0008CB 55 98            [12]  712 	anl	a,_SCON
      0008CD 60 04            [24]  713 	jz	00102$
                                    714 ;	uart0.c:61: return 1;
      0008CF 75 82 01         [24]  715 	mov	dpl,#0x01
      0008D2 22               [24]  716 	ret
      0008D3                        717 00102$:
                                    718 ;	uart0.c:63: return 0;
      0008D3 75 82 00         [24]  719 	mov	dpl,#0x00
      0008D6 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'UART0_STRING'
                                    723 ;------------------------------------------------------------
                                    724 ;cy                        Allocated to registers 
                                    725 ;------------------------------------------------------------
                                    726 ;	uart0.c:66: void UART0_STRING(const char *cy)
                                    727 ;	-----------------------------------------
                                    728 ;	 function UART0_STRING
                                    729 ;	-----------------------------------------
      0008D7                        730 _UART0_STRING:
      0008D7 AD 82            [24]  731 	mov	r5,dpl
      0008D9 AE 83            [24]  732 	mov	r6,dph
      0008DB AF F0            [24]  733 	mov	r7,b
                                    734 ;	uart0.c:68: while (*cy)
      0008DD                        735 00104$:
      0008DD 8D 82            [24]  736 	mov	dpl,r5
      0008DF 8E 83            [24]  737 	mov	dph,r6
      0008E1 8F F0            [24]  738 	mov	b,r7
      0008E3 12 0C E1         [24]  739 	lcall	__gptrget
      0008E6 FC               [12]  740 	mov	r4,a
      0008E7 60 40            [24]  741 	jz	00107$
                                    742 ;	uart0.c:70: UART0_SendData(*cy);
      0008E9 8C 82            [24]  743 	mov	dpl,r4
      0008EB C0 07            [24]  744 	push	ar7
      0008ED C0 06            [24]  745 	push	ar6
      0008EF C0 05            [24]  746 	push	ar5
      0008F1 12 08 B4         [24]  747 	lcall	_UART0_SendData
      0008F4 D0 05            [24]  748 	pop	ar5
      0008F6 D0 06            [24]  749 	pop	ar6
      0008F8 D0 07            [24]  750 	pop	ar7
                                    751 ;	uart0.c:71: while (UART0_GetFlag(UART0_TX_FLAG) == 0)
      0008FA                        752 00101$:
      0008FA 75 82 02         [24]  753 	mov	dpl,#0x02
      0008FD C0 07            [24]  754 	push	ar7
      0008FF C0 06            [24]  755 	push	ar6
      000901 C0 05            [24]  756 	push	ar5
      000903 12 08 C8         [24]  757 	lcall	_UART0_GetFlag
      000906 E5 82            [12]  758 	mov	a,dpl
      000908 D0 05            [24]  759 	pop	ar5
      00090A D0 06            [24]  760 	pop	ar6
      00090C D0 07            [24]  761 	pop	ar7
      00090E 60 EA            [24]  762 	jz	00101$
                                    763 ;	uart0.c:74: UART0_ClearFlag(UART0_TX_FLAG);
      000910 75 82 02         [24]  764 	mov	dpl,#0x02
      000913 C0 07            [24]  765 	push	ar7
      000915 C0 06            [24]  766 	push	ar6
      000917 C0 05            [24]  767 	push	ar5
      000919 12 08 C2         [24]  768 	lcall	_UART0_ClearFlag
      00091C D0 05            [24]  769 	pop	ar5
      00091E D0 06            [24]  770 	pop	ar6
      000920 D0 07            [24]  771 	pop	ar7
                                    772 ;	uart0.c:75: cy++;
      000922 0D               [12]  773 	inc	r5
      000923 BD 00 B7         [24]  774 	cjne	r5,#0x00,00104$
      000926 0E               [12]  775 	inc	r6
      000927 80 B4            [24]  776 	sjmp	00104$
      000929                        777 00107$:
      000929 22               [24]  778 	ret
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'UART0_NUMBER'
                                    781 ;------------------------------------------------------------
                                    782 ;number                    Allocated to registers r6 r7 
                                    783 ;count                     Allocated to registers r5 
                                    784 ;digit                     Allocated with name '_UART0_NUMBER_digit_1_31'
                                    785 ;------------------------------------------------------------
                                    786 ;	uart0.c:79: void UART0_NUMBER(int number)
                                    787 ;	-----------------------------------------
                                    788 ;	 function UART0_NUMBER
                                    789 ;	-----------------------------------------
      00092A                        790 _UART0_NUMBER:
      00092A AE 82            [24]  791 	mov	r6,dpl
      00092C AF 83            [24]  792 	mov	r7,dph
                                    793 ;	uart0.c:81: char count = 0;
      00092E 7D 00            [12]  794 	mov	r5,#0x00
                                    795 ;	uart0.c:82: char digit[5] = "";
                                    796 ;	1-genFromRTrack replaced	mov	_UART0_NUMBER_digit_1_31,#0x00
      000930 8D 4F            [24]  797 	mov	_UART0_NUMBER_digit_1_31,r5
                                    798 ;	1-genFromRTrack replaced	mov	(_UART0_NUMBER_digit_1_31 + 0x0001),#0x00
      000932 8D 50            [24]  799 	mov	(_UART0_NUMBER_digit_1_31 + 0x0001),r5
                                    800 ;	1-genFromRTrack replaced	mov	(_UART0_NUMBER_digit_1_31 + 0x0002),#0x00
      000934 8D 51            [24]  801 	mov	(_UART0_NUMBER_digit_1_31 + 0x0002),r5
                                    802 ;	1-genFromRTrack replaced	mov	(_UART0_NUMBER_digit_1_31 + 0x0003),#0x00
      000936 8D 52            [24]  803 	mov	(_UART0_NUMBER_digit_1_31 + 0x0003),r5
                                    804 ;	1-genFromRTrack replaced	mov	(_UART0_NUMBER_digit_1_31 + 0x0004),#0x00
      000938 8D 53            [24]  805 	mov	(_UART0_NUMBER_digit_1_31 + 0x0004),r5
                                    806 ;	uart0.c:83: if (number == 0)
      00093A EE               [12]  807 	mov	a,r6
      00093B 4F               [12]  808 	orl	a,r7
                                    809 ;	uart0.c:85: digit[0] = 0;
      00093C 70 04            [24]  810 	jnz	00116$
      00093E F5 4F            [12]  811 	mov	_UART0_NUMBER_digit_1_31,a
                                    812 ;	uart0.c:86: count = 1;
      000940 7D 01            [12]  813 	mov	r5,#0x01
                                    814 ;	uart0.c:88: while (number != 0)
      000942                        815 00116$:
      000942                        816 00103$:
      000942 EE               [12]  817 	mov	a,r6
      000943 4F               [12]  818 	orl	a,r7
      000944 60 3D            [24]  819 	jz	00120$
                                    820 ;	uart0.c:90: digit[count] = number % 10; // lay chu so ngoai cung xxxx8;
      000946 ED               [12]  821 	mov	a,r5
      000947 24 4F            [12]  822 	add	a,#_UART0_NUMBER_digit_1_31
      000949 F9               [12]  823 	mov	r1,a
      00094A 75 54 0A         [24]  824 	mov	__modsint_PARM_2,#0x0A
      00094D 75 55 00         [24]  825 	mov	(__modsint_PARM_2 + 1),#0x00
      000950 8E 82            [24]  826 	mov	dpl,r6
      000952 8F 83            [24]  827 	mov	dph,r7
      000954 C0 07            [24]  828 	push	ar7
      000956 C0 06            [24]  829 	push	ar6
      000958 C0 05            [24]  830 	push	ar5
      00095A C0 01            [24]  831 	push	ar1
      00095C 12 0C FD         [24]  832 	lcall	__modsint
      00095F AB 82            [24]  833 	mov	r3,dpl
      000961 D0 01            [24]  834 	pop	ar1
      000963 D0 05            [24]  835 	pop	ar5
      000965 D0 06            [24]  836 	pop	ar6
      000967 D0 07            [24]  837 	pop	ar7
      000969 A7 03            [24]  838 	mov	@r1,ar3
                                    839 ;	uart0.c:91: ++count;
      00096B 0D               [12]  840 	inc	r5
                                    841 ;	uart0.c:92: number = number / 10; // chia so number cho 10 de bo so ngoai cung xxxx
      00096C 75 54 0A         [24]  842 	mov	__divsint_PARM_2,#0x0A
      00096F 75 55 00         [24]  843 	mov	(__divsint_PARM_2 + 1),#0x00
      000972 8E 82            [24]  844 	mov	dpl,r6
      000974 8F 83            [24]  845 	mov	dph,r7
      000976 C0 05            [24]  846 	push	ar5
      000978 12 0D 60         [24]  847 	lcall	__divsint
      00097B AE 82            [24]  848 	mov	r6,dpl
      00097D AF 83            [24]  849 	mov	r7,dph
      00097F D0 05            [24]  850 	pop	ar5
                                    851 ;	uart0.c:94: while (count != 0)
      000981 80 BF            [24]  852 	sjmp	00103$
      000983                        853 00120$:
      000983 8D 07            [24]  854 	mov	ar7,r5
      000985                        855 00109$:
      000985 EF               [12]  856 	mov	a,r7
      000986 60 2E            [24]  857 	jz	00112$
                                    858 ;	uart0.c:97: UART0_SendData(digit[count - 1] + 0x30);
      000988 EF               [12]  859 	mov	a,r7
      000989 14               [12]  860 	dec	a
      00098A 24 4F            [12]  861 	add	a,#_UART0_NUMBER_digit_1_31
      00098C F9               [12]  862 	mov	r1,a
      00098D 87 06            [24]  863 	mov	ar6,@r1
      00098F 74 30            [12]  864 	mov	a,#0x30
      000991 2E               [12]  865 	add	a,r6
      000992 F5 82            [12]  866 	mov	dpl,a
      000994 C0 07            [24]  867 	push	ar7
      000996 12 08 B4         [24]  868 	lcall	_UART0_SendData
      000999 D0 07            [24]  869 	pop	ar7
                                    870 ;	uart0.c:98: while (UART0_GetFlag(UART0_TX_FLAG) == 0)
      00099B                        871 00106$:
      00099B 75 82 02         [24]  872 	mov	dpl,#0x02
      00099E C0 07            [24]  873 	push	ar7
      0009A0 12 08 C8         [24]  874 	lcall	_UART0_GetFlag
      0009A3 E5 82            [12]  875 	mov	a,dpl
      0009A5 D0 07            [24]  876 	pop	ar7
      0009A7 60 F2            [24]  877 	jz	00106$
                                    878 ;	uart0.c:101: UART0_ClearFlag(UART0_TX_FLAG);
      0009A9 75 82 02         [24]  879 	mov	dpl,#0x02
      0009AC C0 07            [24]  880 	push	ar7
      0009AE 12 08 C2         [24]  881 	lcall	_UART0_ClearFlag
      0009B1 D0 07            [24]  882 	pop	ar7
                                    883 ;	uart0.c:102: --count;
      0009B3 1F               [12]  884 	dec	r7
      0009B4 80 CF            [24]  885 	sjmp	00109$
      0009B6                        886 00112$:
      0009B6 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'UART0_Receive'
                                    890 ;------------------------------------------------------------
                                    891 ;u8Receive                 Allocated to registers 
                                    892 ;------------------------------------------------------------
                                    893 ;	uart0.c:105: uint8_t UART0_Receive()
                                    894 ;	-----------------------------------------
                                    895 ;	 function UART0_Receive
                                    896 ;	-----------------------------------------
      0009B7                        897 _UART0_Receive:
                                    898 ;	uart0.c:108: while (!RI){}
      0009B7                        899 00101$:
      0009B7 30 98 FD         [24]  900 	jnb	_RI,00101$
                                    901 ;	uart0.c:109: u8Receive = SBUF;
      0009BA 85 99 82         [24]  902 	mov	dpl,_SBUF
                                    903 ;	uart0.c:110: RI = 0;
      0009BD C2 98            [12]  904 	clr	_RI
                                    905 ;	uart0.c:111: return (u8Receive);
      0009BF 22               [24]  906 	ret
                                    907 	.area CSEG    (CODE)
                                    908 	.area CONST   (CODE)
                                    909 	.area XINIT   (CODE)
                                    910 	.area CABS    (ABS,CODE)
