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
                                     11 	.globl _DelayT0_PARM_2
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
                                    244 	.globl _DelayT0_Init
                                    245 	.globl _DelayT0
                                    246 ;--------------------------------------------------------
                                    247 ; special function registers
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           000080   251 _P0	=	0x0080
                           000081   252 _SP	=	0x0081
                           000082   253 _DPL	=	0x0082
                           000083   254 _DPH	=	0x0083
                           000084   255 _RCTRIM0	=	0x0084
                           000085   256 _RCTRIM1	=	0x0085
                           000086   257 _RWK	=	0x0086
                           000087   258 _PCON	=	0x0087
                           000088   259 _TCON	=	0x0088
                           000089   260 _TMOD	=	0x0089
                           00008A   261 _TL0	=	0x008a
                           00008B   262 _TL1	=	0x008b
                           00008C   263 _TH0	=	0x008c
                           00008D   264 _TH1	=	0x008d
                           00008E   265 _CKCON	=	0x008e
                           00008F   266 _WKCON	=	0x008f
                           000090   267 _P1	=	0x0090
                           000091   268 _SFRS	=	0x0091
                           000092   269 _CAPCON0	=	0x0092
                           000093   270 _CAPCON1	=	0x0093
                           000094   271 _CAPCON2	=	0x0094
                           000095   272 _CKDIV	=	0x0095
                           000096   273 _CKSWT	=	0x0096
                           000097   274 _CKEN	=	0x0097
                           000098   275 _SCON	=	0x0098
                           000099   276 _SBUF	=	0x0099
                           00009A   277 _SBUF_1	=	0x009a
                           00009B   278 _EIE	=	0x009b
                           00009C   279 _EIE1	=	0x009c
                           00009F   280 _CHPCON	=	0x009f
                           0000A0   281 _P2	=	0x00a0
                           0000A2   282 _AUXR1	=	0x00a2
                           0000A3   283 _BODCON0	=	0x00a3
                           0000A4   284 _IAPTRG	=	0x00a4
                           0000A5   285 _IAPUEN	=	0x00a5
                           0000A6   286 _IAPAL	=	0x00a6
                           0000A7   287 _IAPAH	=	0x00a7
                           0000A8   288 _IE	=	0x00a8
                           0000A9   289 _SADDR	=	0x00a9
                           0000AA   290 _WDCON	=	0x00aa
                           0000AB   291 _BODCON1	=	0x00ab
                           0000AC   292 _P3M1	=	0x00ac
                           0000AC   293 _P3S	=	0x00ac
                           0000AD   294 _P3M2	=	0x00ad
                           0000AD   295 _P3SR	=	0x00ad
                           0000AE   296 _IAPFD	=	0x00ae
                           0000AF   297 _IAPCN	=	0x00af
                           0000B0   298 _P3	=	0x00b0
                           0000B1   299 _P0M1	=	0x00b1
                           0000B1   300 _P0S	=	0x00b1
                           0000B2   301 _P0M2	=	0x00b2
                           0000B2   302 _P0SR	=	0x00b2
                           0000B3   303 _P1M1	=	0x00b3
                           0000B3   304 _P1S	=	0x00b3
                           0000B4   305 _P1M2	=	0x00b4
                           0000B4   306 _P1SR	=	0x00b4
                           0000B5   307 _P2S	=	0x00b5
                           0000B7   308 _IPH	=	0x00b7
                           0000B7   309 _PWMINTC	=	0x00b7
                           0000B8   310 _IP	=	0x00b8
                           0000B9   311 _SADEN	=	0x00b9
                           0000BA   312 _SADEN_1	=	0x00ba
                           0000BB   313 _SADDR_1	=	0x00bb
                           0000BC   314 _I2DAT	=	0x00bc
                           0000BD   315 _I2STAT	=	0x00bd
                           0000BE   316 _I2CLK	=	0x00be
                           0000BF   317 _I2TOC	=	0x00bf
                           0000C0   318 _I2CON	=	0x00c0
                           0000C1   319 _I2ADDR	=	0x00c1
                           0000C2   320 _ADCRL	=	0x00c2
                           0000C3   321 _ADCRH	=	0x00c3
                           0000C4   322 _T3CON	=	0x00c4
                           0000C4   323 _PWM4H	=	0x00c4
                           0000C5   324 _RL3	=	0x00c5
                           0000C5   325 _PWM5H	=	0x00c5
                           0000C6   326 _RH3	=	0x00c6
                           0000C6   327 _PIOCON1	=	0x00c6
                           0000C7   328 _TA	=	0x00c7
                           0000C8   329 _T2CON	=	0x00c8
                           0000C9   330 _T2MOD	=	0x00c9
                           0000CA   331 _RCMP2L	=	0x00ca
                           0000CB   332 _RCMP2H	=	0x00cb
                           0000CC   333 _TL2	=	0x00cc
                           0000CC   334 _PWM4L	=	0x00cc
                           0000CD   335 _TH2	=	0x00cd
                           0000CD   336 _PWM5L	=	0x00cd
                           0000CE   337 _ADCMPL	=	0x00ce
                           0000CF   338 _ADCMPH	=	0x00cf
                           0000D0   339 _PSW	=	0x00d0
                           0000D1   340 _PWMPH	=	0x00d1
                           0000D2   341 _PWM0H	=	0x00d2
                           0000D3   342 _PWM1H	=	0x00d3
                           0000D4   343 _PWM2H	=	0x00d4
                           0000D5   344 _PWM3H	=	0x00d5
                           0000D6   345 _PNP	=	0x00d6
                           0000D7   346 _FBD	=	0x00d7
                           0000D8   347 _PWMCON0	=	0x00d8
                           0000D9   348 _PWMPL	=	0x00d9
                           0000DA   349 _PWM0L	=	0x00da
                           0000DB   350 _PWM1L	=	0x00db
                           0000DC   351 _PWM2L	=	0x00dc
                           0000DD   352 _PWM3L	=	0x00dd
                           0000DE   353 _PIOCON0	=	0x00de
                           0000DF   354 _PWMCON1	=	0x00df
                           0000E0   355 _ACC	=	0x00e0
                           0000E1   356 _ADCCON1	=	0x00e1
                           0000E2   357 _ADCCON2	=	0x00e2
                           0000E3   358 _ADCDLY	=	0x00e3
                           0000E4   359 _C0L	=	0x00e4
                           0000E5   360 _C0H	=	0x00e5
                           0000E6   361 _C1L	=	0x00e6
                           0000E7   362 _C1H	=	0x00e7
                           0000E8   363 _ADCCON0	=	0x00e8
                           0000E9   364 _PICON	=	0x00e9
                           0000EA   365 _PINEN	=	0x00ea
                           0000EB   366 _PIPEN	=	0x00eb
                           0000EC   367 _PIF	=	0x00ec
                           0000ED   368 _C2L	=	0x00ed
                           0000EE   369 _C2H	=	0x00ee
                           0000EF   370 _EIP	=	0x00ef
                           0000F0   371 _B	=	0x00f0
                           0000F1   372 _CAPCON3	=	0x00f1
                           0000F2   373 _CAPCON4	=	0x00f2
                           0000F3   374 _SPCR	=	0x00f3
                           0000F3   375 _SPCR2	=	0x00f3
                           0000F4   376 _SPSR	=	0x00f4
                           0000F5   377 _SPDR	=	0x00f5
                           0000F6   378 _AINDIDS	=	0x00f6
                           0000F7   379 _EIPH	=	0x00f7
                           0000F8   380 _SCON_1	=	0x00f8
                           0000F9   381 _PDTEN	=	0x00f9
                           0000FA   382 _PDTCNT	=	0x00fa
                           0000FB   383 _PMEN	=	0x00fb
                           0000FC   384 _PMD	=	0x00fc
                           0000FE   385 _EIP1	=	0x00fe
                           0000FF   386 _EIPH1	=	0x00ff
                                    387 ;--------------------------------------------------------
                                    388 ; special function bits
                                    389 ;--------------------------------------------------------
                                    390 	.area RSEG    (ABS,DATA)
      000000                        391 	.org 0x0000
                           0000FF   392 _SM0_1	=	0x00ff
                           0000FF   393 _FE_1	=	0x00ff
                           0000FE   394 _SM1_1	=	0x00fe
                           0000FD   395 _SM2_1	=	0x00fd
                           0000FC   396 _REN_1	=	0x00fc
                           0000FB   397 _TB8_1	=	0x00fb
                           0000FA   398 _RB8_1	=	0x00fa
                           0000F9   399 _TI_1	=	0x00f9
                           0000F8   400 _RI_1	=	0x00f8
                           0000EF   401 _ADCF	=	0x00ef
                           0000EE   402 _ADCS	=	0x00ee
                           0000ED   403 _ETGSEL1	=	0x00ed
                           0000EC   404 _ETGSEL0	=	0x00ec
                           0000EB   405 _ADCHS3	=	0x00eb
                           0000EA   406 _ADCHS2	=	0x00ea
                           0000E9   407 _ADCHS1	=	0x00e9
                           0000E8   408 _ADCHS0	=	0x00e8
                           0000DF   409 _PWMRUN	=	0x00df
                           0000DE   410 _LOAD	=	0x00de
                           0000DD   411 _PWMF	=	0x00dd
                           0000DC   412 _CLRPWM	=	0x00dc
                           0000D7   413 _CY	=	0x00d7
                           0000D6   414 _AC	=	0x00d6
                           0000D5   415 _F0	=	0x00d5
                           0000D4   416 _RS1	=	0x00d4
                           0000D3   417 _RS0	=	0x00d3
                           0000D2   418 _OV	=	0x00d2
                           0000D0   419 _P	=	0x00d0
                           0000CF   420 _TF2	=	0x00cf
                           0000CA   421 _TR2	=	0x00ca
                           0000C8   422 _CM_RL2	=	0x00c8
                           0000C6   423 _I2CEN	=	0x00c6
                           0000C5   424 _STA	=	0x00c5
                           0000C4   425 _STO	=	0x00c4
                           0000C3   426 _SI	=	0x00c3
                           0000C2   427 _AA	=	0x00c2
                           0000C0   428 _I2CPX	=	0x00c0
                           0000BE   429 _PADC	=	0x00be
                           0000BD   430 _PBOD	=	0x00bd
                           0000BC   431 _PS	=	0x00bc
                           0000BB   432 _PT1	=	0x00bb
                           0000BA   433 _PX1	=	0x00ba
                           0000B9   434 _PT0	=	0x00b9
                           0000B8   435 _PX0	=	0x00b8
                           0000B0   436 _P30	=	0x00b0
                           0000AF   437 _EA	=	0x00af
                           0000AE   438 _EADC	=	0x00ae
                           0000AD   439 _EBOD	=	0x00ad
                           0000AC   440 _ES	=	0x00ac
                           0000AB   441 _ET1	=	0x00ab
                           0000AA   442 _EX1	=	0x00aa
                           0000A9   443 _ET0	=	0x00a9
                           0000A8   444 _EX0	=	0x00a8
                           0000A0   445 _P20	=	0x00a0
                           00009F   446 _SM0	=	0x009f
                           00009F   447 _FE	=	0x009f
                           00009E   448 _SM1	=	0x009e
                           00009D   449 _SM2	=	0x009d
                           00009C   450 _REN	=	0x009c
                           00009B   451 _TB8	=	0x009b
                           00009A   452 _RB8	=	0x009a
                           000099   453 _TI	=	0x0099
                           000098   454 _RI	=	0x0098
                           000097   455 _P17	=	0x0097
                           000096   456 _P16	=	0x0096
                           000096   457 _TXD_1	=	0x0096
                           000095   458 _P15	=	0x0095
                           000094   459 _P14	=	0x0094
                           000094   460 _SDA	=	0x0094
                           000093   461 _P13	=	0x0093
                           000093   462 _SCL	=	0x0093
                           000092   463 _P12	=	0x0092
                           000091   464 _P11	=	0x0091
                           000090   465 _P10	=	0x0090
                           00008F   466 _TF1	=	0x008f
                           00008E   467 _TR1	=	0x008e
                           00008D   468 _TF0	=	0x008d
                           00008C   469 _TR0	=	0x008c
                           00008B   470 _IE1	=	0x008b
                           00008A   471 _IT1	=	0x008a
                           000089   472 _IE0	=	0x0089
                           000088   473 _IT0	=	0x0088
                           000087   474 _P07	=	0x0087
                           000087   475 _RXD	=	0x0087
                           000086   476 _P06	=	0x0086
                           000086   477 _TXD	=	0x0086
                           000085   478 _P05	=	0x0085
                           000084   479 _P04	=	0x0084
                           000084   480 _STADC	=	0x0084
                           000083   481 _P03	=	0x0083
                           000082   482 _P02	=	0x0082
                           000082   483 _RXD_1	=	0x0082
                           000081   484 _P01	=	0x0081
                           000081   485 _MISO	=	0x0081
                           000080   486 _P00	=	0x0080
                           000080   487 _MOSI	=	0x0080
                                    488 ;--------------------------------------------------------
                                    489 ; overlayable register banks
                                    490 ;--------------------------------------------------------
                                    491 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        492 	.ds 8
                                    493 ;--------------------------------------------------------
                                    494 ; internal ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area DSEG    (DATA)
                                    497 ;--------------------------------------------------------
                                    498 ; overlayable items in internal ram
                                    499 ;--------------------------------------------------------
                                    500 	.area	OSEG    (OVR,DATA)
      000008                        501 _DelayT0_PARM_2:
      000008                        502 	.ds 2
                                    503 ;--------------------------------------------------------
                                    504 ; indirectly addressable internal ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area ISEG    (DATA)
                                    507 ;--------------------------------------------------------
                                    508 ; absolute internal ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area IABS    (ABS,DATA)
                                    511 	.area IABS    (ABS,DATA)
                                    512 ;--------------------------------------------------------
                                    513 ; bit data
                                    514 ;--------------------------------------------------------
                                    515 	.area BSEG    (BIT)
                                    516 ;--------------------------------------------------------
                                    517 ; paged external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area PSEG    (PAG,XDATA)
                                    520 ;--------------------------------------------------------
                                    521 ; uninitialized external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XSEG    (XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; absolute external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XABS    (ABS,XDATA)
                                    528 ;--------------------------------------------------------
                                    529 ; initialized external ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area XISEG   (XDATA)
                                    532 	.area HOME    (CODE)
                                    533 	.area GSINIT0 (CODE)
                                    534 	.area GSINIT1 (CODE)
                                    535 	.area GSINIT2 (CODE)
                                    536 	.area GSINIT3 (CODE)
                                    537 	.area GSINIT4 (CODE)
                                    538 	.area GSINIT5 (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area CSEG    (CODE)
                                    542 ;--------------------------------------------------------
                                    543 ; global & static initialisations
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; Home
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area HOME    (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; code
                                    556 ;--------------------------------------------------------
                                    557 	.area CSEG    (CODE)
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'DelayT0_Init'
                                    560 ;------------------------------------------------------------
                                    561 ;	lib/src/delay.c:4: void DelayT0_Init(void)
                                    562 ;	-----------------------------------------
                                    563 ;	 function DelayT0_Init
                                    564 ;	-----------------------------------------
      0000C0                        565 _DelayT0_Init:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
                                    574 ;	lib/src/delay.c:6: TIMER0_FSYS;		 // T0M=1, Timer0 Clock = Fsys = 16MHz
      0000C0 43 8E 08         [24]  575 	orl	_CKCON,#0x08
                                    576 ;	lib/src/delay.c:7: ENABLE_TIMER0_MODE1; // Timer0 is 16-bit mode
      0000C3 53 89 F7         [24]  577 	anl	_TMOD,#0xf7
      0000C6 53 89 FB         [24]  578 	anl	_TMOD,#0xfb
      0000C9 53 89 FD         [24]  579 	anl	_TMOD,#0xfd
      0000CC 43 89 01         [24]  580 	orl	_TMOD,#0x01
                                    581 ;	lib/src/delay.c:8: }
      0000CF 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'DelayT0'
                                    585 ;------------------------------------------------------------
                                    586 ;configdelay               Allocated with name '_DelayT0_PARM_2'
                                    587 ;u16Count                  Allocated to registers 
                                    588 ;TL0TMP                    Allocated to registers r5 
                                    589 ;TH0TMP                    Allocated to registers r4 
                                    590 ;------------------------------------------------------------
                                    591 ;	lib/src/delay.c:18: void DelayT0(uint16_t u16Count, CONFIG configdelay)
                                    592 ;	-----------------------------------------
                                    593 ;	 function DelayT0
                                    594 ;	-----------------------------------------
      0000D0                        595 _DelayT0:
      0000D0 AE 82            [24]  596 	mov	r6,dpl
      0000D2 AF 83            [24]  597 	mov	r7,dph
                                    598 ;	lib/src/delay.c:21: TL0TMP = LOBYTE(65535 - (16 * configdelay));
      0000D4 E5 08            [12]  599 	mov	a,_DelayT0_PARM_2
      0000D6 C4               [12]  600 	swap	a
      0000D7 54 F0            [12]  601 	anl	a,#0xf0
      0000D9 FD               [12]  602 	mov	r5,a
      0000DA 74 FF            [12]  603 	mov	a,#0xff
      0000DC C3               [12]  604 	clr	c
      0000DD 9D               [12]  605 	subb	a,r5
      0000DE FD               [12]  606 	mov	r5,a
                                    607 ;	lib/src/delay.c:22: TH0TMP = HIBYTE(65535 - (16 * configdelay));
      0000DF AB 08            [24]  608 	mov	r3,_DelayT0_PARM_2
      0000E1 E5 09            [12]  609 	mov	a,(_DelayT0_PARM_2 + 1)
      0000E3 C4               [12]  610 	swap	a
      0000E4 54 F0            [12]  611 	anl	a,#0xf0
      0000E6 CB               [12]  612 	xch	a,r3
      0000E7 C4               [12]  613 	swap	a
      0000E8 CB               [12]  614 	xch	a,r3
      0000E9 6B               [12]  615 	xrl	a,r3
      0000EA CB               [12]  616 	xch	a,r3
      0000EB 54 F0            [12]  617 	anl	a,#0xf0
      0000ED CB               [12]  618 	xch	a,r3
      0000EE 6B               [12]  619 	xrl	a,r3
      0000EF FC               [12]  620 	mov	r4,a
      0000F0 8B 01            [24]  621 	mov	ar1,r3
      0000F2 8C 02            [24]  622 	mov	ar2,r4
      0000F4 E4               [12]  623 	clr	a
      0000F5 FB               [12]  624 	mov	r3,a
      0000F6 FC               [12]  625 	mov	r4,a
      0000F7 74 FF            [12]  626 	mov	a,#0xff
      0000F9 C3               [12]  627 	clr	c
      0000FA 99               [12]  628 	subb	a,r1
      0000FB 74 FF            [12]  629 	mov	a,#0xff
      0000FD 9A               [12]  630 	subb	a,r2
      0000FE FA               [12]  631 	mov	r2,a
      0000FF E4               [12]  632 	clr	a
      000100 9B               [12]  633 	subb	a,r3
      000101 E4               [12]  634 	clr	a
      000102 9C               [12]  635 	subb	a,r4
      000103 8A 04            [24]  636 	mov	ar4,r2
                                    637 ;	lib/src/delay.c:23: while (u16Count)
      000105                        638 00104$:
      000105 EE               [12]  639 	mov	a,r6
      000106 4F               [12]  640 	orl	a,r7
      000107 60 14            [24]  641 	jz	00107$
                                    642 ;	lib/src/delay.c:25: TL0 = TL0TMP;
      000109 8D 8A            [24]  643 	mov	_TL0,r5
                                    644 ;	lib/src/delay.c:26: TH0 = TH0TMP;
      00010B 8C 8C            [24]  645 	mov	_TH0,r4
                                    646 ;	lib/src/delay.c:27: set_TCON_TR0; // Start Timer0
                                    647 ;	assignBit
      00010D D2 8C            [12]  648 	setb	_TR0
                                    649 ;	lib/src/delay.c:28: while (!TF0); // Check Timer0 Time-Out Flag
      00010F                        650 00101$:
                                    651 ;	lib/src/delay.c:29: clr_TCON_TF0;
                                    652 ;	assignBit
      00010F 10 8D 02         [24]  653 	jbc	_TF0,00127$
      000112 80 FB            [24]  654 	sjmp	00101$
      000114                        655 00127$:
                                    656 ;	lib/src/delay.c:30: clr_TCON_TR0; // Stop Timer0
                                    657 ;	assignBit
      000114 C2 8C            [12]  658 	clr	_TR0
                                    659 ;	lib/src/delay.c:31: --u16Count;
      000116 1E               [12]  660 	dec	r6
      000117 BE FF 01         [24]  661 	cjne	r6,#0xff,00128$
      00011A 1F               [12]  662 	dec	r7
      00011B                        663 00128$:
      00011B 80 E8            [24]  664 	sjmp	00104$
      00011D                        665 00107$:
                                    666 ;	lib/src/delay.c:33: }
      00011D 22               [24]  667 	ret
                                    668 	.area CSEG    (CODE)
                                    669 	.area CONST   (CODE)
                                    670 	.area XINIT   (CODE)
                                    671 	.area CABS    (ABS,CODE)
