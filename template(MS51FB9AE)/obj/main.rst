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
                                     11 	.globl _OLED_FONT
                                     12 	.globl _main
                                     13 	.globl _UART0_ISR
                                     14 	.globl _ADC_ClearFlag
                                     15 	.globl _ADC_GetData
                                     16 	.globl _ADC_StartConv
                                     17 	.globl _ADC_SelectChannel
                                     18 	.globl _ADC_Init
                                     19 	.globl _Delay_Init
                                     20 	.globl _GPIO_Init
                                     21 	.globl _MOSI
                                     22 	.globl _P00
                                     23 	.globl _MISO
                                     24 	.globl _P01
                                     25 	.globl _RXD_1
                                     26 	.globl _P02
                                     27 	.globl _P03
                                     28 	.globl _STADC
                                     29 	.globl _P04
                                     30 	.globl _P05
                                     31 	.globl _TXD
                                     32 	.globl _P06
                                     33 	.globl _RXD
                                     34 	.globl _P07
                                     35 	.globl _IT0
                                     36 	.globl _IE0
                                     37 	.globl _IT1
                                     38 	.globl _IE1
                                     39 	.globl _TR0
                                     40 	.globl _TF0
                                     41 	.globl _TR1
                                     42 	.globl _TF1
                                     43 	.globl _P10
                                     44 	.globl _P11
                                     45 	.globl _P12
                                     46 	.globl _SCL
                                     47 	.globl _P13
                                     48 	.globl _SDA
                                     49 	.globl _P14
                                     50 	.globl _P15
                                     51 	.globl _TXD_1
                                     52 	.globl _P16
                                     53 	.globl _P17
                                     54 	.globl _RI
                                     55 	.globl _TI
                                     56 	.globl _RB8
                                     57 	.globl _TB8
                                     58 	.globl _REN
                                     59 	.globl _SM2
                                     60 	.globl _SM1
                                     61 	.globl _FE
                                     62 	.globl _SM0
                                     63 	.globl _P20
                                     64 	.globl _EX0
                                     65 	.globl _ET0
                                     66 	.globl _EX1
                                     67 	.globl _ET1
                                     68 	.globl _ES
                                     69 	.globl _EBOD
                                     70 	.globl _EADC
                                     71 	.globl _EA
                                     72 	.globl _P30
                                     73 	.globl _PX0
                                     74 	.globl _PT0
                                     75 	.globl _PX1
                                     76 	.globl _PT1
                                     77 	.globl _PS
                                     78 	.globl _PBOD
                                     79 	.globl _PADC
                                     80 	.globl _I2CPX
                                     81 	.globl _AA
                                     82 	.globl _SI
                                     83 	.globl _STO
                                     84 	.globl _STA
                                     85 	.globl _I2CEN
                                     86 	.globl _CM_RL2
                                     87 	.globl _TR2
                                     88 	.globl _TF2
                                     89 	.globl _P
                                     90 	.globl _OV
                                     91 	.globl _RS0
                                     92 	.globl _RS1
                                     93 	.globl _F0
                                     94 	.globl _AC
                                     95 	.globl _CY
                                     96 	.globl _CLRPWM
                                     97 	.globl _PWMF
                                     98 	.globl _LOAD
                                     99 	.globl _PWMRUN
                                    100 	.globl _ADCHS0
                                    101 	.globl _ADCHS1
                                    102 	.globl _ADCHS2
                                    103 	.globl _ADCHS3
                                    104 	.globl _ETGSEL0
                                    105 	.globl _ETGSEL1
                                    106 	.globl _ADCS
                                    107 	.globl _ADCF
                                    108 	.globl _RI_1
                                    109 	.globl _TI_1
                                    110 	.globl _RB8_1
                                    111 	.globl _TB8_1
                                    112 	.globl _REN_1
                                    113 	.globl _SM2_1
                                    114 	.globl _SM1_1
                                    115 	.globl _FE_1
                                    116 	.globl _SM0_1
                                    117 	.globl _EIPH1
                                    118 	.globl _EIP1
                                    119 	.globl _PMD
                                    120 	.globl _PMEN
                                    121 	.globl _PDTCNT
                                    122 	.globl _PDTEN
                                    123 	.globl _SCON_1
                                    124 	.globl _EIPH
                                    125 	.globl _AINDIDS
                                    126 	.globl _SPDR
                                    127 	.globl _SPSR
                                    128 	.globl _SPCR2
                                    129 	.globl _SPCR
                                    130 	.globl _CAPCON4
                                    131 	.globl _CAPCON3
                                    132 	.globl _B
                                    133 	.globl _EIP
                                    134 	.globl _C2H
                                    135 	.globl _C2L
                                    136 	.globl _PIF
                                    137 	.globl _PIPEN
                                    138 	.globl _PINEN
                                    139 	.globl _PICON
                                    140 	.globl _ADCCON0
                                    141 	.globl _C1H
                                    142 	.globl _C1L
                                    143 	.globl _C0H
                                    144 	.globl _C0L
                                    145 	.globl _ADCDLY
                                    146 	.globl _ADCCON2
                                    147 	.globl _ADCCON1
                                    148 	.globl _ACC
                                    149 	.globl _PWMCON1
                                    150 	.globl _PIOCON0
                                    151 	.globl _PWM3L
                                    152 	.globl _PWM2L
                                    153 	.globl _PWM1L
                                    154 	.globl _PWM0L
                                    155 	.globl _PWMPL
                                    156 	.globl _PWMCON0
                                    157 	.globl _FBD
                                    158 	.globl _PNP
                                    159 	.globl _PWM3H
                                    160 	.globl _PWM2H
                                    161 	.globl _PWM1H
                                    162 	.globl _PWM0H
                                    163 	.globl _PWMPH
                                    164 	.globl _PSW
                                    165 	.globl _ADCMPH
                                    166 	.globl _ADCMPL
                                    167 	.globl _PWM5L
                                    168 	.globl _TH2
                                    169 	.globl _PWM4L
                                    170 	.globl _TL2
                                    171 	.globl _RCMP2H
                                    172 	.globl _RCMP2L
                                    173 	.globl _T2MOD
                                    174 	.globl _T2CON
                                    175 	.globl _TA
                                    176 	.globl _PIOCON1
                                    177 	.globl _RH3
                                    178 	.globl _PWM5H
                                    179 	.globl _RL3
                                    180 	.globl _PWM4H
                                    181 	.globl _T3CON
                                    182 	.globl _ADCRH
                                    183 	.globl _ADCRL
                                    184 	.globl _I2ADDR
                                    185 	.globl _I2CON
                                    186 	.globl _I2TOC
                                    187 	.globl _I2CLK
                                    188 	.globl _I2STAT
                                    189 	.globl _I2DAT
                                    190 	.globl _SADDR_1
                                    191 	.globl _SADEN_1
                                    192 	.globl _SADEN
                                    193 	.globl _IP
                                    194 	.globl _PWMINTC
                                    195 	.globl _IPH
                                    196 	.globl _P2S
                                    197 	.globl _P1SR
                                    198 	.globl _P1M2
                                    199 	.globl _P1S
                                    200 	.globl _P1M1
                                    201 	.globl _P0SR
                                    202 	.globl _P0M2
                                    203 	.globl _P0S
                                    204 	.globl _P0M1
                                    205 	.globl _P3
                                    206 	.globl _IAPCN
                                    207 	.globl _IAPFD
                                    208 	.globl _P3SR
                                    209 	.globl _P3M2
                                    210 	.globl _P3S
                                    211 	.globl _P3M1
                                    212 	.globl _BODCON1
                                    213 	.globl _WDCON
                                    214 	.globl _SADDR
                                    215 	.globl _IE
                                    216 	.globl _IAPAH
                                    217 	.globl _IAPAL
                                    218 	.globl _IAPUEN
                                    219 	.globl _IAPTRG
                                    220 	.globl _BODCON0
                                    221 	.globl _AUXR1
                                    222 	.globl _P2
                                    223 	.globl _CHPCON
                                    224 	.globl _EIE1
                                    225 	.globl _EIE
                                    226 	.globl _SBUF_1
                                    227 	.globl _SBUF
                                    228 	.globl _SCON
                                    229 	.globl _CKEN
                                    230 	.globl _CKSWT
                                    231 	.globl _CKDIV
                                    232 	.globl _CAPCON2
                                    233 	.globl _CAPCON1
                                    234 	.globl _CAPCON0
                                    235 	.globl _SFRS
                                    236 	.globl _P1
                                    237 	.globl _WKCON
                                    238 	.globl _CKCON
                                    239 	.globl _TH1
                                    240 	.globl _TH0
                                    241 	.globl _TL1
                                    242 	.globl _TL0
                                    243 	.globl _TMOD
                                    244 	.globl _TCON
                                    245 	.globl _PCON
                                    246 	.globl _RWK
                                    247 	.globl _RCTRIM1
                                    248 	.globl _RCTRIM0
                                    249 	.globl _DPH
                                    250 	.globl _DPL
                                    251 	.globl _SP
                                    252 	.globl _P0
                                    253 	.globl _string
                                    254 	.globl _number
                                    255 	.globl _a
                                    256 	.globl _ADC_ISR
                                    257 ;--------------------------------------------------------
                                    258 ; special function registers
                                    259 ;--------------------------------------------------------
                                    260 	.area RSEG    (ABS,DATA)
      000000                        261 	.org 0x0000
                           000080   262 _P0	=	0x0080
                           000081   263 _SP	=	0x0081
                           000082   264 _DPL	=	0x0082
                           000083   265 _DPH	=	0x0083
                           000084   266 _RCTRIM0	=	0x0084
                           000085   267 _RCTRIM1	=	0x0085
                           000086   268 _RWK	=	0x0086
                           000087   269 _PCON	=	0x0087
                           000088   270 _TCON	=	0x0088
                           000089   271 _TMOD	=	0x0089
                           00008A   272 _TL0	=	0x008a
                           00008B   273 _TL1	=	0x008b
                           00008C   274 _TH0	=	0x008c
                           00008D   275 _TH1	=	0x008d
                           00008E   276 _CKCON	=	0x008e
                           00008F   277 _WKCON	=	0x008f
                           000090   278 _P1	=	0x0090
                           000091   279 _SFRS	=	0x0091
                           000092   280 _CAPCON0	=	0x0092
                           000093   281 _CAPCON1	=	0x0093
                           000094   282 _CAPCON2	=	0x0094
                           000095   283 _CKDIV	=	0x0095
                           000096   284 _CKSWT	=	0x0096
                           000097   285 _CKEN	=	0x0097
                           000098   286 _SCON	=	0x0098
                           000099   287 _SBUF	=	0x0099
                           00009A   288 _SBUF_1	=	0x009a
                           00009B   289 _EIE	=	0x009b
                           00009C   290 _EIE1	=	0x009c
                           00009F   291 _CHPCON	=	0x009f
                           0000A0   292 _P2	=	0x00a0
                           0000A2   293 _AUXR1	=	0x00a2
                           0000A3   294 _BODCON0	=	0x00a3
                           0000A4   295 _IAPTRG	=	0x00a4
                           0000A5   296 _IAPUEN	=	0x00a5
                           0000A6   297 _IAPAL	=	0x00a6
                           0000A7   298 _IAPAH	=	0x00a7
                           0000A8   299 _IE	=	0x00a8
                           0000A9   300 _SADDR	=	0x00a9
                           0000AA   301 _WDCON	=	0x00aa
                           0000AB   302 _BODCON1	=	0x00ab
                           0000AC   303 _P3M1	=	0x00ac
                           0000AC   304 _P3S	=	0x00ac
                           0000AD   305 _P3M2	=	0x00ad
                           0000AD   306 _P3SR	=	0x00ad
                           0000AE   307 _IAPFD	=	0x00ae
                           0000AF   308 _IAPCN	=	0x00af
                           0000B0   309 _P3	=	0x00b0
                           0000B1   310 _P0M1	=	0x00b1
                           0000B1   311 _P0S	=	0x00b1
                           0000B2   312 _P0M2	=	0x00b2
                           0000B2   313 _P0SR	=	0x00b2
                           0000B3   314 _P1M1	=	0x00b3
                           0000B3   315 _P1S	=	0x00b3
                           0000B4   316 _P1M2	=	0x00b4
                           0000B4   317 _P1SR	=	0x00b4
                           0000B5   318 _P2S	=	0x00b5
                           0000B7   319 _IPH	=	0x00b7
                           0000B7   320 _PWMINTC	=	0x00b7
                           0000B8   321 _IP	=	0x00b8
                           0000B9   322 _SADEN	=	0x00b9
                           0000BA   323 _SADEN_1	=	0x00ba
                           0000BB   324 _SADDR_1	=	0x00bb
                           0000BC   325 _I2DAT	=	0x00bc
                           0000BD   326 _I2STAT	=	0x00bd
                           0000BE   327 _I2CLK	=	0x00be
                           0000BF   328 _I2TOC	=	0x00bf
                           0000C0   329 _I2CON	=	0x00c0
                           0000C1   330 _I2ADDR	=	0x00c1
                           0000C2   331 _ADCRL	=	0x00c2
                           0000C3   332 _ADCRH	=	0x00c3
                           0000C4   333 _T3CON	=	0x00c4
                           0000C4   334 _PWM4H	=	0x00c4
                           0000C5   335 _RL3	=	0x00c5
                           0000C5   336 _PWM5H	=	0x00c5
                           0000C6   337 _RH3	=	0x00c6
                           0000C6   338 _PIOCON1	=	0x00c6
                           0000C7   339 _TA	=	0x00c7
                           0000C8   340 _T2CON	=	0x00c8
                           0000C9   341 _T2MOD	=	0x00c9
                           0000CA   342 _RCMP2L	=	0x00ca
                           0000CB   343 _RCMP2H	=	0x00cb
                           0000CC   344 _TL2	=	0x00cc
                           0000CC   345 _PWM4L	=	0x00cc
                           0000CD   346 _TH2	=	0x00cd
                           0000CD   347 _PWM5L	=	0x00cd
                           0000CE   348 _ADCMPL	=	0x00ce
                           0000CF   349 _ADCMPH	=	0x00cf
                           0000D0   350 _PSW	=	0x00d0
                           0000D1   351 _PWMPH	=	0x00d1
                           0000D2   352 _PWM0H	=	0x00d2
                           0000D3   353 _PWM1H	=	0x00d3
                           0000D4   354 _PWM2H	=	0x00d4
                           0000D5   355 _PWM3H	=	0x00d5
                           0000D6   356 _PNP	=	0x00d6
                           0000D7   357 _FBD	=	0x00d7
                           0000D8   358 _PWMCON0	=	0x00d8
                           0000D9   359 _PWMPL	=	0x00d9
                           0000DA   360 _PWM0L	=	0x00da
                           0000DB   361 _PWM1L	=	0x00db
                           0000DC   362 _PWM2L	=	0x00dc
                           0000DD   363 _PWM3L	=	0x00dd
                           0000DE   364 _PIOCON0	=	0x00de
                           0000DF   365 _PWMCON1	=	0x00df
                           0000E0   366 _ACC	=	0x00e0
                           0000E1   367 _ADCCON1	=	0x00e1
                           0000E2   368 _ADCCON2	=	0x00e2
                           0000E3   369 _ADCDLY	=	0x00e3
                           0000E4   370 _C0L	=	0x00e4
                           0000E5   371 _C0H	=	0x00e5
                           0000E6   372 _C1L	=	0x00e6
                           0000E7   373 _C1H	=	0x00e7
                           0000E8   374 _ADCCON0	=	0x00e8
                           0000E9   375 _PICON	=	0x00e9
                           0000EA   376 _PINEN	=	0x00ea
                           0000EB   377 _PIPEN	=	0x00eb
                           0000EC   378 _PIF	=	0x00ec
                           0000ED   379 _C2L	=	0x00ed
                           0000EE   380 _C2H	=	0x00ee
                           0000EF   381 _EIP	=	0x00ef
                           0000F0   382 _B	=	0x00f0
                           0000F1   383 _CAPCON3	=	0x00f1
                           0000F2   384 _CAPCON4	=	0x00f2
                           0000F3   385 _SPCR	=	0x00f3
                           0000F3   386 _SPCR2	=	0x00f3
                           0000F4   387 _SPSR	=	0x00f4
                           0000F5   388 _SPDR	=	0x00f5
                           0000F6   389 _AINDIDS	=	0x00f6
                           0000F7   390 _EIPH	=	0x00f7
                           0000F8   391 _SCON_1	=	0x00f8
                           0000F9   392 _PDTEN	=	0x00f9
                           0000FA   393 _PDTCNT	=	0x00fa
                           0000FB   394 _PMEN	=	0x00fb
                           0000FC   395 _PMD	=	0x00fc
                           0000FE   396 _EIP1	=	0x00fe
                           0000FF   397 _EIPH1	=	0x00ff
                                    398 ;--------------------------------------------------------
                                    399 ; special function bits
                                    400 ;--------------------------------------------------------
                                    401 	.area RSEG    (ABS,DATA)
      000000                        402 	.org 0x0000
                           0000FF   403 _SM0_1	=	0x00ff
                           0000FF   404 _FE_1	=	0x00ff
                           0000FE   405 _SM1_1	=	0x00fe
                           0000FD   406 _SM2_1	=	0x00fd
                           0000FC   407 _REN_1	=	0x00fc
                           0000FB   408 _TB8_1	=	0x00fb
                           0000FA   409 _RB8_1	=	0x00fa
                           0000F9   410 _TI_1	=	0x00f9
                           0000F8   411 _RI_1	=	0x00f8
                           0000EF   412 _ADCF	=	0x00ef
                           0000EE   413 _ADCS	=	0x00ee
                           0000ED   414 _ETGSEL1	=	0x00ed
                           0000EC   415 _ETGSEL0	=	0x00ec
                           0000EB   416 _ADCHS3	=	0x00eb
                           0000EA   417 _ADCHS2	=	0x00ea
                           0000E9   418 _ADCHS1	=	0x00e9
                           0000E8   419 _ADCHS0	=	0x00e8
                           0000DF   420 _PWMRUN	=	0x00df
                           0000DE   421 _LOAD	=	0x00de
                           0000DD   422 _PWMF	=	0x00dd
                           0000DC   423 _CLRPWM	=	0x00dc
                           0000D7   424 _CY	=	0x00d7
                           0000D6   425 _AC	=	0x00d6
                           0000D5   426 _F0	=	0x00d5
                           0000D4   427 _RS1	=	0x00d4
                           0000D3   428 _RS0	=	0x00d3
                           0000D2   429 _OV	=	0x00d2
                           0000D0   430 _P	=	0x00d0
                           0000CF   431 _TF2	=	0x00cf
                           0000CA   432 _TR2	=	0x00ca
                           0000C8   433 _CM_RL2	=	0x00c8
                           0000C6   434 _I2CEN	=	0x00c6
                           0000C5   435 _STA	=	0x00c5
                           0000C4   436 _STO	=	0x00c4
                           0000C3   437 _SI	=	0x00c3
                           0000C2   438 _AA	=	0x00c2
                           0000C0   439 _I2CPX	=	0x00c0
                           0000BE   440 _PADC	=	0x00be
                           0000BD   441 _PBOD	=	0x00bd
                           0000BC   442 _PS	=	0x00bc
                           0000BB   443 _PT1	=	0x00bb
                           0000BA   444 _PX1	=	0x00ba
                           0000B9   445 _PT0	=	0x00b9
                           0000B8   446 _PX0	=	0x00b8
                           0000B0   447 _P30	=	0x00b0
                           0000AF   448 _EA	=	0x00af
                           0000AE   449 _EADC	=	0x00ae
                           0000AD   450 _EBOD	=	0x00ad
                           0000AC   451 _ES	=	0x00ac
                           0000AB   452 _ET1	=	0x00ab
                           0000AA   453 _EX1	=	0x00aa
                           0000A9   454 _ET0	=	0x00a9
                           0000A8   455 _EX0	=	0x00a8
                           0000A0   456 _P20	=	0x00a0
                           00009F   457 _SM0	=	0x009f
                           00009F   458 _FE	=	0x009f
                           00009E   459 _SM1	=	0x009e
                           00009D   460 _SM2	=	0x009d
                           00009C   461 _REN	=	0x009c
                           00009B   462 _TB8	=	0x009b
                           00009A   463 _RB8	=	0x009a
                           000099   464 _TI	=	0x0099
                           000098   465 _RI	=	0x0098
                           000097   466 _P17	=	0x0097
                           000096   467 _P16	=	0x0096
                           000096   468 _TXD_1	=	0x0096
                           000095   469 _P15	=	0x0095
                           000094   470 _P14	=	0x0094
                           000094   471 _SDA	=	0x0094
                           000093   472 _P13	=	0x0093
                           000093   473 _SCL	=	0x0093
                           000092   474 _P12	=	0x0092
                           000091   475 _P11	=	0x0091
                           000090   476 _P10	=	0x0090
                           00008F   477 _TF1	=	0x008f
                           00008E   478 _TR1	=	0x008e
                           00008D   479 _TF0	=	0x008d
                           00008C   480 _TR0	=	0x008c
                           00008B   481 _IE1	=	0x008b
                           00008A   482 _IT1	=	0x008a
                           000089   483 _IE0	=	0x0089
                           000088   484 _IT0	=	0x0088
                           000087   485 _P07	=	0x0087
                           000087   486 _RXD	=	0x0087
                           000086   487 _P06	=	0x0086
                           000086   488 _TXD	=	0x0086
                           000085   489 _P05	=	0x0085
                           000084   490 _P04	=	0x0084
                           000084   491 _STADC	=	0x0084
                           000083   492 _P03	=	0x0083
                           000082   493 _P02	=	0x0082
                           000082   494 _RXD_1	=	0x0082
                           000081   495 _P01	=	0x0081
                           000081   496 _MISO	=	0x0081
                           000080   497 _P00	=	0x0080
                           000080   498 _MOSI	=	0x0080
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable register banks
                                    501 ;--------------------------------------------------------
                                    502 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        503 	.ds 8
                                    504 ;--------------------------------------------------------
                                    505 ; overlayable bit register bank
                                    506 ;--------------------------------------------------------
                                    507 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        508 bits:
      000020                        509 	.ds 1
                           008000   510 	b0 = bits[0]
                           008100   511 	b1 = bits[1]
                           008200   512 	b2 = bits[2]
                           008300   513 	b3 = bits[3]
                           008400   514 	b4 = bits[4]
                           008500   515 	b5 = bits[5]
                           008600   516 	b6 = bits[6]
                           008700   517 	b7 = bits[7]
                                    518 ;--------------------------------------------------------
                                    519 ; internal ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area DSEG    (DATA)
      000008                        522 _a::
      000008                        523 	.ds 1
      000009                        524 _number::
      000009                        525 	.ds 2
      00000B                        526 _string::
      00000B                        527 	.ds 20
                                    528 ;--------------------------------------------------------
                                    529 ; overlayable items in internal ram
                                    530 ;--------------------------------------------------------
                                    531 ;--------------------------------------------------------
                                    532 ; Stack segment in internal ram
                                    533 ;--------------------------------------------------------
                                    534 	.area SSEG
      000021                        535 __start__stack:
      000021                        536 	.ds	1
                                    537 
                                    538 ;--------------------------------------------------------
                                    539 ; indirectly addressable internal ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area ISEG    (DATA)
                                    542 ;--------------------------------------------------------
                                    543 ; absolute internal ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area IABS    (ABS,DATA)
                                    546 	.area IABS    (ABS,DATA)
                                    547 ;--------------------------------------------------------
                                    548 ; bit data
                                    549 ;--------------------------------------------------------
                                    550 	.area BSEG    (BIT)
                                    551 ;--------------------------------------------------------
                                    552 ; paged external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area PSEG    (PAG,XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; uninitialized external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XSEG    (XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; absolute external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XABS    (ABS,XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; initialized external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XISEG   (XDATA)
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT0 (CODE)
                                    569 	.area GSINIT1 (CODE)
                                    570 	.area GSINIT2 (CODE)
                                    571 	.area GSINIT3 (CODE)
                                    572 	.area GSINIT4 (CODE)
                                    573 	.area GSINIT5 (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.area GSFINAL (CODE)
                                    576 	.area CSEG    (CODE)
                                    577 ;--------------------------------------------------------
                                    578 ; interrupt vector
                                    579 ;--------------------------------------------------------
                                    580 	.area HOME    (CODE)
      000000                        581 __interrupt_vect:
      000000 02 00 61         [24]  582 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  583 	reti
      000004                        584 	.ds	7
      00000B 32               [24]  585 	reti
      00000C                        586 	.ds	7
      000013 32               [24]  587 	reti
      000014                        588 	.ds	7
      00001B 32               [24]  589 	reti
      00001C                        590 	.ds	7
      000023 02 00 C6         [24]  591 	ljmp	_UART0_ISR
      000026                        592 	.ds	5
      00002B 32               [24]  593 	reti
      00002C                        594 	.ds	7
      000033 32               [24]  595 	reti
      000034                        596 	.ds	7
      00003B 32               [24]  597 	reti
      00003C                        598 	.ds	7
      000043 32               [24]  599 	reti
      000044                        600 	.ds	7
      00004B 32               [24]  601 	reti
      00004C                        602 	.ds	7
      000053 32               [24]  603 	reti
      000054                        604 	.ds	7
      00005B 02 00 C7         [24]  605 	ljmp	_ADC_ISR
                                    606 ;--------------------------------------------------------
                                    607 ; global & static initialisations
                                    608 ;--------------------------------------------------------
                                    609 	.area HOME    (CODE)
                                    610 	.area GSINIT  (CODE)
                                    611 	.area GSFINAL (CODE)
                                    612 	.area GSINIT  (CODE)
                                    613 	.globl __sdcc_gsinit_startup
                                    614 	.globl __sdcc_program_startup
                                    615 	.globl __start__stack
                                    616 	.globl __mcs51_genXINIT
                                    617 	.globl __mcs51_genXRAMCLEAR
                                    618 	.globl __mcs51_genRAMCLEAR
                                    619 ;	main.c:9: uint8_t a=200;
      0000BA 75 08 C8         [24]  620 	mov	_a,#0xc8
                                    621 ;	main.c:10: int number = 65000;
      0000BD 75 09 E8         [24]  622 	mov	_number,#0xe8
      0000C0 75 0A FD         [24]  623 	mov	(_number + 1),#0xfd
                                    624 	.area GSFINAL (CODE)
      0000C3 02 00 5E         [24]  625 	ljmp	__sdcc_program_startup
                                    626 ;--------------------------------------------------------
                                    627 ; Home
                                    628 ;--------------------------------------------------------
                                    629 	.area HOME    (CODE)
                                    630 	.area HOME    (CODE)
      00005E                        631 __sdcc_program_startup:
      00005E 02 01 0C         [24]  632 	ljmp	_main
                                    633 ;	return from main will return to caller
                                    634 ;--------------------------------------------------------
                                    635 ; code
                                    636 ;--------------------------------------------------------
                                    637 	.area CSEG    (CODE)
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'UART0_ISR'
                                    640 ;------------------------------------------------------------
                                    641 ;	main.c:79: void UART0_ISR(void) __interrupt (4){}
                                    642 ;	-----------------------------------------
                                    643 ;	 function UART0_ISR
                                    644 ;	-----------------------------------------
      0000C6                        645 _UART0_ISR:
                           000007   646 	ar7 = 0x07
                           000006   647 	ar6 = 0x06
                           000005   648 	ar5 = 0x05
                           000004   649 	ar4 = 0x04
                           000003   650 	ar3 = 0x03
                           000002   651 	ar2 = 0x02
                           000001   652 	ar1 = 0x01
                           000000   653 	ar0 = 0x00
      0000C6 32               [24]  654 	reti
                                    655 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    656 ;	eliminated unneeded push/pop not_psw
                                    657 ;	eliminated unneeded push/pop dpl
                                    658 ;	eliminated unneeded push/pop dph
                                    659 ;	eliminated unneeded push/pop b
                                    660 ;	eliminated unneeded push/pop acc
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'ADC_ISR'
                                    663 ;------------------------------------------------------------
                                    664 ;u16AdcValue               Allocated to registers 
                                    665 ;------------------------------------------------------------
                                    666 ;	main.c:80: void ADC_ISR(void) __interrupt (11)
                                    667 ;	-----------------------------------------
                                    668 ;	 function ADC_ISR
                                    669 ;	-----------------------------------------
      0000C7                        670 _ADC_ISR:
      0000C7 C0 20            [24]  671 	push	bits
      0000C9 C0 E0            [24]  672 	push	acc
      0000CB C0 F0            [24]  673 	push	b
      0000CD C0 82            [24]  674 	push	dpl
      0000CF C0 83            [24]  675 	push	dph
      0000D1 C0 07            [24]  676 	push	(0+7)
      0000D3 C0 06            [24]  677 	push	(0+6)
      0000D5 C0 05            [24]  678 	push	(0+5)
      0000D7 C0 04            [24]  679 	push	(0+4)
      0000D9 C0 03            [24]  680 	push	(0+3)
      0000DB C0 02            [24]  681 	push	(0+2)
      0000DD C0 01            [24]  682 	push	(0+1)
      0000DF C0 00            [24]  683 	push	(0+0)
      0000E1 C0 D0            [24]  684 	push	psw
      0000E3 75 D0 00         [24]  685 	mov	psw,#0x00
                                    686 ;	main.c:83: u16AdcValue = ADC_GetData();
      0000E6 12 01 A9         [24]  687 	lcall	_ADC_GetData
                                    688 ;	main.c:85: ADC_ClearFlag();
      0000E9 12 01 CA         [24]  689 	lcall	_ADC_ClearFlag
                                    690 ;	main.c:86: ADC_StartConv();
      0000EC 12 01 9F         [24]  691 	lcall	_ADC_StartConv
                                    692 ;	main.c:87: }
      0000EF D0 D0            [24]  693 	pop	psw
      0000F1 D0 00            [24]  694 	pop	(0+0)
      0000F3 D0 01            [24]  695 	pop	(0+1)
      0000F5 D0 02            [24]  696 	pop	(0+2)
      0000F7 D0 03            [24]  697 	pop	(0+3)
      0000F9 D0 04            [24]  698 	pop	(0+4)
      0000FB D0 05            [24]  699 	pop	(0+5)
      0000FD D0 06            [24]  700 	pop	(0+6)
      0000FF D0 07            [24]  701 	pop	(0+7)
      000101 D0 83            [24]  702 	pop	dph
      000103 D0 82            [24]  703 	pop	dpl
      000105 D0 F0            [24]  704 	pop	b
      000107 D0 E0            [24]  705 	pop	acc
      000109 D0 20            [24]  706 	pop	bits
      00010B 32               [24]  707 	reti
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'main'
                                    710 ;------------------------------------------------------------
                                    711 ;	main.c:89: void main(void)
                                    712 ;	-----------------------------------------
                                    713 ;	 function main
                                    714 ;	-----------------------------------------
      00010C                        715 _main:
                                    716 ;	main.c:92: GPIO_Init();
      00010C 12 01 28         [24]  717 	lcall	_GPIO_Init
                                    718 ;	main.c:93: Delay_Init();
      00010F 12 01 2F         [24]  719 	lcall	_Delay_Init
                                    720 ;	main.c:94: ADC_Init();
      000112 12 01 7E         [24]  721 	lcall	_ADC_Init
                                    722 ;	main.c:95: ADC_SelectChannel(0);
      000115 75 82 00         [24]  723 	mov	dpl,#0x00
      000118 12 01 93         [24]  724 	lcall	_ADC_SelectChannel
                                    725 ;	main.c:96: ADC_StartConv();
      00011B 12 01 9F         [24]  726 	lcall	_ADC_StartConv
                                    727 ;	main.c:97: EA = 1;
                                    728 ;	assignBit
      00011E D2 AF            [12]  729 	setb	_EA
                                    730 ;	main.c:99: while (1) {
      000120                        731 00102$:
                                    732 ;	main.c:101: P15 = 0;
                                    733 ;	assignBit
      000120 C2 95            [12]  734 	clr	_P15
                                    735 ;	main.c:103: __asm__("nop\n");
      000122 00               [12]  736 	nop
                                    737 ;	main.c:104: P15 = 1;
                                    738 ;	assignBit
      000123 D2 95            [12]  739 	setb	_P15
                                    740 ;	main.c:106: __asm__("nop\n");
      000125 00               [12]  741 	nop
                                    742 ;	main.c:108: }
      000126 80 F8            [24]  743 	sjmp	00102$
                                    744 	.area CSEG    (CODE)
                                    745 	.area CONST   (CODE)
      0001D9                        746 _OLED_FONT:
      0001D9 00                     747 	.db #0x00	; 0
      0001DA 00                     748 	.db #0x00	; 0
      0001DB 00                     749 	.db #0x00	; 0
      0001DC 00                     750 	.db #0x00	; 0
      0001DD 00                     751 	.db #0x00	; 0
      0001DE 00                     752 	.db #0x00	; 0
      0001DF 00                     753 	.db #0x00	; 0
      0001E0 2F                     754 	.db #0x2f	; 47
      0001E1 00                     755 	.db #0x00	; 0
      0001E2 00                     756 	.db #0x00	; 0
      0001E3 00                     757 	.db #0x00	; 0
      0001E4 07                     758 	.db #0x07	; 7
      0001E5 00                     759 	.db #0x00	; 0
      0001E6 07                     760 	.db #0x07	; 7
      0001E7 00                     761 	.db #0x00	; 0
      0001E8 14                     762 	.db #0x14	; 20
      0001E9 7F                     763 	.db #0x7f	; 127
      0001EA 14                     764 	.db #0x14	; 20
      0001EB 7F                     765 	.db #0x7f	; 127
      0001EC 14                     766 	.db #0x14	; 20
      0001ED 24                     767 	.db #0x24	; 36
      0001EE 2A                     768 	.db #0x2a	; 42
      0001EF 7F                     769 	.db #0x7f	; 127
      0001F0 2A                     770 	.db #0x2a	; 42
      0001F1 12                     771 	.db #0x12	; 18
      0001F2 62                     772 	.db #0x62	; 98	'b'
      0001F3 64                     773 	.db #0x64	; 100	'd'
      0001F4 08                     774 	.db #0x08	; 8
      0001F5 13                     775 	.db #0x13	; 19
      0001F6 23                     776 	.db #0x23	; 35
      0001F7 36                     777 	.db #0x36	; 54	'6'
      0001F8 49                     778 	.db #0x49	; 73	'I'
      0001F9 55                     779 	.db #0x55	; 85	'U'
      0001FA 22                     780 	.db #0x22	; 34
      0001FB 50                     781 	.db #0x50	; 80	'P'
      0001FC 00                     782 	.db #0x00	; 0
      0001FD 05                     783 	.db #0x05	; 5
      0001FE 03                     784 	.db #0x03	; 3
      0001FF 00                     785 	.db #0x00	; 0
      000200 00                     786 	.db #0x00	; 0
      000201 00                     787 	.db #0x00	; 0
      000202 1C                     788 	.db #0x1c	; 28
      000203 22                     789 	.db #0x22	; 34
      000204 41                     790 	.db #0x41	; 65	'A'
      000205 00                     791 	.db #0x00	; 0
      000206 00                     792 	.db #0x00	; 0
      000207 41                     793 	.db #0x41	; 65	'A'
      000208 22                     794 	.db #0x22	; 34
      000209 1C                     795 	.db #0x1c	; 28
      00020A 00                     796 	.db #0x00	; 0
      00020B 14                     797 	.db #0x14	; 20
      00020C 08                     798 	.db #0x08	; 8
      00020D 3E                     799 	.db #0x3e	; 62
      00020E 08                     800 	.db #0x08	; 8
      00020F 14                     801 	.db #0x14	; 20
      000210 08                     802 	.db #0x08	; 8
      000211 08                     803 	.db #0x08	; 8
      000212 3E                     804 	.db #0x3e	; 62
      000213 08                     805 	.db #0x08	; 8
      000214 08                     806 	.db #0x08	; 8
      000215 00                     807 	.db #0x00	; 0
      000216 00                     808 	.db #0x00	; 0
      000217 A0                     809 	.db #0xa0	; 160
      000218 60                     810 	.db #0x60	; 96
      000219 00                     811 	.db #0x00	; 0
      00021A 08                     812 	.db #0x08	; 8
      00021B 08                     813 	.db #0x08	; 8
      00021C 08                     814 	.db #0x08	; 8
      00021D 08                     815 	.db #0x08	; 8
      00021E 08                     816 	.db #0x08	; 8
      00021F 00                     817 	.db #0x00	; 0
      000220 60                     818 	.db #0x60	; 96
      000221 60                     819 	.db #0x60	; 96
      000222 00                     820 	.db #0x00	; 0
      000223 00                     821 	.db #0x00	; 0
      000224 20                     822 	.db #0x20	; 32
      000225 10                     823 	.db #0x10	; 16
      000226 08                     824 	.db #0x08	; 8
      000227 04                     825 	.db #0x04	; 4
      000228 02                     826 	.db #0x02	; 2
      000229 3E                     827 	.db #0x3e	; 62
      00022A 51                     828 	.db #0x51	; 81	'Q'
      00022B 49                     829 	.db #0x49	; 73	'I'
      00022C 45                     830 	.db #0x45	; 69	'E'
      00022D 3E                     831 	.db #0x3e	; 62
      00022E 00                     832 	.db #0x00	; 0
      00022F 42                     833 	.db #0x42	; 66	'B'
      000230 7F                     834 	.db #0x7f	; 127
      000231 40                     835 	.db #0x40	; 64
      000232 00                     836 	.db #0x00	; 0
      000233 42                     837 	.db #0x42	; 66	'B'
      000234 61                     838 	.db #0x61	; 97	'a'
      000235 51                     839 	.db #0x51	; 81	'Q'
      000236 49                     840 	.db #0x49	; 73	'I'
      000237 46                     841 	.db #0x46	; 70	'F'
      000238 21                     842 	.db #0x21	; 33
      000239 41                     843 	.db #0x41	; 65	'A'
      00023A 45                     844 	.db #0x45	; 69	'E'
      00023B 4B                     845 	.db #0x4b	; 75	'K'
      00023C 31                     846 	.db #0x31	; 49	'1'
      00023D 18                     847 	.db #0x18	; 24
      00023E 14                     848 	.db #0x14	; 20
      00023F 12                     849 	.db #0x12	; 18
      000240 7F                     850 	.db #0x7f	; 127
      000241 10                     851 	.db #0x10	; 16
      000242 27                     852 	.db #0x27	; 39
      000243 45                     853 	.db #0x45	; 69	'E'
      000244 45                     854 	.db #0x45	; 69	'E'
      000245 45                     855 	.db #0x45	; 69	'E'
      000246 39                     856 	.db #0x39	; 57	'9'
      000247 3C                     857 	.db #0x3c	; 60
      000248 4A                     858 	.db #0x4a	; 74	'J'
      000249 49                     859 	.db #0x49	; 73	'I'
      00024A 49                     860 	.db #0x49	; 73	'I'
      00024B 30                     861 	.db #0x30	; 48	'0'
      00024C 01                     862 	.db #0x01	; 1
      00024D 71                     863 	.db #0x71	; 113	'q'
      00024E 09                     864 	.db #0x09	; 9
      00024F 05                     865 	.db #0x05	; 5
      000250 03                     866 	.db #0x03	; 3
      000251 36                     867 	.db #0x36	; 54	'6'
      000252 49                     868 	.db #0x49	; 73	'I'
      000253 49                     869 	.db #0x49	; 73	'I'
      000254 49                     870 	.db #0x49	; 73	'I'
      000255 36                     871 	.db #0x36	; 54	'6'
      000256 06                     872 	.db #0x06	; 6
      000257 49                     873 	.db #0x49	; 73	'I'
      000258 49                     874 	.db #0x49	; 73	'I'
      000259 29                     875 	.db #0x29	; 41
      00025A 1E                     876 	.db #0x1e	; 30
      00025B 00                     877 	.db #0x00	; 0
      00025C 36                     878 	.db #0x36	; 54	'6'
      00025D 36                     879 	.db #0x36	; 54	'6'
      00025E 00                     880 	.db #0x00	; 0
      00025F 00                     881 	.db #0x00	; 0
      000260 00                     882 	.db #0x00	; 0
      000261 56                     883 	.db #0x56	; 86	'V'
      000262 36                     884 	.db #0x36	; 54	'6'
      000263 00                     885 	.db #0x00	; 0
      000264 00                     886 	.db #0x00	; 0
      000265 08                     887 	.db #0x08	; 8
      000266 14                     888 	.db #0x14	; 20
      000267 22                     889 	.db #0x22	; 34
      000268 41                     890 	.db #0x41	; 65	'A'
      000269 00                     891 	.db #0x00	; 0
      00026A 14                     892 	.db #0x14	; 20
      00026B 14                     893 	.db #0x14	; 20
      00026C 14                     894 	.db #0x14	; 20
      00026D 14                     895 	.db #0x14	; 20
      00026E 14                     896 	.db #0x14	; 20
      00026F 00                     897 	.db #0x00	; 0
      000270 41                     898 	.db #0x41	; 65	'A'
      000271 22                     899 	.db #0x22	; 34
      000272 14                     900 	.db #0x14	; 20
      000273 08                     901 	.db #0x08	; 8
      000274 02                     902 	.db #0x02	; 2
      000275 01                     903 	.db #0x01	; 1
      000276 51                     904 	.db #0x51	; 81	'Q'
      000277 09                     905 	.db #0x09	; 9
      000278 06                     906 	.db #0x06	; 6
      000279 32                     907 	.db #0x32	; 50	'2'
      00027A 49                     908 	.db #0x49	; 73	'I'
      00027B 59                     909 	.db #0x59	; 89	'Y'
      00027C 51                     910 	.db #0x51	; 81	'Q'
      00027D 3E                     911 	.db #0x3e	; 62
      00027E 7C                     912 	.db #0x7c	; 124
      00027F 12                     913 	.db #0x12	; 18
      000280 11                     914 	.db #0x11	; 17
      000281 12                     915 	.db #0x12	; 18
      000282 7C                     916 	.db #0x7c	; 124
      000283 7F                     917 	.db #0x7f	; 127
      000284 49                     918 	.db #0x49	; 73	'I'
      000285 49                     919 	.db #0x49	; 73	'I'
      000286 49                     920 	.db #0x49	; 73	'I'
      000287 36                     921 	.db #0x36	; 54	'6'
      000288 3E                     922 	.db #0x3e	; 62
      000289 41                     923 	.db #0x41	; 65	'A'
      00028A 41                     924 	.db #0x41	; 65	'A'
      00028B 41                     925 	.db #0x41	; 65	'A'
      00028C 22                     926 	.db #0x22	; 34
      00028D 7F                     927 	.db #0x7f	; 127
      00028E 41                     928 	.db #0x41	; 65	'A'
      00028F 41                     929 	.db #0x41	; 65	'A'
      000290 22                     930 	.db #0x22	; 34
      000291 1C                     931 	.db #0x1c	; 28
      000292 7F                     932 	.db #0x7f	; 127
      000293 49                     933 	.db #0x49	; 73	'I'
      000294 49                     934 	.db #0x49	; 73	'I'
      000295 49                     935 	.db #0x49	; 73	'I'
      000296 41                     936 	.db #0x41	; 65	'A'
      000297 7F                     937 	.db #0x7f	; 127
      000298 09                     938 	.db #0x09	; 9
      000299 09                     939 	.db #0x09	; 9
      00029A 09                     940 	.db #0x09	; 9
      00029B 01                     941 	.db #0x01	; 1
      00029C 3E                     942 	.db #0x3e	; 62
      00029D 41                     943 	.db #0x41	; 65	'A'
      00029E 49                     944 	.db #0x49	; 73	'I'
      00029F 49                     945 	.db #0x49	; 73	'I'
      0002A0 7A                     946 	.db #0x7a	; 122	'z'
      0002A1 7F                     947 	.db #0x7f	; 127
      0002A2 08                     948 	.db #0x08	; 8
      0002A3 08                     949 	.db #0x08	; 8
      0002A4 08                     950 	.db #0x08	; 8
      0002A5 7F                     951 	.db #0x7f	; 127
      0002A6 00                     952 	.db #0x00	; 0
      0002A7 41                     953 	.db #0x41	; 65	'A'
      0002A8 7F                     954 	.db #0x7f	; 127
      0002A9 41                     955 	.db #0x41	; 65	'A'
      0002AA 00                     956 	.db #0x00	; 0
      0002AB 20                     957 	.db #0x20	; 32
      0002AC 40                     958 	.db #0x40	; 64
      0002AD 41                     959 	.db #0x41	; 65	'A'
      0002AE 3F                     960 	.db #0x3f	; 63
      0002AF 01                     961 	.db #0x01	; 1
      0002B0 7F                     962 	.db #0x7f	; 127
      0002B1 08                     963 	.db #0x08	; 8
      0002B2 14                     964 	.db #0x14	; 20
      0002B3 22                     965 	.db #0x22	; 34
      0002B4 41                     966 	.db #0x41	; 65	'A'
      0002B5 7F                     967 	.db #0x7f	; 127
      0002B6 40                     968 	.db #0x40	; 64
      0002B7 40                     969 	.db #0x40	; 64
      0002B8 40                     970 	.db #0x40	; 64
      0002B9 40                     971 	.db #0x40	; 64
      0002BA 7F                     972 	.db #0x7f	; 127
      0002BB 02                     973 	.db #0x02	; 2
      0002BC 0C                     974 	.db #0x0c	; 12
      0002BD 02                     975 	.db #0x02	; 2
      0002BE 7F                     976 	.db #0x7f	; 127
      0002BF 7F                     977 	.db #0x7f	; 127
      0002C0 04                     978 	.db #0x04	; 4
      0002C1 08                     979 	.db #0x08	; 8
      0002C2 10                     980 	.db #0x10	; 16
      0002C3 7F                     981 	.db #0x7f	; 127
      0002C4 3E                     982 	.db #0x3e	; 62
      0002C5 41                     983 	.db #0x41	; 65	'A'
      0002C6 41                     984 	.db #0x41	; 65	'A'
      0002C7 41                     985 	.db #0x41	; 65	'A'
      0002C8 3E                     986 	.db #0x3e	; 62
      0002C9 7F                     987 	.db #0x7f	; 127
      0002CA 09                     988 	.db #0x09	; 9
      0002CB 09                     989 	.db #0x09	; 9
      0002CC 09                     990 	.db #0x09	; 9
      0002CD 06                     991 	.db #0x06	; 6
      0002CE 3E                     992 	.db #0x3e	; 62
      0002CF 41                     993 	.db #0x41	; 65	'A'
      0002D0 51                     994 	.db #0x51	; 81	'Q'
      0002D1 21                     995 	.db #0x21	; 33
      0002D2 5E                     996 	.db #0x5e	; 94
      0002D3 7F                     997 	.db #0x7f	; 127
      0002D4 09                     998 	.db #0x09	; 9
      0002D5 19                     999 	.db #0x19	; 25
      0002D6 29                    1000 	.db #0x29	; 41
      0002D7 46                    1001 	.db #0x46	; 70	'F'
      0002D8 46                    1002 	.db #0x46	; 70	'F'
      0002D9 49                    1003 	.db #0x49	; 73	'I'
      0002DA 49                    1004 	.db #0x49	; 73	'I'
      0002DB 49                    1005 	.db #0x49	; 73	'I'
      0002DC 31                    1006 	.db #0x31	; 49	'1'
      0002DD 01                    1007 	.db #0x01	; 1
      0002DE 01                    1008 	.db #0x01	; 1
      0002DF 7F                    1009 	.db #0x7f	; 127
      0002E0 01                    1010 	.db #0x01	; 1
      0002E1 01                    1011 	.db #0x01	; 1
      0002E2 3F                    1012 	.db #0x3f	; 63
      0002E3 40                    1013 	.db #0x40	; 64
      0002E4 40                    1014 	.db #0x40	; 64
      0002E5 40                    1015 	.db #0x40	; 64
      0002E6 3F                    1016 	.db #0x3f	; 63
      0002E7 1F                    1017 	.db #0x1f	; 31
      0002E8 20                    1018 	.db #0x20	; 32
      0002E9 40                    1019 	.db #0x40	; 64
      0002EA 20                    1020 	.db #0x20	; 32
      0002EB 1F                    1021 	.db #0x1f	; 31
      0002EC 3F                    1022 	.db #0x3f	; 63
      0002ED 40                    1023 	.db #0x40	; 64
      0002EE 38                    1024 	.db #0x38	; 56	'8'
      0002EF 40                    1025 	.db #0x40	; 64
      0002F0 3F                    1026 	.db #0x3f	; 63
      0002F1 63                    1027 	.db #0x63	; 99	'c'
      0002F2 14                    1028 	.db #0x14	; 20
      0002F3 08                    1029 	.db #0x08	; 8
      0002F4 14                    1030 	.db #0x14	; 20
      0002F5 63                    1031 	.db #0x63	; 99	'c'
      0002F6 07                    1032 	.db #0x07	; 7
      0002F7 08                    1033 	.db #0x08	; 8
      0002F8 70                    1034 	.db #0x70	; 112	'p'
      0002F9 08                    1035 	.db #0x08	; 8
      0002FA 07                    1036 	.db #0x07	; 7
      0002FB 61                    1037 	.db #0x61	; 97	'a'
      0002FC 51                    1038 	.db #0x51	; 81	'Q'
      0002FD 49                    1039 	.db #0x49	; 73	'I'
      0002FE 45                    1040 	.db #0x45	; 69	'E'
      0002FF 43                    1041 	.db #0x43	; 67	'C'
      000300 00                    1042 	.db #0x00	; 0
      000301 7F                    1043 	.db #0x7f	; 127
      000302 41                    1044 	.db #0x41	; 65	'A'
      000303 41                    1045 	.db #0x41	; 65	'A'
      000304 00                    1046 	.db #0x00	; 0
      000305 02                    1047 	.db #0x02	; 2
      000306 04                    1048 	.db #0x04	; 4
      000307 08                    1049 	.db #0x08	; 8
      000308 10                    1050 	.db #0x10	; 16
      000309 20                    1051 	.db #0x20	; 32
      00030A 00                    1052 	.db #0x00	; 0
      00030B 41                    1053 	.db #0x41	; 65	'A'
      00030C 41                    1054 	.db #0x41	; 65	'A'
      00030D 7F                    1055 	.db #0x7f	; 127
      00030E 00                    1056 	.db #0x00	; 0
      00030F 04                    1057 	.db #0x04	; 4
      000310 02                    1058 	.db #0x02	; 2
      000311 01                    1059 	.db #0x01	; 1
      000312 02                    1060 	.db #0x02	; 2
      000313 04                    1061 	.db #0x04	; 4
      000314 40                    1062 	.db #0x40	; 64
      000315 40                    1063 	.db #0x40	; 64
      000316 40                    1064 	.db #0x40	; 64
      000317 40                    1065 	.db #0x40	; 64
      000318 40                    1066 	.db #0x40	; 64
      000319 00                    1067 	.db #0x00	; 0
      00031A 60                    1068 	.db #0x60	; 96
      00031B 60                    1069 	.db #0x60	; 96
      00031C 00                    1070 	.db #0x00	; 0
      00031D 00                    1071 	.db #0x00	; 0
                                   1072 	.area XINIT   (CODE)
                                   1073 	.area CABS    (ABS,CODE)
