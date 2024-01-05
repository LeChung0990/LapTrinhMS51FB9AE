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
                                     12 	.globl _wait
                                     13 	.globl _UART0_STRING
                                     14 	.globl _UART0_Init
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
                                    247 	.globl _a
                                    248 	.globl _c
                                    249 	.globl _buf1
                                    250 	.globl _thr1
                                    251 	.globl _avg1
                                    252 	.globl _time
                                    253 	.globl _checkAddress
                                    254 	.globl _u8Data
                                    255 	.globl _Res
                                    256 	.globl _High
                                    257 	.globl _Low
                                    258 ;--------------------------------------------------------
                                    259 ; special function registers
                                    260 ;--------------------------------------------------------
                                    261 	.area RSEG    (ABS,DATA)
      000000                        262 	.org 0x0000
                           000080   263 _P0	=	0x0080
                           000081   264 _SP	=	0x0081
                           000082   265 _DPL	=	0x0082
                           000083   266 _DPH	=	0x0083
                           000084   267 _RCTRIM0	=	0x0084
                           000085   268 _RCTRIM1	=	0x0085
                           000086   269 _RWK	=	0x0086
                           000087   270 _PCON	=	0x0087
                           000088   271 _TCON	=	0x0088
                           000089   272 _TMOD	=	0x0089
                           00008A   273 _TL0	=	0x008a
                           00008B   274 _TL1	=	0x008b
                           00008C   275 _TH0	=	0x008c
                           00008D   276 _TH1	=	0x008d
                           00008E   277 _CKCON	=	0x008e
                           00008F   278 _WKCON	=	0x008f
                           000090   279 _P1	=	0x0090
                           000091   280 _SFRS	=	0x0091
                           000092   281 _CAPCON0	=	0x0092
                           000093   282 _CAPCON1	=	0x0093
                           000094   283 _CAPCON2	=	0x0094
                           000095   284 _CKDIV	=	0x0095
                           000096   285 _CKSWT	=	0x0096
                           000097   286 _CKEN	=	0x0097
                           000098   287 _SCON	=	0x0098
                           000099   288 _SBUF	=	0x0099
                           00009A   289 _SBUF_1	=	0x009a
                           00009B   290 _EIE	=	0x009b
                           00009C   291 _EIE1	=	0x009c
                           00009F   292 _CHPCON	=	0x009f
                           0000A0   293 _P2	=	0x00a0
                           0000A2   294 _AUXR1	=	0x00a2
                           0000A3   295 _BODCON0	=	0x00a3
                           0000A4   296 _IAPTRG	=	0x00a4
                           0000A5   297 _IAPUEN	=	0x00a5
                           0000A6   298 _IAPAL	=	0x00a6
                           0000A7   299 _IAPAH	=	0x00a7
                           0000A8   300 _IE	=	0x00a8
                           0000A9   301 _SADDR	=	0x00a9
                           0000AA   302 _WDCON	=	0x00aa
                           0000AB   303 _BODCON1	=	0x00ab
                           0000AC   304 _P3M1	=	0x00ac
                           0000AC   305 _P3S	=	0x00ac
                           0000AD   306 _P3M2	=	0x00ad
                           0000AD   307 _P3SR	=	0x00ad
                           0000AE   308 _IAPFD	=	0x00ae
                           0000AF   309 _IAPCN	=	0x00af
                           0000B0   310 _P3	=	0x00b0
                           0000B1   311 _P0M1	=	0x00b1
                           0000B1   312 _P0S	=	0x00b1
                           0000B2   313 _P0M2	=	0x00b2
                           0000B2   314 _P0SR	=	0x00b2
                           0000B3   315 _P1M1	=	0x00b3
                           0000B3   316 _P1S	=	0x00b3
                           0000B4   317 _P1M2	=	0x00b4
                           0000B4   318 _P1SR	=	0x00b4
                           0000B5   319 _P2S	=	0x00b5
                           0000B7   320 _IPH	=	0x00b7
                           0000B7   321 _PWMINTC	=	0x00b7
                           0000B8   322 _IP	=	0x00b8
                           0000B9   323 _SADEN	=	0x00b9
                           0000BA   324 _SADEN_1	=	0x00ba
                           0000BB   325 _SADDR_1	=	0x00bb
                           0000BC   326 _I2DAT	=	0x00bc
                           0000BD   327 _I2STAT	=	0x00bd
                           0000BE   328 _I2CLK	=	0x00be
                           0000BF   329 _I2TOC	=	0x00bf
                           0000C0   330 _I2CON	=	0x00c0
                           0000C1   331 _I2ADDR	=	0x00c1
                           0000C2   332 _ADCRL	=	0x00c2
                           0000C3   333 _ADCRH	=	0x00c3
                           0000C4   334 _T3CON	=	0x00c4
                           0000C4   335 _PWM4H	=	0x00c4
                           0000C5   336 _RL3	=	0x00c5
                           0000C5   337 _PWM5H	=	0x00c5
                           0000C6   338 _RH3	=	0x00c6
                           0000C6   339 _PIOCON1	=	0x00c6
                           0000C7   340 _TA	=	0x00c7
                           0000C8   341 _T2CON	=	0x00c8
                           0000C9   342 _T2MOD	=	0x00c9
                           0000CA   343 _RCMP2L	=	0x00ca
                           0000CB   344 _RCMP2H	=	0x00cb
                           0000CC   345 _TL2	=	0x00cc
                           0000CC   346 _PWM4L	=	0x00cc
                           0000CD   347 _TH2	=	0x00cd
                           0000CD   348 _PWM5L	=	0x00cd
                           0000CE   349 _ADCMPL	=	0x00ce
                           0000CF   350 _ADCMPH	=	0x00cf
                           0000D0   351 _PSW	=	0x00d0
                           0000D1   352 _PWMPH	=	0x00d1
                           0000D2   353 _PWM0H	=	0x00d2
                           0000D3   354 _PWM1H	=	0x00d3
                           0000D4   355 _PWM2H	=	0x00d4
                           0000D5   356 _PWM3H	=	0x00d5
                           0000D6   357 _PNP	=	0x00d6
                           0000D7   358 _FBD	=	0x00d7
                           0000D8   359 _PWMCON0	=	0x00d8
                           0000D9   360 _PWMPL	=	0x00d9
                           0000DA   361 _PWM0L	=	0x00da
                           0000DB   362 _PWM1L	=	0x00db
                           0000DC   363 _PWM2L	=	0x00dc
                           0000DD   364 _PWM3L	=	0x00dd
                           0000DE   365 _PIOCON0	=	0x00de
                           0000DF   366 _PWMCON1	=	0x00df
                           0000E0   367 _ACC	=	0x00e0
                           0000E1   368 _ADCCON1	=	0x00e1
                           0000E2   369 _ADCCON2	=	0x00e2
                           0000E3   370 _ADCDLY	=	0x00e3
                           0000E4   371 _C0L	=	0x00e4
                           0000E5   372 _C0H	=	0x00e5
                           0000E6   373 _C1L	=	0x00e6
                           0000E7   374 _C1H	=	0x00e7
                           0000E8   375 _ADCCON0	=	0x00e8
                           0000E9   376 _PICON	=	0x00e9
                           0000EA   377 _PINEN	=	0x00ea
                           0000EB   378 _PIPEN	=	0x00eb
                           0000EC   379 _PIF	=	0x00ec
                           0000ED   380 _C2L	=	0x00ed
                           0000EE   381 _C2H	=	0x00ee
                           0000EF   382 _EIP	=	0x00ef
                           0000F0   383 _B	=	0x00f0
                           0000F1   384 _CAPCON3	=	0x00f1
                           0000F2   385 _CAPCON4	=	0x00f2
                           0000F3   386 _SPCR	=	0x00f3
                           0000F3   387 _SPCR2	=	0x00f3
                           0000F4   388 _SPSR	=	0x00f4
                           0000F5   389 _SPDR	=	0x00f5
                           0000F6   390 _AINDIDS	=	0x00f6
                           0000F7   391 _EIPH	=	0x00f7
                           0000F8   392 _SCON_1	=	0x00f8
                           0000F9   393 _PDTEN	=	0x00f9
                           0000FA   394 _PDTCNT	=	0x00fa
                           0000FB   395 _PMEN	=	0x00fb
                           0000FC   396 _PMD	=	0x00fc
                           0000FE   397 _EIP1	=	0x00fe
                           0000FF   398 _EIPH1	=	0x00ff
                                    399 ;--------------------------------------------------------
                                    400 ; special function bits
                                    401 ;--------------------------------------------------------
                                    402 	.area RSEG    (ABS,DATA)
      000000                        403 	.org 0x0000
                           0000FF   404 _SM0_1	=	0x00ff
                           0000FF   405 _FE_1	=	0x00ff
                           0000FE   406 _SM1_1	=	0x00fe
                           0000FD   407 _SM2_1	=	0x00fd
                           0000FC   408 _REN_1	=	0x00fc
                           0000FB   409 _TB8_1	=	0x00fb
                           0000FA   410 _RB8_1	=	0x00fa
                           0000F9   411 _TI_1	=	0x00f9
                           0000F8   412 _RI_1	=	0x00f8
                           0000EF   413 _ADCF	=	0x00ef
                           0000EE   414 _ADCS	=	0x00ee
                           0000ED   415 _ETGSEL1	=	0x00ed
                           0000EC   416 _ETGSEL0	=	0x00ec
                           0000EB   417 _ADCHS3	=	0x00eb
                           0000EA   418 _ADCHS2	=	0x00ea
                           0000E9   419 _ADCHS1	=	0x00e9
                           0000E8   420 _ADCHS0	=	0x00e8
                           0000DF   421 _PWMRUN	=	0x00df
                           0000DE   422 _LOAD	=	0x00de
                           0000DD   423 _PWMF	=	0x00dd
                           0000DC   424 _CLRPWM	=	0x00dc
                           0000D7   425 _CY	=	0x00d7
                           0000D6   426 _AC	=	0x00d6
                           0000D5   427 _F0	=	0x00d5
                           0000D4   428 _RS1	=	0x00d4
                           0000D3   429 _RS0	=	0x00d3
                           0000D2   430 _OV	=	0x00d2
                           0000D0   431 _P	=	0x00d0
                           0000CF   432 _TF2	=	0x00cf
                           0000CA   433 _TR2	=	0x00ca
                           0000C8   434 _CM_RL2	=	0x00c8
                           0000C6   435 _I2CEN	=	0x00c6
                           0000C5   436 _STA	=	0x00c5
                           0000C4   437 _STO	=	0x00c4
                           0000C3   438 _SI	=	0x00c3
                           0000C2   439 _AA	=	0x00c2
                           0000C0   440 _I2CPX	=	0x00c0
                           0000BE   441 _PADC	=	0x00be
                           0000BD   442 _PBOD	=	0x00bd
                           0000BC   443 _PS	=	0x00bc
                           0000BB   444 _PT1	=	0x00bb
                           0000BA   445 _PX1	=	0x00ba
                           0000B9   446 _PT0	=	0x00b9
                           0000B8   447 _PX0	=	0x00b8
                           0000B0   448 _P30	=	0x00b0
                           0000AF   449 _EA	=	0x00af
                           0000AE   450 _EADC	=	0x00ae
                           0000AD   451 _EBOD	=	0x00ad
                           0000AC   452 _ES	=	0x00ac
                           0000AB   453 _ET1	=	0x00ab
                           0000AA   454 _EX1	=	0x00aa
                           0000A9   455 _ET0	=	0x00a9
                           0000A8   456 _EX0	=	0x00a8
                           0000A0   457 _P20	=	0x00a0
                           00009F   458 _SM0	=	0x009f
                           00009F   459 _FE	=	0x009f
                           00009E   460 _SM1	=	0x009e
                           00009D   461 _SM2	=	0x009d
                           00009C   462 _REN	=	0x009c
                           00009B   463 _TB8	=	0x009b
                           00009A   464 _RB8	=	0x009a
                           000099   465 _TI	=	0x0099
                           000098   466 _RI	=	0x0098
                           000097   467 _P17	=	0x0097
                           000096   468 _P16	=	0x0096
                           000096   469 _TXD_1	=	0x0096
                           000095   470 _P15	=	0x0095
                           000094   471 _P14	=	0x0094
                           000094   472 _SDA	=	0x0094
                           000093   473 _P13	=	0x0093
                           000093   474 _SCL	=	0x0093
                           000092   475 _P12	=	0x0092
                           000091   476 _P11	=	0x0091
                           000090   477 _P10	=	0x0090
                           00008F   478 _TF1	=	0x008f
                           00008E   479 _TR1	=	0x008e
                           00008D   480 _TF0	=	0x008d
                           00008C   481 _TR0	=	0x008c
                           00008B   482 _IE1	=	0x008b
                           00008A   483 _IT1	=	0x008a
                           000089   484 _IE0	=	0x0089
                           000088   485 _IT0	=	0x0088
                           000087   486 _P07	=	0x0087
                           000087   487 _RXD	=	0x0087
                           000086   488 _P06	=	0x0086
                           000086   489 _TXD	=	0x0086
                           000085   490 _P05	=	0x0085
                           000084   491 _P04	=	0x0084
                           000084   492 _STADC	=	0x0084
                           000083   493 _P03	=	0x0083
                           000082   494 _P02	=	0x0082
                           000082   495 _RXD_1	=	0x0082
                           000081   496 _P01	=	0x0081
                           000081   497 _MISO	=	0x0081
                           000080   498 _P00	=	0x0080
                           000080   499 _MOSI	=	0x0080
                                    500 ;--------------------------------------------------------
                                    501 ; overlayable register banks
                                    502 ;--------------------------------------------------------
                                    503 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        504 	.ds 8
                                    505 ;--------------------------------------------------------
                                    506 ; internal ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area DSEG    (DATA)
      000008                        509 _Low::
      000008                        510 	.ds 1
      000009                        511 _High::
      000009                        512 	.ds 1
      00000A                        513 _Res::
      00000A                        514 	.ds 2
      00000C                        515 _u8Data::
      00000C                        516 	.ds 2
      00000E                        517 _checkAddress::
      00000E                        518 	.ds 1
      00000F                        519 _time::
      00000F                        520 	.ds 2
      000011                        521 _avg1::
      000011                        522 	.ds 2
      000013                        523 _thr1::
      000013                        524 	.ds 1
      000014                        525 _buf1::
      000014                        526 	.ds 2
      000016                        527 _c::
      000016                        528 	.ds 1
      000017                        529 _a::
      000017                        530 	.ds 6
                                    531 ;--------------------------------------------------------
                                    532 ; overlayable items in internal ram
                                    533 ;--------------------------------------------------------
                                    534 ;--------------------------------------------------------
                                    535 ; Stack segment in internal ram
                                    536 ;--------------------------------------------------------
                                    537 	.area SSEG
      000024                        538 __start__stack:
      000024                        539 	.ds	1
                                    540 
                                    541 ;--------------------------------------------------------
                                    542 ; indirectly addressable internal ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area ISEG    (DATA)
                                    545 ;--------------------------------------------------------
                                    546 ; absolute internal ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area IABS    (ABS,DATA)
                                    549 	.area IABS    (ABS,DATA)
                                    550 ;--------------------------------------------------------
                                    551 ; bit data
                                    552 ;--------------------------------------------------------
                                    553 	.area BSEG    (BIT)
                                    554 ;--------------------------------------------------------
                                    555 ; paged external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area PSEG    (PAG,XDATA)
                                    558 ;--------------------------------------------------------
                                    559 ; uninitialized external ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XSEG    (XDATA)
                                    562 ;--------------------------------------------------------
                                    563 ; absolute external ram data
                                    564 ;--------------------------------------------------------
                                    565 	.area XABS    (ABS,XDATA)
                                    566 ;--------------------------------------------------------
                                    567 ; initialized external ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area XISEG   (XDATA)
                                    570 	.area HOME    (CODE)
                                    571 	.area GSINIT0 (CODE)
                                    572 	.area GSINIT1 (CODE)
                                    573 	.area GSINIT2 (CODE)
                                    574 	.area GSINIT3 (CODE)
                                    575 	.area GSINIT4 (CODE)
                                    576 	.area GSINIT5 (CODE)
                                    577 	.area GSINIT  (CODE)
                                    578 	.area GSFINAL (CODE)
                                    579 	.area CSEG    (CODE)
                                    580 ;--------------------------------------------------------
                                    581 ; interrupt vector
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
      000000                        584 __interrupt_vect:
      000000 02 00 06         [24]  585 	ljmp	__sdcc_gsinit_startup
                                    586 ;--------------------------------------------------------
                                    587 ; global & static initialisations
                                    588 ;--------------------------------------------------------
                                    589 	.area HOME    (CODE)
                                    590 	.area GSINIT  (CODE)
                                    591 	.area GSFINAL (CODE)
                                    592 	.area GSINIT  (CODE)
                                    593 	.globl __sdcc_gsinit_startup
                                    594 	.globl __sdcc_program_startup
                                    595 	.globl __start__stack
                                    596 	.globl __mcs51_genXINIT
                                    597 	.globl __mcs51_genXRAMCLEAR
                                    598 	.globl __mcs51_genRAMCLEAR
                                    599 ;	main.c:15: char thr1 = 15;
      00005F 75 13 0F         [24]  600 	mov	_thr1,#0x0f
                                    601 ;	main.c:19: char a[] = "chung";
      000062 75 17 63         [24]  602 	mov	_a,#0x63
      000065 75 18 68         [24]  603 	mov	(_a + 0x0001),#0x68
      000068 75 19 75         [24]  604 	mov	(_a + 0x0002),#0x75
      00006B 75 1A 6E         [24]  605 	mov	(_a + 0x0003),#0x6e
      00006E 75 1B 67         [24]  606 	mov	(_a + 0x0004),#0x67
      000071 75 1C 00         [24]  607 	mov	(_a + 0x0005),#0x00
                                    608 	.area GSFINAL (CODE)
      000074 02 00 03         [24]  609 	ljmp	__sdcc_program_startup
                                    610 ;--------------------------------------------------------
                                    611 ; Home
                                    612 ;--------------------------------------------------------
                                    613 	.area HOME    (CODE)
                                    614 	.area HOME    (CODE)
      000003                        615 __sdcc_program_startup:
      000003 02 00 7C         [24]  616 	ljmp	_main
                                    617 ;	return from main will return to caller
                                    618 ;--------------------------------------------------------
                                    619 ; code
                                    620 ;--------------------------------------------------------
                                    621 	.area CSEG    (CODE)
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'wait'
                                    624 ;------------------------------------------------------------
                                    625 ;	main.c:21: void wait(void)
                                    626 ;	-----------------------------------------
                                    627 ;	 function wait
                                    628 ;	-----------------------------------------
      000077                        629 _wait:
                           000007   630 	ar7 = 0x07
                           000006   631 	ar6 = 0x06
                           000005   632 	ar5 = 0x05
                           000004   633 	ar4 = 0x04
                           000003   634 	ar3 = 0x03
                           000002   635 	ar2 = 0x02
                           000001   636 	ar1 = 0x01
                           000000   637 	ar0 = 0x00
                                    638 ;	main.c:23: __asm__("nop\n"); __asm__("nop\n");
      000077 00               [12]  639 	nop
      000078 00               [12]  640 	nop
                                    641 ;	main.c:24: __asm__("nop\n"); __asm__("nop\n");
      000079 00               [12]  642 	nop
      00007A 00               [12]  643 	nop
                                    644 ;	main.c:25: }
      00007B 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'main'
                                    648 ;------------------------------------------------------------
                                    649 ;	main.c:26: void main(void)
                                    650 ;	-----------------------------------------
                                    651 ;	 function main
                                    652 ;	-----------------------------------------
      00007C                        653 _main:
                                    654 ;	main.c:28: P15_PUSHPULL_MODE;
      00007C 53 B3 DF         [24]  655 	anl	_P1M1,#0xdf
      00007F 43 B4 20         [24]  656 	orl	_P1M2,#0x20
                                    657 ;	main.c:31: UART0_Init();
      000082 12 01 19         [24]  658 	lcall	_UART0_Init
                                    659 ;	main.c:34: UART0_STRING("Start:");
      000085 90 03 3A         [24]  660 	mov	dptr,#___str_0
      000088 75 F0 80         [24]  661 	mov	b,#0x80
      00008B 12 01 6A         [24]  662 	lcall	_UART0_STRING
                                    663 ;	main.c:37: while (1) {
      00008E                        664 00108$:
                                    665 ;	main.c:38: time=0;
      00008E E4               [12]  666 	clr	a
      00008F F5 0F            [12]  667 	mov	_time,a
      000091 F5 10            [12]  668 	mov	(_time + 1),a
                                    669 ;	main.c:39: P12_PUSHPULL_MODE;
      000093 53 B3 FB         [24]  670 	anl	_P1M1,#0xfb
      000096 43 B4 04         [24]  671 	orl	_P1M2,#0x04
                                    672 ;	main.c:40: P12 = 1;
                                    673 ;	assignBit
      000099 D2 92            [12]  674 	setb	_P12
                                    675 ;	main.c:41: wait();
      00009B 12 00 77         [24]  676 	lcall	_wait
                                    677 ;	main.c:42: P12_INPUT_MODE;
      00009E 43 B3 04         [24]  678 	orl	_P1M1,#0x04
      0000A1 53 B4 FB         [24]  679 	anl	_P1M2,#0xfb
                                    680 ;	main.c:43: while(P12){
      0000A4                        681 00101$:
      0000A4 30 92 0A         [24]  682 	jnb	_P12,00103$
                                    683 ;	main.c:44: time++;
      0000A7 05 0F            [12]  684 	inc	_time
      0000A9 E4               [12]  685 	clr	a
      0000AA B5 0F F7         [24]  686 	cjne	a,_time,00101$
      0000AD 05 10            [12]  687 	inc	(_time + 1)
      0000AF 80 F3            [24]  688 	sjmp	00101$
      0000B1                        689 00103$:
                                    690 ;	main.c:47: if(time > 100)
      0000B1 C3               [12]  691 	clr	c
      0000B2 74 64            [12]  692 	mov	a,#0x64
      0000B4 95 0F            [12]  693 	subb	a,_time
      0000B6 74 80            [12]  694 	mov	a,#(0x00 ^ 0x80)
      0000B8 85 10 F0         [24]  695 	mov	b,(_time + 1)
      0000BB 63 F0 80         [24]  696 	xrl	b,#0x80
      0000BE 95 F0            [12]  697 	subb	a,b
      0000C0 50 04            [24]  698 	jnc	00105$
                                    699 ;	main.c:49: P15 = 1;
                                    700 ;	assignBit
      0000C2 D2 95            [12]  701 	setb	_P15
      0000C4 80 C8            [24]  702 	sjmp	00108$
      0000C6                        703 00105$:
                                    704 ;	main.c:52: P15 = 0;
                                    705 ;	assignBit
      0000C6 C2 95            [12]  706 	clr	_P15
                                    707 ;	main.c:58: }
      0000C8 80 C4            [24]  708 	sjmp	00108$
                                    709 	.area CSEG    (CODE)
                                    710 	.area CONST   (CODE)
                                    711 	.area CONST   (CODE)
      00033A                        712 ___str_0:
      00033A 53 74 61 72 74 3A      713 	.ascii "Start:"
      000340 00                     714 	.db 0x00
                                    715 	.area CSEG    (CODE)
                                    716 	.area XINIT   (CODE)
                                    717 	.area CABS    (ABS,CODE)
