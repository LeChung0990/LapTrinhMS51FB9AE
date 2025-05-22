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
                                    243 	.globl _dem
                                    244 	.globl _UART0_Init
                                    245 	.globl _UART0_SendData
                                    246 	.globl _UART0_GetData
                                    247 	.globl _UART0_EnableInterrupt
                                    248 	.globl _UART0_DisableInterrupt
                                    249 	.globl _UART0_ClearFlag
                                    250 	.globl _UART0_GetFlag
                                    251 	.globl _UART0_STRING
                                    252 	.globl _UART0_NLINE
                                    253 	.globl _UART0_NUMBER
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
      00000A                        505 _dem::
      00000A                        506 	.ds 1
      00000B                        507 _UART0_NUMBER_digit_65536_35:
      00000B                        508 	.ds 5
                                    509 ;--------------------------------------------------------
                                    510 ; overlayable items in internal ram
                                    511 ;--------------------------------------------------------
                                    512 	.area	OSEG    (OVR,DATA)
                                    513 	.area	OSEG    (OVR,DATA)
                                    514 	.area	OSEG    (OVR,DATA)
                                    515 ;--------------------------------------------------------
                                    516 ; indirectly addressable internal ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area ISEG    (DATA)
                                    519 ;--------------------------------------------------------
                                    520 ; absolute internal ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area IABS    (ABS,DATA)
                                    523 	.area IABS    (ABS,DATA)
                                    524 ;--------------------------------------------------------
                                    525 ; bit data
                                    526 ;--------------------------------------------------------
                                    527 	.area BSEG    (BIT)
                                    528 ;--------------------------------------------------------
                                    529 ; paged external ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area PSEG    (PAG,XDATA)
                                    532 ;--------------------------------------------------------
                                    533 ; uninitialized external ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area XSEG    (XDATA)
                                    536 ;--------------------------------------------------------
                                    537 ; absolute external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XABS    (ABS,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; initialized external ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XISEG   (XDATA)
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT0 (CODE)
                                    546 	.area GSINIT1 (CODE)
                                    547 	.area GSINIT2 (CODE)
                                    548 	.area GSINIT3 (CODE)
                                    549 	.area GSINIT4 (CODE)
                                    550 	.area GSINIT5 (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.area GSFINAL (CODE)
                                    553 	.area CSEG    (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; global & static initialisations
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
                                    558 	.area GSINIT  (CODE)
                                    559 	.area GSFINAL (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 ;	lib/src/uart0.c:4: extern uint8_t dem=0;
      00005F 75 0A 00         [24]  562 	mov	_dem,#0x00
                                    563 ;--------------------------------------------------------
                                    564 ; Home
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
                                    567 	.area HOME    (CODE)
                                    568 ;--------------------------------------------------------
                                    569 ; code
                                    570 ;--------------------------------------------------------
                                    571 	.area CSEG    (CODE)
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'UART0_Init'
                                    574 ;------------------------------------------------------------
                                    575 ;	lib/src/uart0.c:6: void UART0_Init(void)
                                    576 ;	-----------------------------------------
                                    577 ;	 function UART0_Init
                                    578 ;	-----------------------------------------
      000646                        579 _UART0_Init:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                                    588 ;	lib/src/uart0.c:9: T3CON |= (1 << 5);
      000646 43 C4 20         [24]  589 	orl	_T3CON,#0x20
                                    590 ;	lib/src/uart0.c:11: T3CON &= 0xF8;
      000649 53 C4 F8         [24]  591 	anl	_T3CON,#0xf8
                                    592 ;	lib/src/uart0.c:14: EIE1 &= ~(1 << 1);
      00064C 53 9C FD         [24]  593 	anl	_EIE1,#0xfd
                                    594 ;	lib/src/uart0.c:16: RH3 = 0xff;
      00064F 75 C6 FF         [24]  595 	mov	_RH3,#0xff
                                    596 ;	lib/src/uart0.c:17: RL3 = 0xe6;
      000652 75 C5 E6         [24]  597 	mov	_RL3,#0xe6
                                    598 ;	lib/src/uart0.c:19: T3CON |= (1 << 3);
      000655 43 C4 08         [24]  599 	orl	_T3CON,#0x08
                                    600 ;	lib/src/uart0.c:21: PCON &= ~(1 << 7);
      000658 53 87 7F         [24]  601 	anl	_PCON,#0x7f
                                    602 ;	lib/src/uart0.c:23: P06 = 1;
                                    603 ;	assignBit
      00065B D2 86            [12]  604 	setb	_P06
                                    605 ;	lib/src/uart0.c:24: P0M1 &= ~(1 << 6);
      00065D 53 B1 BF         [24]  606 	anl	_P0M1,#0xbf
                                    607 ;	lib/src/uart0.c:25: P0M2 |= (1 << 6);
      000660 43 B2 40         [24]  608 	orl	_P0M2,#0x40
                                    609 ;	lib/src/uart0.c:26: P07 = 1;
                                    610 ;	assignBit
      000663 D2 87            [12]  611 	setb	_P07
                                    612 ;	lib/src/uart0.c:27: P0M1 &= ~(1 << 7);
      000665 53 B1 7F         [24]  613 	anl	_P0M1,#0x7f
                                    614 ;	lib/src/uart0.c:28: P0M2 &= ~(1 << 7);
      000668 53 B2 7F         [24]  615 	anl	_P0M2,#0x7f
                                    616 ;	lib/src/uart0.c:30: PCON &= ~(1 << 6);
      00066B 53 87 BF         [24]  617 	anl	_PCON,#0xbf
                                    618 ;	lib/src/uart0.c:31: SM0 = 0;
                                    619 ;	assignBit
      00066E C2 9F            [12]  620 	clr	_SM0
                                    621 ;	lib/src/uart0.c:32: SM1 = 1;
                                    622 ;	assignBit
      000670 D2 9E            [12]  623 	setb	_SM1
                                    624 ;	lib/src/uart0.c:34: REN = 1;
                                    625 ;	assignBit
      000672 D2 9C            [12]  626 	setb	_REN
                                    627 ;	lib/src/uart0.c:35: dem = 123;
      000674 75 0A 7B         [24]  628 	mov	_dem,#0x7b
                                    629 ;	lib/src/uart0.c:36: }
      000677 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'UART0_SendData'
                                    633 ;------------------------------------------------------------
                                    634 ;u8Data                    Allocated to registers 
                                    635 ;------------------------------------------------------------
                                    636 ;	lib/src/uart0.c:38: void UART0_SendData(uint8_t u8Data)
                                    637 ;	-----------------------------------------
                                    638 ;	 function UART0_SendData
                                    639 ;	-----------------------------------------
      000678                        640 _UART0_SendData:
      000678 85 82 99         [24]  641 	mov	_SBUF,dpl
                                    642 ;	lib/src/uart0.c:40: SBUF = u8Data;
                                    643 ;	lib/src/uart0.c:41: }
      00067B 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'UART0_GetData'
                                    647 ;------------------------------------------------------------
                                    648 ;	lib/src/uart0.c:43: uint8_t UART0_GetData(void)
                                    649 ;	-----------------------------------------
                                    650 ;	 function UART0_GetData
                                    651 ;	-----------------------------------------
      00067C                        652 _UART0_GetData:
                                    653 ;	lib/src/uart0.c:45: return SBUF;
      00067C 85 99 82         [24]  654 	mov	dpl,_SBUF
                                    655 ;	lib/src/uart0.c:46: }
      00067F 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'UART0_EnableInterrupt'
                                    659 ;------------------------------------------------------------
                                    660 ;	lib/src/uart0.c:48: void UART0_EnableInterrupt(void)
                                    661 ;	-----------------------------------------
                                    662 ;	 function UART0_EnableInterrupt
                                    663 ;	-----------------------------------------
      000680                        664 _UART0_EnableInterrupt:
                                    665 ;	lib/src/uart0.c:50: ES = 1;
                                    666 ;	assignBit
      000680 D2 AC            [12]  667 	setb	_ES
                                    668 ;	lib/src/uart0.c:51: }
      000682 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'UART0_DisableInterrupt'
                                    672 ;------------------------------------------------------------
                                    673 ;	lib/src/uart0.c:53: void UART0_DisableInterrupt(void)
                                    674 ;	-----------------------------------------
                                    675 ;	 function UART0_DisableInterrupt
                                    676 ;	-----------------------------------------
      000683                        677 _UART0_DisableInterrupt:
                                    678 ;	lib/src/uart0.c:55: ES = 0;
                                    679 ;	assignBit
      000683 C2 AC            [12]  680 	clr	_ES
                                    681 ;	lib/src/uart0.c:56: }
      000685 22               [24]  682 	ret
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'UART0_ClearFlag'
                                    685 ;------------------------------------------------------------
                                    686 ;u8Flag                    Allocated to registers r7 
                                    687 ;------------------------------------------------------------
                                    688 ;	lib/src/uart0.c:58: void UART0_ClearFlag(uint8_t u8Flag)
                                    689 ;	-----------------------------------------
                                    690 ;	 function UART0_ClearFlag
                                    691 ;	-----------------------------------------
      000686                        692 _UART0_ClearFlag:
                                    693 ;	lib/src/uart0.c:60: SCON &= ~(u8Flag);
      000686 E5 82            [12]  694 	mov	a,dpl
      000688 F4               [12]  695 	cpl	a
      000689 52 98            [12]  696 	anl	_SCON,a
                                    697 ;	lib/src/uart0.c:61: }
      00068B 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'UART0_GetFlag'
                                    701 ;------------------------------------------------------------
                                    702 ;u8Flag                    Allocated to registers r7 
                                    703 ;------------------------------------------------------------
                                    704 ;	lib/src/uart0.c:63: uint8_t UART0_GetFlag(uint8_t u8Flag)
                                    705 ;	-----------------------------------------
                                    706 ;	 function UART0_GetFlag
                                    707 ;	-----------------------------------------
      00068C                        708 _UART0_GetFlag:
                                    709 ;	lib/src/uart0.c:65: if (SCON & (u8Flag)) {
      00068C E5 82            [12]  710 	mov	a,dpl
      00068E 55 98            [12]  711 	anl	a,_SCON
      000690 60 04            [24]  712 	jz	00102$
                                    713 ;	lib/src/uart0.c:66: return 1;
      000692 75 82 01         [24]  714 	mov	dpl,#0x01
      000695 22               [24]  715 	ret
      000696                        716 00102$:
                                    717 ;	lib/src/uart0.c:68: return 0;
      000696 75 82 00         [24]  718 	mov	dpl,#0x00
                                    719 ;	lib/src/uart0.c:70: }
      000699 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'UART0_STRING'
                                    723 ;------------------------------------------------------------
                                    724 ;cy                        Allocated to registers 
                                    725 ;------------------------------------------------------------
                                    726 ;	lib/src/uart0.c:71: void UART0_STRING(const char *cy)
                                    727 ;	-----------------------------------------
                                    728 ;	 function UART0_STRING
                                    729 ;	-----------------------------------------
      00069A                        730 _UART0_STRING:
      00069A AD 82            [24]  731 	mov	r5,dpl
      00069C AE 83            [24]  732 	mov	r6,dph
      00069E AF F0            [24]  733 	mov	r7,b
                                    734 ;	lib/src/uart0.c:73: while(*cy)
      0006A0                        735 00104$:
      0006A0 8D 82            [24]  736 	mov	dpl,r5
      0006A2 8E 83            [24]  737 	mov	dph,r6
      0006A4 8F F0            [24]  738 	mov	b,r7
      0006A6 12 14 2E         [24]  739 	lcall	__gptrget
      0006A9 FC               [12]  740 	mov	r4,a
      0006AA 60 31            [24]  741 	jz	00107$
                                    742 ;	lib/src/uart0.c:75: SBUF = (*cy);
      0006AC 8C 99            [24]  743 	mov	_SBUF,r4
                                    744 ;	lib/src/uart0.c:76: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
      0006AE                        745 00101$:
      0006AE 75 82 02         [24]  746 	mov	dpl,#0x02
      0006B1 C0 07            [24]  747 	push	ar7
      0006B3 C0 06            [24]  748 	push	ar6
      0006B5 C0 05            [24]  749 	push	ar5
      0006B7 12 06 8C         [24]  750 	lcall	_UART0_GetFlag
      0006BA E5 82            [12]  751 	mov	a,dpl
      0006BC D0 05            [24]  752 	pop	ar5
      0006BE D0 06            [24]  753 	pop	ar6
      0006C0 D0 07            [24]  754 	pop	ar7
      0006C2 60 EA            [24]  755 	jz	00101$
                                    756 ;	lib/src/uart0.c:77: UART0_ClearFlag(UART0_TX_FLAG);
      0006C4 75 82 02         [24]  757 	mov	dpl,#0x02
      0006C7 C0 07            [24]  758 	push	ar7
      0006C9 C0 06            [24]  759 	push	ar6
      0006CB C0 05            [24]  760 	push	ar5
      0006CD 12 06 86         [24]  761 	lcall	_UART0_ClearFlag
      0006D0 D0 05            [24]  762 	pop	ar5
      0006D2 D0 06            [24]  763 	pop	ar6
      0006D4 D0 07            [24]  764 	pop	ar7
                                    765 ;	lib/src/uart0.c:78: cy++;
      0006D6 0D               [12]  766 	inc	r5
      0006D7 BD 00 C6         [24]  767 	cjne	r5,#0x00,00104$
      0006DA 0E               [12]  768 	inc	r6
      0006DB 80 C3            [24]  769 	sjmp	00104$
      0006DD                        770 00107$:
                                    771 ;	lib/src/uart0.c:80: }
      0006DD 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'UART0_NLINE'
                                    775 ;------------------------------------------------------------
                                    776 ;	lib/src/uart0.c:82: void UART0_NLINE(void)
                                    777 ;	-----------------------------------------
                                    778 ;	 function UART0_NLINE
                                    779 ;	-----------------------------------------
      0006DE                        780 _UART0_NLINE:
                                    781 ;	lib/src/uart0.c:84: SBUF = 0x0a;
      0006DE 75 99 0A         [24]  782 	mov	_SBUF,#0x0a
                                    783 ;	lib/src/uart0.c:85: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
      0006E1                        784 00101$:
      0006E1 75 82 02         [24]  785 	mov	dpl,#0x02
      0006E4 12 06 8C         [24]  786 	lcall	_UART0_GetFlag
      0006E7 E5 82            [12]  787 	mov	a,dpl
      0006E9 60 F6            [24]  788 	jz	00101$
                                    789 ;	lib/src/uart0.c:86: UART0_ClearFlag(UART0_TX_FLAG);
      0006EB 75 82 02         [24]  790 	mov	dpl,#0x02
                                    791 ;	lib/src/uart0.c:87: }
      0006EE 02 06 86         [24]  792 	ljmp	_UART0_ClearFlag
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'UART0_NUMBER'
                                    795 ;------------------------------------------------------------
                                    796 ;number                    Allocated to registers r6 r7 
                                    797 ;count                     Allocated to registers r5 
                                    798 ;digit                     Allocated with name '_UART0_NUMBER_digit_65536_35'
                                    799 ;------------------------------------------------------------
                                    800 ;	lib/src/uart0.c:89: void UART0_NUMBER(int number)
                                    801 ;	-----------------------------------------
                                    802 ;	 function UART0_NUMBER
                                    803 ;	-----------------------------------------
      0006F1                        804 _UART0_NUMBER:
      0006F1 AE 82            [24]  805 	mov	r6,dpl
      0006F3 AF 83            [24]  806 	mov	r7,dph
                                    807 ;	lib/src/uart0.c:91: char count = 0;
      0006F5 7D 00            [12]  808 	mov	r5,#0x00
                                    809 ;	lib/src/uart0.c:92: char digit[5] = "";
      0006F7 8D 0B            [24]  810 	mov	_UART0_NUMBER_digit_65536_35,r5
      0006F9 8D 0C            [24]  811 	mov	(_UART0_NUMBER_digit_65536_35 + 0x0001),r5
      0006FB 8D 0D            [24]  812 	mov	(_UART0_NUMBER_digit_65536_35 + 0x0002),r5
      0006FD 8D 0E            [24]  813 	mov	(_UART0_NUMBER_digit_65536_35 + 0x0003),r5
      0006FF 8D 0F            [24]  814 	mov	(_UART0_NUMBER_digit_65536_35 + 0x0004),r5
                                    815 ;	lib/src/uart0.c:93: if (number == 0)
      000701 EE               [12]  816 	mov	a,r6
      000702 4F               [12]  817 	orl	a,r7
                                    818 ;	lib/src/uart0.c:95: digit[0] = 0;
      000703 70 04            [24]  819 	jnz	00116$
      000705 F5 0B            [12]  820 	mov	_UART0_NUMBER_digit_65536_35,a
                                    821 ;	lib/src/uart0.c:96: count = 1;
      000707 7D 01            [12]  822 	mov	r5,#0x01
                                    823 ;	lib/src/uart0.c:98: while(number != 0)
      000709                        824 00116$:
      000709                        825 00103$:
      000709 EE               [12]  826 	mov	a,r6
      00070A 4F               [12]  827 	orl	a,r7
      00070B 60 3D            [24]  828 	jz	00120$
                                    829 ;	lib/src/uart0.c:100: digit[count] = number%10;   //lay chu so ngoai cung xxxx8;
      00070D ED               [12]  830 	mov	a,r5
      00070E 24 0B            [12]  831 	add	a,#_UART0_NUMBER_digit_65536_35
      000710 F9               [12]  832 	mov	r1,a
      000711 75 48 0A         [24]  833 	mov	__modsint_PARM_2,#0x0a
      000714 75 49 00         [24]  834 	mov	(__modsint_PARM_2 + 1),#0x00
      000717 8E 82            [24]  835 	mov	dpl,r6
      000719 8F 83            [24]  836 	mov	dph,r7
      00071B C0 07            [24]  837 	push	ar7
      00071D C0 06            [24]  838 	push	ar6
      00071F C0 05            [24]  839 	push	ar5
      000721 C0 01            [24]  840 	push	ar1
      000723 12 14 4A         [24]  841 	lcall	__modsint
      000726 AB 82            [24]  842 	mov	r3,dpl
      000728 D0 01            [24]  843 	pop	ar1
      00072A D0 05            [24]  844 	pop	ar5
      00072C D0 06            [24]  845 	pop	ar6
      00072E D0 07            [24]  846 	pop	ar7
      000730 A7 03            [24]  847 	mov	@r1,ar3
                                    848 ;	lib/src/uart0.c:101: ++count;
      000732 0D               [12]  849 	inc	r5
                                    850 ;	lib/src/uart0.c:102: number = number/10;         //chia so number cho 10 de bo so ngoai cung xxxx
      000733 75 48 0A         [24]  851 	mov	__divsint_PARM_2,#0x0a
      000736 75 49 00         [24]  852 	mov	(__divsint_PARM_2 + 1),#0x00
      000739 8E 82            [24]  853 	mov	dpl,r6
      00073B 8F 83            [24]  854 	mov	dph,r7
      00073D C0 05            [24]  855 	push	ar5
      00073F 12 14 AD         [24]  856 	lcall	__divsint
      000742 AE 82            [24]  857 	mov	r6,dpl
      000744 AF 83            [24]  858 	mov	r7,dph
      000746 D0 05            [24]  859 	pop	ar5
                                    860 ;	lib/src/uart0.c:104: while (count!=0)
      000748 80 BF            [24]  861 	sjmp	00103$
      00074A                        862 00120$:
      00074A 8D 07            [24]  863 	mov	ar7,r5
      00074C                        864 00109$:
      00074C EF               [12]  865 	mov	a,r7
      00074D 60 29            [24]  866 	jz	00112$
                                    867 ;	lib/src/uart0.c:106: SBUF = (digit[count - 1] + 0x30); // 0x30 = 48 ;
      00074F 8F 06            [24]  868 	mov	ar6,r7
      000751 EE               [12]  869 	mov	a,r6
      000752 14               [12]  870 	dec	a
      000753 24 0B            [12]  871 	add	a,#_UART0_NUMBER_digit_65536_35
      000755 F9               [12]  872 	mov	r1,a
      000756 87 06            [24]  873 	mov	ar6,@r1
      000758 74 30            [12]  874 	mov	a,#0x30
      00075A 2E               [12]  875 	add	a,r6
      00075B F5 99            [12]  876 	mov	_SBUF,a
                                    877 ;	lib/src/uart0.c:107: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
      00075D                        878 00106$:
      00075D 75 82 02         [24]  879 	mov	dpl,#0x02
      000760 C0 07            [24]  880 	push	ar7
      000762 12 06 8C         [24]  881 	lcall	_UART0_GetFlag
      000765 E5 82            [12]  882 	mov	a,dpl
      000767 D0 07            [24]  883 	pop	ar7
      000769 60 F2            [24]  884 	jz	00106$
                                    885 ;	lib/src/uart0.c:108: UART0_ClearFlag(UART0_TX_FLAG);
      00076B 75 82 02         [24]  886 	mov	dpl,#0x02
      00076E C0 07            [24]  887 	push	ar7
      000770 12 06 86         [24]  888 	lcall	_UART0_ClearFlag
      000773 D0 07            [24]  889 	pop	ar7
                                    890 ;	lib/src/uart0.c:109: --count;
      000775 1F               [12]  891 	dec	r7
      000776 80 D4            [24]  892 	sjmp	00109$
      000778                        893 00112$:
                                    894 ;	lib/src/uart0.c:111: }
      000778 22               [24]  895 	ret
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
                                    898 	.area XINIT   (CODE)
                                    899 	.area CABS    (ABS,CODE)
