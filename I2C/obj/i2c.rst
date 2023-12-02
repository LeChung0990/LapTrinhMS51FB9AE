                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
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
                                    243 	.globl _I2C_Read_PARM_3
                                    244 	.globl _I2C_Read_PARM_2
                                    245 	.globl _I2C_Write_PARM_3
                                    246 	.globl _I2C_Write_PARM_2
                                    247 	.globl _I2C_Init
                                    248 	.globl _I2C_Write
                                    249 	.globl _I2C_Read
                                    250 	.globl _I2C_CheckAddress
                                    251 ;--------------------------------------------------------
                                    252 ; special function registers
                                    253 ;--------------------------------------------------------
                                    254 	.area RSEG    (ABS,DATA)
      000000                        255 	.org 0x0000
                           000080   256 _P0	=	0x0080
                           000081   257 _SP	=	0x0081
                           000082   258 _DPL	=	0x0082
                           000083   259 _DPH	=	0x0083
                           000084   260 _RCTRIM0	=	0x0084
                           000085   261 _RCTRIM1	=	0x0085
                           000086   262 _RWK	=	0x0086
                           000087   263 _PCON	=	0x0087
                           000088   264 _TCON	=	0x0088
                           000089   265 _TMOD	=	0x0089
                           00008A   266 _TL0	=	0x008a
                           00008B   267 _TL1	=	0x008b
                           00008C   268 _TH0	=	0x008c
                           00008D   269 _TH1	=	0x008d
                           00008E   270 _CKCON	=	0x008e
                           00008F   271 _WKCON	=	0x008f
                           000090   272 _P1	=	0x0090
                           000091   273 _SFRS	=	0x0091
                           000092   274 _CAPCON0	=	0x0092
                           000093   275 _CAPCON1	=	0x0093
                           000094   276 _CAPCON2	=	0x0094
                           000095   277 _CKDIV	=	0x0095
                           000096   278 _CKSWT	=	0x0096
                           000097   279 _CKEN	=	0x0097
                           000098   280 _SCON	=	0x0098
                           000099   281 _SBUF	=	0x0099
                           00009A   282 _SBUF_1	=	0x009a
                           00009B   283 _EIE	=	0x009b
                           00009C   284 _EIE1	=	0x009c
                           00009F   285 _CHPCON	=	0x009f
                           0000A0   286 _P2	=	0x00a0
                           0000A2   287 _AUXR1	=	0x00a2
                           0000A3   288 _BODCON0	=	0x00a3
                           0000A4   289 _IAPTRG	=	0x00a4
                           0000A5   290 _IAPUEN	=	0x00a5
                           0000A6   291 _IAPAL	=	0x00a6
                           0000A7   292 _IAPAH	=	0x00a7
                           0000A8   293 _IE	=	0x00a8
                           0000A9   294 _SADDR	=	0x00a9
                           0000AA   295 _WDCON	=	0x00aa
                           0000AB   296 _BODCON1	=	0x00ab
                           0000AC   297 _P3M1	=	0x00ac
                           0000AC   298 _P3S	=	0x00ac
                           0000AD   299 _P3M2	=	0x00ad
                           0000AD   300 _P3SR	=	0x00ad
                           0000AE   301 _IAPFD	=	0x00ae
                           0000AF   302 _IAPCN	=	0x00af
                           0000B0   303 _P3	=	0x00b0
                           0000B1   304 _P0M1	=	0x00b1
                           0000B1   305 _P0S	=	0x00b1
                           0000B2   306 _P0M2	=	0x00b2
                           0000B2   307 _P0SR	=	0x00b2
                           0000B3   308 _P1M1	=	0x00b3
                           0000B3   309 _P1S	=	0x00b3
                           0000B4   310 _P1M2	=	0x00b4
                           0000B4   311 _P1SR	=	0x00b4
                           0000B5   312 _P2S	=	0x00b5
                           0000B7   313 _IPH	=	0x00b7
                           0000B7   314 _PWMINTC	=	0x00b7
                           0000B8   315 _IP	=	0x00b8
                           0000B9   316 _SADEN	=	0x00b9
                           0000BA   317 _SADEN_1	=	0x00ba
                           0000BB   318 _SADDR_1	=	0x00bb
                           0000BC   319 _I2DAT	=	0x00bc
                           0000BD   320 _I2STAT	=	0x00bd
                           0000BE   321 _I2CLK	=	0x00be
                           0000BF   322 _I2TOC	=	0x00bf
                           0000C0   323 _I2CON	=	0x00c0
                           0000C1   324 _I2ADDR	=	0x00c1
                           0000C2   325 _ADCRL	=	0x00c2
                           0000C3   326 _ADCRH	=	0x00c3
                           0000C4   327 _T3CON	=	0x00c4
                           0000C4   328 _PWM4H	=	0x00c4
                           0000C5   329 _RL3	=	0x00c5
                           0000C5   330 _PWM5H	=	0x00c5
                           0000C6   331 _RH3	=	0x00c6
                           0000C6   332 _PIOCON1	=	0x00c6
                           0000C7   333 _TA	=	0x00c7
                           0000C8   334 _T2CON	=	0x00c8
                           0000C9   335 _T2MOD	=	0x00c9
                           0000CA   336 _RCMP2L	=	0x00ca
                           0000CB   337 _RCMP2H	=	0x00cb
                           0000CC   338 _TL2	=	0x00cc
                           0000CC   339 _PWM4L	=	0x00cc
                           0000CD   340 _TH2	=	0x00cd
                           0000CD   341 _PWM5L	=	0x00cd
                           0000CE   342 _ADCMPL	=	0x00ce
                           0000CF   343 _ADCMPH	=	0x00cf
                           0000D0   344 _PSW	=	0x00d0
                           0000D1   345 _PWMPH	=	0x00d1
                           0000D2   346 _PWM0H	=	0x00d2
                           0000D3   347 _PWM1H	=	0x00d3
                           0000D4   348 _PWM2H	=	0x00d4
                           0000D5   349 _PWM3H	=	0x00d5
                           0000D6   350 _PNP	=	0x00d6
                           0000D7   351 _FBD	=	0x00d7
                           0000D8   352 _PWMCON0	=	0x00d8
                           0000D9   353 _PWMPL	=	0x00d9
                           0000DA   354 _PWM0L	=	0x00da
                           0000DB   355 _PWM1L	=	0x00db
                           0000DC   356 _PWM2L	=	0x00dc
                           0000DD   357 _PWM3L	=	0x00dd
                           0000DE   358 _PIOCON0	=	0x00de
                           0000DF   359 _PWMCON1	=	0x00df
                           0000E0   360 _ACC	=	0x00e0
                           0000E1   361 _ADCCON1	=	0x00e1
                           0000E2   362 _ADCCON2	=	0x00e2
                           0000E3   363 _ADCDLY	=	0x00e3
                           0000E4   364 _C0L	=	0x00e4
                           0000E5   365 _C0H	=	0x00e5
                           0000E6   366 _C1L	=	0x00e6
                           0000E7   367 _C1H	=	0x00e7
                           0000E8   368 _ADCCON0	=	0x00e8
                           0000E9   369 _PICON	=	0x00e9
                           0000EA   370 _PINEN	=	0x00ea
                           0000EB   371 _PIPEN	=	0x00eb
                           0000EC   372 _PIF	=	0x00ec
                           0000ED   373 _C2L	=	0x00ed
                           0000EE   374 _C2H	=	0x00ee
                           0000EF   375 _EIP	=	0x00ef
                           0000F0   376 _B	=	0x00f0
                           0000F1   377 _CAPCON3	=	0x00f1
                           0000F2   378 _CAPCON4	=	0x00f2
                           0000F3   379 _SPCR	=	0x00f3
                           0000F3   380 _SPCR2	=	0x00f3
                           0000F4   381 _SPSR	=	0x00f4
                           0000F5   382 _SPDR	=	0x00f5
                           0000F6   383 _AINDIDS	=	0x00f6
                           0000F7   384 _EIPH	=	0x00f7
                           0000F8   385 _SCON_1	=	0x00f8
                           0000F9   386 _PDTEN	=	0x00f9
                           0000FA   387 _PDTCNT	=	0x00fa
                           0000FB   388 _PMEN	=	0x00fb
                           0000FC   389 _PMD	=	0x00fc
                           0000FE   390 _EIP1	=	0x00fe
                           0000FF   391 _EIPH1	=	0x00ff
                                    392 ;--------------------------------------------------------
                                    393 ; special function bits
                                    394 ;--------------------------------------------------------
                                    395 	.area RSEG    (ABS,DATA)
      000000                        396 	.org 0x0000
                           0000FF   397 _SM0_1	=	0x00ff
                           0000FF   398 _FE_1	=	0x00ff
                           0000FE   399 _SM1_1	=	0x00fe
                           0000FD   400 _SM2_1	=	0x00fd
                           0000FC   401 _REN_1	=	0x00fc
                           0000FB   402 _TB8_1	=	0x00fb
                           0000FA   403 _RB8_1	=	0x00fa
                           0000F9   404 _TI_1	=	0x00f9
                           0000F8   405 _RI_1	=	0x00f8
                           0000EF   406 _ADCF	=	0x00ef
                           0000EE   407 _ADCS	=	0x00ee
                           0000ED   408 _ETGSEL1	=	0x00ed
                           0000EC   409 _ETGSEL0	=	0x00ec
                           0000EB   410 _ADCHS3	=	0x00eb
                           0000EA   411 _ADCHS2	=	0x00ea
                           0000E9   412 _ADCHS1	=	0x00e9
                           0000E8   413 _ADCHS0	=	0x00e8
                           0000DF   414 _PWMRUN	=	0x00df
                           0000DE   415 _LOAD	=	0x00de
                           0000DD   416 _PWMF	=	0x00dd
                           0000DC   417 _CLRPWM	=	0x00dc
                           0000D7   418 _CY	=	0x00d7
                           0000D6   419 _AC	=	0x00d6
                           0000D5   420 _F0	=	0x00d5
                           0000D4   421 _RS1	=	0x00d4
                           0000D3   422 _RS0	=	0x00d3
                           0000D2   423 _OV	=	0x00d2
                           0000D0   424 _P	=	0x00d0
                           0000CF   425 _TF2	=	0x00cf
                           0000CA   426 _TR2	=	0x00ca
                           0000C8   427 _CM_RL2	=	0x00c8
                           0000C6   428 _I2CEN	=	0x00c6
                           0000C5   429 _STA	=	0x00c5
                           0000C4   430 _STO	=	0x00c4
                           0000C3   431 _SI	=	0x00c3
                           0000C2   432 _AA	=	0x00c2
                           0000C0   433 _I2CPX	=	0x00c0
                           0000BE   434 _PADC	=	0x00be
                           0000BD   435 _PBOD	=	0x00bd
                           0000BC   436 _PS	=	0x00bc
                           0000BB   437 _PT1	=	0x00bb
                           0000BA   438 _PX1	=	0x00ba
                           0000B9   439 _PT0	=	0x00b9
                           0000B8   440 _PX0	=	0x00b8
                           0000B0   441 _P30	=	0x00b0
                           0000AF   442 _EA	=	0x00af
                           0000AE   443 _EADC	=	0x00ae
                           0000AD   444 _EBOD	=	0x00ad
                           0000AC   445 _ES	=	0x00ac
                           0000AB   446 _ET1	=	0x00ab
                           0000AA   447 _EX1	=	0x00aa
                           0000A9   448 _ET0	=	0x00a9
                           0000A8   449 _EX0	=	0x00a8
                           0000A0   450 _P20	=	0x00a0
                           00009F   451 _SM0	=	0x009f
                           00009F   452 _FE	=	0x009f
                           00009E   453 _SM1	=	0x009e
                           00009D   454 _SM2	=	0x009d
                           00009C   455 _REN	=	0x009c
                           00009B   456 _TB8	=	0x009b
                           00009A   457 _RB8	=	0x009a
                           000099   458 _TI	=	0x0099
                           000098   459 _RI	=	0x0098
                           000097   460 _P17	=	0x0097
                           000096   461 _P16	=	0x0096
                           000096   462 _TXD_1	=	0x0096
                           000095   463 _P15	=	0x0095
                           000094   464 _P14	=	0x0094
                           000094   465 _SDA	=	0x0094
                           000093   466 _P13	=	0x0093
                           000093   467 _SCL	=	0x0093
                           000092   468 _P12	=	0x0092
                           000091   469 _P11	=	0x0091
                           000090   470 _P10	=	0x0090
                           00008F   471 _TF1	=	0x008f
                           00008E   472 _TR1	=	0x008e
                           00008D   473 _TF0	=	0x008d
                           00008C   474 _TR0	=	0x008c
                           00008B   475 _IE1	=	0x008b
                           00008A   476 _IT1	=	0x008a
                           000089   477 _IE0	=	0x0089
                           000088   478 _IT0	=	0x0088
                           000087   479 _P07	=	0x0087
                           000087   480 _RXD	=	0x0087
                           000086   481 _P06	=	0x0086
                           000086   482 _TXD	=	0x0086
                           000085   483 _P05	=	0x0085
                           000084   484 _P04	=	0x0084
                           000084   485 _STADC	=	0x0084
                           000083   486 _P03	=	0x0083
                           000082   487 _P02	=	0x0082
                           000082   488 _RXD_1	=	0x0082
                           000081   489 _P01	=	0x0081
                           000081   490 _MISO	=	0x0081
                           000080   491 _P00	=	0x0080
                           000080   492 _MOSI	=	0x0080
                                    493 ;--------------------------------------------------------
                                    494 ; overlayable register banks
                                    495 ;--------------------------------------------------------
                                    496 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        497 	.ds 8
                                    498 ;--------------------------------------------------------
                                    499 ; internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area DSEG    (DATA)
      00000E                        502 _I2C_Write_PARM_2:
      00000E                        503 	.ds 3
      000011                        504 _I2C_Write_PARM_3:
      000011                        505 	.ds 1
      000012                        506 _I2C_Read_PARM_2:
      000012                        507 	.ds 3
      000015                        508 _I2C_Read_PARM_3:
      000015                        509 	.ds 1
                                    510 ;--------------------------------------------------------
                                    511 ; overlayable items in internal ram
                                    512 ;--------------------------------------------------------
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
      000000                        527 _send_stop_sloc0_1_0:
      000000                        528 	.ds 1
                                    529 ;--------------------------------------------------------
                                    530 ; paged external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area PSEG    (PAG,XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; uninitialized external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XSEG    (XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; absolute external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XABS    (ABS,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; initialized external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XISEG   (XDATA)
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT0 (CODE)
                                    547 	.area GSINIT1 (CODE)
                                    548 	.area GSINIT2 (CODE)
                                    549 	.area GSINIT3 (CODE)
                                    550 	.area GSINIT4 (CODE)
                                    551 	.area GSINIT5 (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 	.area GSFINAL (CODE)
                                    554 	.area CSEG    (CODE)
                                    555 ;--------------------------------------------------------
                                    556 ; global & static initialisations
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; Home
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area HOME    (CODE)
                                    567 ;--------------------------------------------------------
                                    568 ; code
                                    569 ;--------------------------------------------------------
                                    570 	.area CSEG    (CODE)
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'I2C_Init'
                                    573 ;------------------------------------------------------------
                                    574 ;	lib/src/i2c.c:7: void I2C_Init(void)
                                    575 ;	-----------------------------------------
                                    576 ;	 function I2C_Init
                                    577 ;	-----------------------------------------
      0000AF                        578 _I2C_Init:
                           000007   579 	ar7 = 0x07
                           000006   580 	ar6 = 0x06
                           000005   581 	ar5 = 0x05
                           000004   582 	ar4 = 0x04
                           000003   583 	ar3 = 0x03
                           000002   584 	ar2 = 0x02
                           000001   585 	ar1 = 0x01
                           000000   586 	ar0 = 0x00
                                    587 ;	lib/src/i2c.c:9: I2CLK = 39;
      0000AF 75 BE 27         [24]  588 	mov	_I2CLK,#0x27
                                    589 ;	lib/src/i2c.c:12: P1M1 &= ~(1 << 3);
      0000B2 53 B3 F7         [24]  590 	anl	_P1M1,#0xf7
                                    591 ;	lib/src/i2c.c:13: P1M2 &= ~(1 << 3);
      0000B5 53 B4 F7         [24]  592 	anl	_P1M2,#0xf7
                                    593 ;	lib/src/i2c.c:16: P1M1 &= ~(1 << 4);
      0000B8 53 B3 EF         [24]  594 	anl	_P1M1,#0xef
                                    595 ;	lib/src/i2c.c:17: P1M2 &= ~(1 << 4);
      0000BB 53 B4 EF         [24]  596 	anl	_P1M2,#0xef
                                    597 ;	lib/src/i2c.c:19: P13=1;
                                    598 ;	assignBit
      0000BE D2 93            [12]  599 	setb	_P13
                                    600 ;	lib/src/i2c.c:20: P14=1;
                                    601 ;	assignBit
      0000C0 D2 94            [12]  602 	setb	_P14
                                    603 ;	lib/src/i2c.c:22: I2CEN=1;
                                    604 ;	assignBit
      0000C2 D2 C6            [12]  605 	setb	_I2CEN
                                    606 ;	lib/src/i2c.c:23: }
      0000C4 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'I2C_Write'
                                    610 ;------------------------------------------------------------
                                    611 ;pData                     Allocated with name '_I2C_Write_PARM_2'
                                    612 ;length                    Allocated with name '_I2C_Write_PARM_3'
                                    613 ;Address                   Allocated to registers r7 
                                    614 ;i                         Allocated to registers r7 
                                    615 ;t                         Allocated to registers r4 r5 
                                    616 ;u8TimeOut                 Allocated to registers r7 
                                    617 ;------------------------------------------------------------
                                    618 ;	lib/src/i2c.c:25: uint8_t I2C_Write(uint8_t Address, uint8_t *pData, uint8_t length)
                                    619 ;	-----------------------------------------
                                    620 ;	 function I2C_Write
                                    621 ;	-----------------------------------------
      0000C5                        622 _I2C_Write:
      0000C5 AF 82            [24]  623 	mov	r7,dpl
                                    624 ;	lib/src/i2c.c:31: if (I2STAT != 0xF8) {
      0000C7 74 F8            [12]  625 	mov	a,#0xf8
      0000C9 B5 BD 02         [24]  626 	cjne	a,_I2STAT,00232$
      0000CC 80 04            [24]  627 	sjmp	00102$
      0000CE                        628 00232$:
                                    629 ;	lib/src/i2c.c:32: return 0;
      0000CE 75 82 00         [24]  630 	mov	dpl,#0x00
      0000D1 22               [24]  631 	ret
      0000D2                        632 00102$:
                                    633 ;	lib/src/i2c.c:36: STO = 0;
                                    634 ;	assignBit
      0000D2 C2 C4            [12]  635 	clr	_STO
                                    636 ;	lib/src/i2c.c:37: STA = 1;
                                    637 ;	assignBit
      0000D4 D2 C5            [12]  638 	setb	_STA
                                    639 ;	lib/src/i2c.c:38: SI = 0;
                                    640 ;	assignBit
      0000D6 C2 C3            [12]  641 	clr	_SI
                                    642 ;	lib/src/i2c.c:40: u8TimeOut = 0;
      0000D8 7E 00            [12]  643 	mov	r6,#0x00
                                    644 ;	lib/src/i2c.c:42: while (1) {
      0000DA 7C 01            [12]  645 	mov	r4,#0x01
      0000DC 7D 00            [12]  646 	mov	r5,#0x00
      0000DE                        647 00108$:
                                    648 ;	lib/src/i2c.c:43: if (SI) {
      0000DE 20 C3 0F         [24]  649 	jb	_SI,00109$
                                    650 ;	lib/src/i2c.c:46: if (!t) {
      0000E1 EC               [12]  651 	mov	a,r4
      0000E2 4D               [12]  652 	orl	a,r5
      0000E3 70 04            [24]  653 	jnz	00106$
                                    654 ;	lib/src/i2c.c:47: u8TimeOut = 1;
      0000E5 7E 01            [12]  655 	mov	r6,#0x01
                                    656 ;	lib/src/i2c.c:48: break;
      0000E7 80 07            [24]  657 	sjmp	00109$
      0000E9                        658 00106$:
                                    659 ;	lib/src/i2c.c:50: ++t;
      0000E9 0C               [12]  660 	inc	r4
      0000EA BC 00 F1         [24]  661 	cjne	r4,#0x00,00108$
      0000ED 0D               [12]  662 	inc	r5
      0000EE 80 EE            [24]  663 	sjmp	00108$
      0000F0                        664 00109$:
                                    665 ;	lib/src/i2c.c:53: if (u8TimeOut) {
      0000F0 EE               [12]  666 	mov	a,r6
      0000F1 60 07            [24]  667 	jz	00111$
                                    668 ;	lib/src/i2c.c:55: send_stop();
      0000F3 12 03 81         [24]  669 	lcall	_send_stop
                                    670 ;	lib/src/i2c.c:56: return 0;
      0000F6 75 82 00         [24]  671 	mov	dpl,#0x00
      0000F9 22               [24]  672 	ret
      0000FA                        673 00111$:
                                    674 ;	lib/src/i2c.c:59: if (I2STAT != 0x08) {
      0000FA 74 08            [12]  675 	mov	a,#0x08
      0000FC B5 BD 02         [24]  676 	cjne	a,_I2STAT,00237$
      0000FF 80 07            [24]  677 	sjmp	00113$
      000101                        678 00237$:
                                    679 ;	lib/src/i2c.c:61: send_stop();
      000101 12 03 81         [24]  680 	lcall	_send_stop
                                    681 ;	lib/src/i2c.c:62: return 0;
      000104 75 82 00         [24]  682 	mov	dpl,#0x00
      000107 22               [24]  683 	ret
      000108                        684 00113$:
                                    685 ;	lib/src/i2c.c:66: STA = 0;
                                    686 ;	assignBit
      000108 C2 C5            [12]  687 	clr	_STA
                                    688 ;	lib/src/i2c.c:67: STO = 0;
                                    689 ;	assignBit
      00010A C2 C4            [12]  690 	clr	_STO
                                    691 ;	lib/src/i2c.c:68: I2DAT = Address;
      00010C 8F BC            [24]  692 	mov	_I2DAT,r7
                                    693 ;	lib/src/i2c.c:69: SI = 0;
                                    694 ;	assignBit
      00010E C2 C3            [12]  695 	clr	_SI
                                    696 ;	lib/src/i2c.c:71: u8TimeOut = 0;
      000110 7F 00            [12]  697 	mov	r7,#0x00
                                    698 ;	lib/src/i2c.c:72: while (1) {
      000112 7D 01            [12]  699 	mov	r5,#0x01
      000114 7E 00            [12]  700 	mov	r6,#0x00
      000116                        701 00119$:
                                    702 ;	lib/src/i2c.c:73: if (SI) {
      000116 20 C3 0F         [24]  703 	jb	_SI,00120$
                                    704 ;	lib/src/i2c.c:76: if (!t) {
      000119 ED               [12]  705 	mov	a,r5
      00011A 4E               [12]  706 	orl	a,r6
      00011B 70 04            [24]  707 	jnz	00117$
                                    708 ;	lib/src/i2c.c:77: u8TimeOut = 1;
      00011D 7F 01            [12]  709 	mov	r7,#0x01
                                    710 ;	lib/src/i2c.c:78: break;
      00011F 80 07            [24]  711 	sjmp	00120$
      000121                        712 00117$:
                                    713 ;	lib/src/i2c.c:80: ++t;
      000121 0D               [12]  714 	inc	r5
      000122 BD 00 F1         [24]  715 	cjne	r5,#0x00,00119$
      000125 0E               [12]  716 	inc	r6
      000126 80 EE            [24]  717 	sjmp	00119$
      000128                        718 00120$:
                                    719 ;	lib/src/i2c.c:83: if (u8TimeOut) {
      000128 EF               [12]  720 	mov	a,r7
      000129 60 07            [24]  721 	jz	00122$
                                    722 ;	lib/src/i2c.c:85: send_stop();
      00012B 12 03 81         [24]  723 	lcall	_send_stop
                                    724 ;	lib/src/i2c.c:86: return 0;
      00012E 75 82 00         [24]  725 	mov	dpl,#0x00
      000131 22               [24]  726 	ret
      000132                        727 00122$:
                                    728 ;	lib/src/i2c.c:89: if (I2STAT != 0x18) {
      000132 74 18            [12]  729 	mov	a,#0x18
      000134 B5 BD 02         [24]  730 	cjne	a,_I2STAT,00242$
      000137 80 07            [24]  731 	sjmp	00159$
      000139                        732 00242$:
                                    733 ;	lib/src/i2c.c:91: send_stop();
      000139 12 03 81         [24]  734 	lcall	_send_stop
                                    735 ;	lib/src/i2c.c:92: return 0;
      00013C 75 82 00         [24]  736 	mov	dpl,#0x00
                                    737 ;	lib/src/i2c.c:96: for (i = 0; i < length; ++i) {
      00013F 22               [24]  738 	ret
      000140                        739 00159$:
      000140 7F 00            [12]  740 	mov	r7,#0x00
      000142                        741 00138$:
      000142 C3               [12]  742 	clr	c
      000143 EF               [12]  743 	mov	a,r7
      000144 95 11            [12]  744 	subb	a,_I2C_Write_PARM_3
      000146 50 4A            [24]  745 	jnc	00136$
                                    746 ;	lib/src/i2c.c:97: I2DAT = pData[i];
      000148 EF               [12]  747 	mov	a,r7
      000149 25 0E            [12]  748 	add	a,_I2C_Write_PARM_2
      00014B FC               [12]  749 	mov	r4,a
      00014C E4               [12]  750 	clr	a
      00014D 35 0F            [12]  751 	addc	a,(_I2C_Write_PARM_2 + 1)
      00014F FD               [12]  752 	mov	r5,a
      000150 AE 10            [24]  753 	mov	r6,(_I2C_Write_PARM_2 + 2)
      000152 8C 82            [24]  754 	mov	dpl,r4
      000154 8D 83            [24]  755 	mov	dph,r5
      000156 8E F0            [24]  756 	mov	b,r6
      000158 12 03 C9         [24]  757 	lcall	__gptrget
      00015B F5 BC            [12]  758 	mov	_I2DAT,a
                                    759 ;	lib/src/i2c.c:98: SI = 0;
                                    760 ;	assignBit
      00015D C2 C3            [12]  761 	clr	_SI
                                    762 ;	lib/src/i2c.c:100: u8TimeOut = 0;
      00015F 7E 00            [12]  763 	mov	r6,#0x00
                                    764 ;	lib/src/i2c.c:101: while (1) {
      000161 7C 01            [12]  765 	mov	r4,#0x01
      000163 7D 00            [12]  766 	mov	r5,#0x00
      000165                        767 00130$:
                                    768 ;	lib/src/i2c.c:102: if (SI) {
      000165 20 C3 0F         [24]  769 	jb	_SI,00131$
                                    770 ;	lib/src/i2c.c:105: if (!t) {
      000168 EC               [12]  771 	mov	a,r4
      000169 4D               [12]  772 	orl	a,r5
      00016A 70 04            [24]  773 	jnz	00128$
                                    774 ;	lib/src/i2c.c:106: u8TimeOut = 1;
      00016C 7E 01            [12]  775 	mov	r6,#0x01
                                    776 ;	lib/src/i2c.c:107: break;
      00016E 80 07            [24]  777 	sjmp	00131$
      000170                        778 00128$:
                                    779 ;	lib/src/i2c.c:109: ++t;
      000170 0C               [12]  780 	inc	r4
      000171 BC 00 F1         [24]  781 	cjne	r4,#0x00,00130$
      000174 0D               [12]  782 	inc	r5
      000175 80 EE            [24]  783 	sjmp	00130$
      000177                        784 00131$:
                                    785 ;	lib/src/i2c.c:111: if (u8TimeOut) {
      000177 EE               [12]  786 	mov	a,r6
      000178 60 07            [24]  787 	jz	00133$
                                    788 ;	lib/src/i2c.c:113: send_stop();
      00017A 12 03 81         [24]  789 	lcall	_send_stop
                                    790 ;	lib/src/i2c.c:114: return 0;
      00017D 75 82 00         [24]  791 	mov	dpl,#0x00
      000180 22               [24]  792 	ret
      000181                        793 00133$:
                                    794 ;	lib/src/i2c.c:116: if (I2STAT != 0x28) {
      000181 74 28            [12]  795 	mov	a,#0x28
      000183 B5 BD 02         [24]  796 	cjne	a,_I2STAT,00248$
      000186 80 07            [24]  797 	sjmp	00139$
      000188                        798 00248$:
                                    799 ;	lib/src/i2c.c:118: send_stop();
      000188 12 03 81         [24]  800 	lcall	_send_stop
                                    801 ;	lib/src/i2c.c:119: return 0;
      00018B 75 82 00         [24]  802 	mov	dpl,#0x00
      00018E 22               [24]  803 	ret
      00018F                        804 00139$:
                                    805 ;	lib/src/i2c.c:96: for (i = 0; i < length; ++i) {
      00018F 0F               [12]  806 	inc	r7
      000190 80 B0            [24]  807 	sjmp	00138$
      000192                        808 00136$:
                                    809 ;	lib/src/i2c.c:124: return send_stop();
                                    810 ;	lib/src/i2c.c:125: }
      000192 02 03 81         [24]  811 	ljmp	_send_stop
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'I2C_Read'
                                    814 ;------------------------------------------------------------
                                    815 ;pData                     Allocated with name '_I2C_Read_PARM_2'
                                    816 ;length                    Allocated with name '_I2C_Read_PARM_3'
                                    817 ;Address                   Allocated to registers r7 
                                    818 ;i                         Allocated to registers r7 
                                    819 ;t                         Allocated to registers r4 r5 
                                    820 ;u8TimeOut                 Allocated to registers r5 
                                    821 ;------------------------------------------------------------
                                    822 ;	lib/src/i2c.c:127: uint8_t I2C_Read(uint8_t Address, uint8_t *pData, uint8_t length)
                                    823 ;	-----------------------------------------
                                    824 ;	 function I2C_Read
                                    825 ;	-----------------------------------------
      000195                        826 _I2C_Read:
      000195 AF 82            [24]  827 	mov	r7,dpl
                                    828 ;	lib/src/i2c.c:133: if (I2STAT != 0xF8) {
      000197 74 F8            [12]  829 	mov	a,#0xf8
      000199 B5 BD 02         [24]  830 	cjne	a,_I2STAT,00268$
      00019C 80 04            [24]  831 	sjmp	00102$
      00019E                        832 00268$:
                                    833 ;	lib/src/i2c.c:134: return 0;
      00019E 75 82 00         [24]  834 	mov	dpl,#0x00
      0001A1 22               [24]  835 	ret
      0001A2                        836 00102$:
                                    837 ;	lib/src/i2c.c:138: STO = 0;
                                    838 ;	assignBit
      0001A2 C2 C4            [12]  839 	clr	_STO
                                    840 ;	lib/src/i2c.c:139: STA = 1;
                                    841 ;	assignBit
      0001A4 D2 C5            [12]  842 	setb	_STA
                                    843 ;	lib/src/i2c.c:140: SI = 0;
                                    844 ;	assignBit
      0001A6 C2 C3            [12]  845 	clr	_SI
                                    846 ;	lib/src/i2c.c:142: u8TimeOut = 0;
      0001A8 7E 00            [12]  847 	mov	r6,#0x00
                                    848 ;	lib/src/i2c.c:144: while (1) {
      0001AA 7C 01            [12]  849 	mov	r4,#0x01
      0001AC 7D 00            [12]  850 	mov	r5,#0x00
      0001AE                        851 00108$:
                                    852 ;	lib/src/i2c.c:145: if (SI) {
      0001AE 20 C3 0F         [24]  853 	jb	_SI,00109$
                                    854 ;	lib/src/i2c.c:148: if (!t) {
      0001B1 EC               [12]  855 	mov	a,r4
      0001B2 4D               [12]  856 	orl	a,r5
      0001B3 70 04            [24]  857 	jnz	00106$
                                    858 ;	lib/src/i2c.c:149: u8TimeOut = 1;
      0001B5 7E 01            [12]  859 	mov	r6,#0x01
                                    860 ;	lib/src/i2c.c:150: break;
      0001B7 80 07            [24]  861 	sjmp	00109$
      0001B9                        862 00106$:
                                    863 ;	lib/src/i2c.c:152: ++t;
      0001B9 0C               [12]  864 	inc	r4
      0001BA BC 00 F1         [24]  865 	cjne	r4,#0x00,00108$
      0001BD 0D               [12]  866 	inc	r5
      0001BE 80 EE            [24]  867 	sjmp	00108$
      0001C0                        868 00109$:
                                    869 ;	lib/src/i2c.c:155: if (u8TimeOut) {
      0001C0 EE               [12]  870 	mov	a,r6
      0001C1 60 07            [24]  871 	jz	00111$
                                    872 ;	lib/src/i2c.c:157: send_stop();
      0001C3 12 03 81         [24]  873 	lcall	_send_stop
                                    874 ;	lib/src/i2c.c:158: return 0;
      0001C6 75 82 00         [24]  875 	mov	dpl,#0x00
      0001C9 22               [24]  876 	ret
      0001CA                        877 00111$:
                                    878 ;	lib/src/i2c.c:161: if (I2STAT != 0x08) {
      0001CA 74 08            [12]  879 	mov	a,#0x08
      0001CC B5 BD 02         [24]  880 	cjne	a,_I2STAT,00273$
      0001CF 80 07            [24]  881 	sjmp	00113$
      0001D1                        882 00273$:
                                    883 ;	lib/src/i2c.c:163: send_stop();
      0001D1 12 03 81         [24]  884 	lcall	_send_stop
                                    885 ;	lib/src/i2c.c:164: return 0;
      0001D4 75 82 00         [24]  886 	mov	dpl,#0x00
      0001D7 22               [24]  887 	ret
      0001D8                        888 00113$:
                                    889 ;	lib/src/i2c.c:168: STA = 0;
                                    890 ;	assignBit
      0001D8 C2 C5            [12]  891 	clr	_STA
                                    892 ;	lib/src/i2c.c:169: STO = 0;
                                    893 ;	assignBit
      0001DA C2 C4            [12]  894 	clr	_STO
                                    895 ;	lib/src/i2c.c:170: I2DAT = Address;
      0001DC 8F BC            [24]  896 	mov	_I2DAT,r7
                                    897 ;	lib/src/i2c.c:171: SI = 0;
                                    898 ;	assignBit
      0001DE C2 C3            [12]  899 	clr	_SI
                                    900 ;	lib/src/i2c.c:173: u8TimeOut = 0;
      0001E0 7F 00            [12]  901 	mov	r7,#0x00
                                    902 ;	lib/src/i2c.c:174: while (1) {
      0001E2 7D 01            [12]  903 	mov	r5,#0x01
      0001E4 7E 00            [12]  904 	mov	r6,#0x00
      0001E6                        905 00119$:
                                    906 ;	lib/src/i2c.c:175: if (SI) {
      0001E6 20 C3 0F         [24]  907 	jb	_SI,00120$
                                    908 ;	lib/src/i2c.c:178: if (!t) {
      0001E9 ED               [12]  909 	mov	a,r5
      0001EA 4E               [12]  910 	orl	a,r6
      0001EB 70 04            [24]  911 	jnz	00117$
                                    912 ;	lib/src/i2c.c:179: u8TimeOut = 1;
      0001ED 7F 01            [12]  913 	mov	r7,#0x01
                                    914 ;	lib/src/i2c.c:180: break;
      0001EF 80 07            [24]  915 	sjmp	00120$
      0001F1                        916 00117$:
                                    917 ;	lib/src/i2c.c:182: ++t;
      0001F1 0D               [12]  918 	inc	r5
      0001F2 BD 00 F1         [24]  919 	cjne	r5,#0x00,00119$
      0001F5 0E               [12]  920 	inc	r6
      0001F6 80 EE            [24]  921 	sjmp	00119$
      0001F8                        922 00120$:
                                    923 ;	lib/src/i2c.c:185: if (u8TimeOut) {
      0001F8 EF               [12]  924 	mov	a,r7
      0001F9 60 07            [24]  925 	jz	00122$
                                    926 ;	lib/src/i2c.c:187: send_stop();
      0001FB 12 03 81         [24]  927 	lcall	_send_stop
                                    928 ;	lib/src/i2c.c:188: return 0;
      0001FE 75 82 00         [24]  929 	mov	dpl,#0x00
      000201 22               [24]  930 	ret
      000202                        931 00122$:
                                    932 ;	lib/src/i2c.c:191: if (I2STAT != 0x40) {
      000202 74 40            [12]  933 	mov	a,#0x40
      000204 B5 BD 02         [24]  934 	cjne	a,_I2STAT,00278$
      000207 80 07            [24]  935 	sjmp	00124$
      000209                        936 00278$:
                                    937 ;	lib/src/i2c.c:193: send_stop();
      000209 12 03 81         [24]  938 	lcall	_send_stop
                                    939 ;	lib/src/i2c.c:194: return 0;
      00020C 75 82 00         [24]  940 	mov	dpl,#0x00
      00020F 22               [24]  941 	ret
      000210                        942 00124$:
                                    943 ;	lib/src/i2c.c:198: for (i = 0; i < length - 1; ++i) {
      000210 7F 00            [12]  944 	mov	r7,#0x00
      000212 7E 00            [12]  945 	mov	r6,#0x00
      000214                        946 00149$:
      000214 AC 15            [24]  947 	mov	r4,_I2C_Read_PARM_3
      000216 7D 00            [12]  948 	mov	r5,#0x00
      000218 1C               [12]  949 	dec	r4
      000219 BC FF 01         [24]  950 	cjne	r4,#0xff,00279$
      00021C 1D               [12]  951 	dec	r5
      00021D                        952 00279$:
      00021D 8E 02            [24]  953 	mov	ar2,r6
      00021F 7B 00            [12]  954 	mov	r3,#0x00
      000221 C3               [12]  955 	clr	c
      000222 EA               [12]  956 	mov	a,r2
      000223 9C               [12]  957 	subb	a,r4
      000224 EB               [12]  958 	mov	a,r3
      000225 64 80            [12]  959 	xrl	a,#0x80
      000227 8D F0            [24]  960 	mov	b,r5
      000229 63 F0 80         [24]  961 	xrl	b,#0x80
      00022C 95 F0            [12]  962 	subb	a,b
      00022E 50 4E            [24]  963 	jnc	00136$
                                    964 ;	lib/src/i2c.c:199: AA = 1;
                                    965 ;	assignBit
      000230 D2 C2            [12]  966 	setb	_AA
                                    967 ;	lib/src/i2c.c:200: SI = 0;
                                    968 ;	assignBit
      000232 C2 C3            [12]  969 	clr	_SI
                                    970 ;	lib/src/i2c.c:202: u8TimeOut = 0;
      000234 7D 00            [12]  971 	mov	r5,#0x00
                                    972 ;	lib/src/i2c.c:203: while (1) {
      000236 7B 01            [12]  973 	mov	r3,#0x01
      000238 7C 00            [12]  974 	mov	r4,#0x00
      00023A                        975 00130$:
                                    976 ;	lib/src/i2c.c:204: if (SI) {
      00023A 20 C3 0F         [24]  977 	jb	_SI,00131$
                                    978 ;	lib/src/i2c.c:207: if (!t) {
      00023D EB               [12]  979 	mov	a,r3
      00023E 4C               [12]  980 	orl	a,r4
      00023F 70 04            [24]  981 	jnz	00128$
                                    982 ;	lib/src/i2c.c:208: u8TimeOut = 1;
      000241 7D 01            [12]  983 	mov	r5,#0x01
                                    984 ;	lib/src/i2c.c:209: break;
      000243 80 07            [24]  985 	sjmp	00131$
      000245                        986 00128$:
                                    987 ;	lib/src/i2c.c:211: ++t;
      000245 0B               [12]  988 	inc	r3
      000246 BB 00 F1         [24]  989 	cjne	r3,#0x00,00130$
      000249 0C               [12]  990 	inc	r4
      00024A 80 EE            [24]  991 	sjmp	00130$
      00024C                        992 00131$:
                                    993 ;	lib/src/i2c.c:213: if (u8TimeOut) {
      00024C ED               [12]  994 	mov	a,r5
      00024D 60 07            [24]  995 	jz	00133$
                                    996 ;	lib/src/i2c.c:215: send_stop();
      00024F 12 03 81         [24]  997 	lcall	_send_stop
                                    998 ;	lib/src/i2c.c:216: return 0;
      000252 75 82 00         [24]  999 	mov	dpl,#0x00
      000255 22               [24] 1000 	ret
      000256                       1001 00133$:
                                   1002 ;	lib/src/i2c.c:218: if (I2STAT != 0x50) {
      000256 74 50            [12] 1003 	mov	a,#0x50
      000258 B5 BD 02         [24] 1004 	cjne	a,_I2STAT,00285$
      00025B 80 07            [24] 1005 	sjmp	00135$
      00025D                       1006 00285$:
                                   1007 ;	lib/src/i2c.c:220: send_stop();
      00025D 12 03 81         [24] 1008 	lcall	_send_stop
                                   1009 ;	lib/src/i2c.c:221: return 0;
      000260 75 82 00         [24] 1010 	mov	dpl,#0x00
      000263 22               [24] 1011 	ret
      000264                       1012 00135$:
                                   1013 ;	lib/src/i2c.c:223: pData[i] = I2DAT;
      000264 EE               [12] 1014 	mov	a,r6
      000265 25 12            [12] 1015 	add	a,_I2C_Read_PARM_2
      000267 FB               [12] 1016 	mov	r3,a
      000268 E4               [12] 1017 	clr	a
      000269 35 13            [12] 1018 	addc	a,(_I2C_Read_PARM_2 + 1)
      00026B FC               [12] 1019 	mov	r4,a
      00026C AD 14            [24] 1020 	mov	r5,(_I2C_Read_PARM_2 + 2)
      00026E 8B 82            [24] 1021 	mov	dpl,r3
      000270 8C 83            [24] 1022 	mov	dph,r4
      000272 8D F0            [24] 1023 	mov	b,r5
      000274 E5 BC            [12] 1024 	mov	a,_I2DAT
      000276 12 03 AE         [24] 1025 	lcall	__gptrput
                                   1026 ;	lib/src/i2c.c:198: for (i = 0; i < length - 1; ++i) {
      000279 0E               [12] 1027 	inc	r6
      00027A 8E 07            [24] 1028 	mov	ar7,r6
      00027C 80 96            [24] 1029 	sjmp	00149$
      00027E                       1030 00136$:
                                   1031 ;	lib/src/i2c.c:227: AA = 0;
                                   1032 ;	assignBit
      00027E C2 C2            [12] 1033 	clr	_AA
                                   1034 ;	lib/src/i2c.c:228: SI = 0;
                                   1035 ;	assignBit
      000280 C2 C3            [12] 1036 	clr	_SI
                                   1037 ;	lib/src/i2c.c:230: u8TimeOut = 0;
      000282 7E 00            [12] 1038 	mov	r6,#0x00
                                   1039 ;	lib/src/i2c.c:231: while (1) {
      000284 7C 01            [12] 1040 	mov	r4,#0x01
      000286 7D 00            [12] 1041 	mov	r5,#0x00
      000288                       1042 00142$:
                                   1043 ;	lib/src/i2c.c:232: if (SI) {
      000288 20 C3 0F         [24] 1044 	jb	_SI,00143$
                                   1045 ;	lib/src/i2c.c:235: if (!t) {
      00028B EC               [12] 1046 	mov	a,r4
      00028C 4D               [12] 1047 	orl	a,r5
      00028D 70 04            [24] 1048 	jnz	00140$
                                   1049 ;	lib/src/i2c.c:236: u8TimeOut = 1;
      00028F 7E 01            [12] 1050 	mov	r6,#0x01
                                   1051 ;	lib/src/i2c.c:237: break;
      000291 80 07            [24] 1052 	sjmp	00143$
      000293                       1053 00140$:
                                   1054 ;	lib/src/i2c.c:239: ++t;
      000293 0C               [12] 1055 	inc	r4
      000294 BC 00 F1         [24] 1056 	cjne	r4,#0x00,00142$
      000297 0D               [12] 1057 	inc	r5
      000298 80 EE            [24] 1058 	sjmp	00142$
      00029A                       1059 00143$:
                                   1060 ;	lib/src/i2c.c:241: if (u8TimeOut) {
      00029A EE               [12] 1061 	mov	a,r6
      00029B 60 07            [24] 1062 	jz	00145$
                                   1063 ;	lib/src/i2c.c:243: send_stop();
      00029D 12 03 81         [24] 1064 	lcall	_send_stop
                                   1065 ;	lib/src/i2c.c:244: return 0;
      0002A0 75 82 00         [24] 1066 	mov	dpl,#0x00
      0002A3 22               [24] 1067 	ret
      0002A4                       1068 00145$:
                                   1069 ;	lib/src/i2c.c:246: if (I2STAT != 0x58) {
      0002A4 74 58            [12] 1070 	mov	a,#0x58
      0002A6 B5 BD 02         [24] 1071 	cjne	a,_I2STAT,00290$
      0002A9 80 07            [24] 1072 	sjmp	00147$
      0002AB                       1073 00290$:
                                   1074 ;	lib/src/i2c.c:248: send_stop();
      0002AB 12 03 81         [24] 1075 	lcall	_send_stop
                                   1076 ;	lib/src/i2c.c:249: return 0;
      0002AE 75 82 00         [24] 1077 	mov	dpl,#0x00
      0002B1 22               [24] 1078 	ret
      0002B2                       1079 00147$:
                                   1080 ;	lib/src/i2c.c:251: pData[i] = I2DAT;
      0002B2 EF               [12] 1081 	mov	a,r7
      0002B3 25 12            [12] 1082 	add	a,_I2C_Read_PARM_2
      0002B5 FF               [12] 1083 	mov	r7,a
      0002B6 E4               [12] 1084 	clr	a
      0002B7 35 13            [12] 1085 	addc	a,(_I2C_Read_PARM_2 + 1)
      0002B9 FE               [12] 1086 	mov	r6,a
      0002BA AD 14            [24] 1087 	mov	r5,(_I2C_Read_PARM_2 + 2)
      0002BC 8F 82            [24] 1088 	mov	dpl,r7
      0002BE 8E 83            [24] 1089 	mov	dph,r6
      0002C0 8D F0            [24] 1090 	mov	b,r5
      0002C2 E5 BC            [12] 1091 	mov	a,_I2DAT
      0002C4 12 03 AE         [24] 1092 	lcall	__gptrput
                                   1093 ;	lib/src/i2c.c:253: return send_stop();
                                   1094 ;	lib/src/i2c.c:254: }
      0002C7 02 03 81         [24] 1095 	ljmp	_send_stop
                                   1096 ;------------------------------------------------------------
                                   1097 ;Allocation info for local variables in function 'I2C_CheckAddress'
                                   1098 ;------------------------------------------------------------
                                   1099 ;Address                   Allocated to registers r7 
                                   1100 ;t                         Allocated to registers r4 r5 
                                   1101 ;u8TimeOut                 Allocated to registers r7 
                                   1102 ;------------------------------------------------------------
                                   1103 ;	lib/src/i2c.c:256: uint8_t I2C_CheckAddress(uint8_t Address)
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function I2C_CheckAddress
                                   1106 ;	-----------------------------------------
      0002CA                       1107 _I2C_CheckAddress:
      0002CA AF 82            [24] 1108 	mov	r7,dpl
                                   1109 ;	lib/src/i2c.c:261: Address |= 0x01;
      0002CC 43 07 01         [24] 1110 	orl	ar7,#0x01
                                   1111 ;	lib/src/i2c.c:263: if (I2STAT != 0xF8) {
      0002CF 74 F8            [12] 1112 	mov	a,#0xf8
      0002D1 B5 BD 02         [24] 1113 	cjne	a,_I2STAT,00218$
      0002D4 80 04            [24] 1114 	sjmp	00102$
      0002D6                       1115 00218$:
                                   1116 ;	lib/src/i2c.c:264: return 0;
      0002D6 75 82 00         [24] 1117 	mov	dpl,#0x00
      0002D9 22               [24] 1118 	ret
      0002DA                       1119 00102$:
                                   1120 ;	lib/src/i2c.c:268: STO = 0;
                                   1121 ;	assignBit
      0002DA C2 C4            [12] 1122 	clr	_STO
                                   1123 ;	lib/src/i2c.c:269: STA = 1;
                                   1124 ;	assignBit
      0002DC D2 C5            [12] 1125 	setb	_STA
                                   1126 ;	lib/src/i2c.c:270: SI = 0;
                                   1127 ;	assignBit
      0002DE C2 C3            [12] 1128 	clr	_SI
                                   1129 ;	lib/src/i2c.c:272: u8TimeOut = 0;
      0002E0 7E 00            [12] 1130 	mov	r6,#0x00
                                   1131 ;	lib/src/i2c.c:274: while (1) {
      0002E2 7C 01            [12] 1132 	mov	r4,#0x01
      0002E4 7D 00            [12] 1133 	mov	r5,#0x00
      0002E6                       1134 00108$:
                                   1135 ;	lib/src/i2c.c:275: if (SI) {
      0002E6 20 C3 0F         [24] 1136 	jb	_SI,00109$
                                   1137 ;	lib/src/i2c.c:278: if (!t) {
      0002E9 EC               [12] 1138 	mov	a,r4
      0002EA 4D               [12] 1139 	orl	a,r5
      0002EB 70 04            [24] 1140 	jnz	00106$
                                   1141 ;	lib/src/i2c.c:279: u8TimeOut = 1;
      0002ED 7E 01            [12] 1142 	mov	r6,#0x01
                                   1143 ;	lib/src/i2c.c:280: break;
      0002EF 80 07            [24] 1144 	sjmp	00109$
      0002F1                       1145 00106$:
                                   1146 ;	lib/src/i2c.c:282: ++t;
      0002F1 0C               [12] 1147 	inc	r4
      0002F2 BC 00 F1         [24] 1148 	cjne	r4,#0x00,00108$
      0002F5 0D               [12] 1149 	inc	r5
      0002F6 80 EE            [24] 1150 	sjmp	00108$
      0002F8                       1151 00109$:
                                   1152 ;	lib/src/i2c.c:285: if (u8TimeOut) {
      0002F8 EE               [12] 1153 	mov	a,r6
      0002F9 60 07            [24] 1154 	jz	00111$
                                   1155 ;	lib/src/i2c.c:287: send_stop();
      0002FB 12 03 81         [24] 1156 	lcall	_send_stop
                                   1157 ;	lib/src/i2c.c:288: return 0;
      0002FE 75 82 00         [24] 1158 	mov	dpl,#0x00
      000301 22               [24] 1159 	ret
      000302                       1160 00111$:
                                   1161 ;	lib/src/i2c.c:291: if (I2STAT != 0x08) {
      000302 74 08            [12] 1162 	mov	a,#0x08
      000304 B5 BD 02         [24] 1163 	cjne	a,_I2STAT,00223$
      000307 80 07            [24] 1164 	sjmp	00113$
      000309                       1165 00223$:
                                   1166 ;	lib/src/i2c.c:293: send_stop();
      000309 12 03 81         [24] 1167 	lcall	_send_stop
                                   1168 ;	lib/src/i2c.c:294: return 0;
      00030C 75 82 00         [24] 1169 	mov	dpl,#0x00
      00030F 22               [24] 1170 	ret
      000310                       1171 00113$:
                                   1172 ;	lib/src/i2c.c:298: STA = 0;
                                   1173 ;	assignBit
      000310 C2 C5            [12] 1174 	clr	_STA
                                   1175 ;	lib/src/i2c.c:299: STO = 0;
                                   1176 ;	assignBit
      000312 C2 C4            [12] 1177 	clr	_STO
                                   1178 ;	lib/src/i2c.c:300: I2DAT = Address;
      000314 8F BC            [24] 1179 	mov	_I2DAT,r7
                                   1180 ;	lib/src/i2c.c:301: SI = 0;
                                   1181 ;	assignBit
      000316 C2 C3            [12] 1182 	clr	_SI
                                   1183 ;	lib/src/i2c.c:303: u8TimeOut = 0;
      000318 7F 00            [12] 1184 	mov	r7,#0x00
                                   1185 ;	lib/src/i2c.c:304: while (1) {
      00031A 7D 01            [12] 1186 	mov	r5,#0x01
      00031C 7E 00            [12] 1187 	mov	r6,#0x00
      00031E                       1188 00119$:
                                   1189 ;	lib/src/i2c.c:305: if (SI) {
      00031E 20 C3 0F         [24] 1190 	jb	_SI,00120$
                                   1191 ;	lib/src/i2c.c:308: if (!t) {
      000321 ED               [12] 1192 	mov	a,r5
      000322 4E               [12] 1193 	orl	a,r6
      000323 70 04            [24] 1194 	jnz	00117$
                                   1195 ;	lib/src/i2c.c:309: u8TimeOut = 1;
      000325 7F 01            [12] 1196 	mov	r7,#0x01
                                   1197 ;	lib/src/i2c.c:310: break;
      000327 80 07            [24] 1198 	sjmp	00120$
      000329                       1199 00117$:
                                   1200 ;	lib/src/i2c.c:312: ++t;
      000329 0D               [12] 1201 	inc	r5
      00032A BD 00 F1         [24] 1202 	cjne	r5,#0x00,00119$
      00032D 0E               [12] 1203 	inc	r6
      00032E 80 EE            [24] 1204 	sjmp	00119$
      000330                       1205 00120$:
                                   1206 ;	lib/src/i2c.c:315: if (u8TimeOut) {
      000330 EF               [12] 1207 	mov	a,r7
      000331 60 07            [24] 1208 	jz	00122$
                                   1209 ;	lib/src/i2c.c:317: send_stop();
      000333 12 03 81         [24] 1210 	lcall	_send_stop
                                   1211 ;	lib/src/i2c.c:318: return 0;
      000336 75 82 00         [24] 1212 	mov	dpl,#0x00
      000339 22               [24] 1213 	ret
      00033A                       1214 00122$:
                                   1215 ;	lib/src/i2c.c:321: if (I2STAT != 0x40) {
      00033A 74 40            [12] 1216 	mov	a,#0x40
      00033C B5 BD 02         [24] 1217 	cjne	a,_I2STAT,00228$
      00033F 80 07            [24] 1218 	sjmp	00124$
      000341                       1219 00228$:
                                   1220 ;	lib/src/i2c.c:323: send_stop();
      000341 12 03 81         [24] 1221 	lcall	_send_stop
                                   1222 ;	lib/src/i2c.c:324: return 0;
      000344 75 82 00         [24] 1223 	mov	dpl,#0x00
      000347 22               [24] 1224 	ret
      000348                       1225 00124$:
                                   1226 ;	lib/src/i2c.c:328: AA = 0;
                                   1227 ;	assignBit
      000348 C2 C2            [12] 1228 	clr	_AA
                                   1229 ;	lib/src/i2c.c:329: SI = 0;
                                   1230 ;	assignBit
      00034A C2 C3            [12] 1231 	clr	_SI
                                   1232 ;	lib/src/i2c.c:331: u8TimeOut = 0;
      00034C 7F 00            [12] 1233 	mov	r7,#0x00
                                   1234 ;	lib/src/i2c.c:332: while (1) {
      00034E 7D 01            [12] 1235 	mov	r5,#0x01
      000350 7E 00            [12] 1236 	mov	r6,#0x00
      000352                       1237 00130$:
                                   1238 ;	lib/src/i2c.c:333: if (SI) {
      000352 20 C3 0F         [24] 1239 	jb	_SI,00131$
                                   1240 ;	lib/src/i2c.c:336: if (!t) {
      000355 ED               [12] 1241 	mov	a,r5
      000356 4E               [12] 1242 	orl	a,r6
      000357 70 04            [24] 1243 	jnz	00128$
                                   1244 ;	lib/src/i2c.c:337: u8TimeOut = 1;
      000359 7F 01            [12] 1245 	mov	r7,#0x01
                                   1246 ;	lib/src/i2c.c:338: break;
      00035B 80 07            [24] 1247 	sjmp	00131$
      00035D                       1248 00128$:
                                   1249 ;	lib/src/i2c.c:340: ++t;
      00035D 0D               [12] 1250 	inc	r5
      00035E BD 00 F1         [24] 1251 	cjne	r5,#0x00,00130$
      000361 0E               [12] 1252 	inc	r6
      000362 80 EE            [24] 1253 	sjmp	00130$
      000364                       1254 00131$:
                                   1255 ;	lib/src/i2c.c:342: if (u8TimeOut) {
      000364 EF               [12] 1256 	mov	a,r7
      000365 60 07            [24] 1257 	jz	00133$
                                   1258 ;	lib/src/i2c.c:344: send_stop();
      000367 12 03 81         [24] 1259 	lcall	_send_stop
                                   1260 ;	lib/src/i2c.c:345: return 0;
      00036A 75 82 00         [24] 1261 	mov	dpl,#0x00
      00036D 22               [24] 1262 	ret
      00036E                       1263 00133$:
                                   1264 ;	lib/src/i2c.c:347: if (I2STAT != 0x58) {
      00036E 74 58            [12] 1265 	mov	a,#0x58
      000370 B5 BD 02         [24] 1266 	cjne	a,_I2STAT,00233$
      000373 80 07            [24] 1267 	sjmp	00135$
      000375                       1268 00233$:
                                   1269 ;	lib/src/i2c.c:349: send_stop();
      000375 12 03 81         [24] 1270 	lcall	_send_stop
                                   1271 ;	lib/src/i2c.c:350: return 0;
      000378 75 82 00         [24] 1272 	mov	dpl,#0x00
      00037B 22               [24] 1273 	ret
      00037C                       1274 00135$:
                                   1275 ;	lib/src/i2c.c:352: t = I2DAT;
      00037C E5 BC            [12] 1276 	mov	a,_I2DAT
                                   1277 ;	lib/src/i2c.c:354: return send_stop();
                                   1278 ;	lib/src/i2c.c:355: }
      00037E 02 03 81         [24] 1279 	ljmp	_send_stop
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'send_stop'
                                   1282 ;------------------------------------------------------------
                                   1283 ;t                         Allocated to registers r5 r6 
                                   1284 ;u8TimeOut                 Allocated to registers r7 
                                   1285 ;------------------------------------------------------------
                                   1286 ;	lib/src/i2c.c:357: uint8_t send_stop(void)
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function send_stop
                                   1289 ;	-----------------------------------------
      000381                       1290 _send_stop:
                                   1291 ;	lib/src/i2c.c:362: STA = 0;
                                   1292 ;	assignBit
      000381 C2 C5            [12] 1293 	clr	_STA
                                   1294 ;	lib/src/i2c.c:363: STO = 1;
                                   1295 ;	assignBit
      000383 D2 C4            [12] 1296 	setb	_STO
                                   1297 ;	lib/src/i2c.c:364: SI = 0;
                                   1298 ;	assignBit
      000385 C2 C3            [12] 1299 	clr	_SI
                                   1300 ;	lib/src/i2c.c:366: u8TimeOut = 0;
      000387 7F 00            [12] 1301 	mov	r7,#0x00
                                   1302 ;	lib/src/i2c.c:367: while (1) {
      000389 7D 01            [12] 1303 	mov	r5,#0x01
      00038B 7E 00            [12] 1304 	mov	r6,#0x00
      00038D                       1305 00106$:
                                   1306 ;	lib/src/i2c.c:368: if (I2STAT == 0xF8) {
      00038D 74 F8            [12] 1307 	mov	a,#0xf8
      00038F B5 BD 02         [24] 1308 	cjne	a,_I2STAT,00122$
      000392 80 0F            [24] 1309 	sjmp	00107$
      000394                       1310 00122$:
                                   1311 ;	lib/src/i2c.c:371: if (!t) {
      000394 ED               [12] 1312 	mov	a,r5
      000395 4E               [12] 1313 	orl	a,r6
      000396 70 04            [24] 1314 	jnz	00104$
                                   1315 ;	lib/src/i2c.c:372: u8TimeOut = 1;
      000398 7F 01            [12] 1316 	mov	r7,#0x01
                                   1317 ;	lib/src/i2c.c:373: break;
      00039A 80 07            [24] 1318 	sjmp	00107$
      00039C                       1319 00104$:
                                   1320 ;	lib/src/i2c.c:375: ++t;
      00039C 0D               [12] 1321 	inc	r5
      00039D BD 00 ED         [24] 1322 	cjne	r5,#0x00,00106$
      0003A0 0E               [12] 1323 	inc	r6
      0003A1 80 EA            [24] 1324 	sjmp	00106$
      0003A3                       1325 00107$:
                                   1326 ;	lib/src/i2c.c:377: return (!u8TimeOut);
      0003A3 EF               [12] 1327 	mov	a,r7
      0003A4 B4 01 00         [24] 1328 	cjne	a,#0x01,00125$
      0003A7                       1329 00125$:
      0003A7 92 00            [24] 1330 	mov  _send_stop_sloc0_1_0,c
      0003A9 E4               [12] 1331 	clr	a
      0003AA 33               [12] 1332 	rlc	a
      0003AB F5 82            [12] 1333 	mov	dpl,a
                                   1334 ;	lib/src/i2c.c:378: }
      0003AD 22               [24] 1335 	ret
                                   1336 	.area CSEG    (CODE)
                                   1337 	.area CONST   (CODE)
                                   1338 	.area XINIT   (CODE)
                                   1339 	.area CABS    (ABS,CODE)
