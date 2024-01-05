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
                                     11 	.globl _DelayT0
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
                                    244 	.globl _I2C_Write_nByte_PARM_2
                                    245 	.globl _I2C_Address_PARM_2
                                    246 	.globl _I2C_Init
                                    247 	.globl _send_stop
                                    248 	.globl _I2C_start
                                    249 	.globl _I2C_RepeatedStart
                                    250 	.globl _I2C_Address
                                    251 	.globl _I2C_Write
                                    252 	.globl _I2C_Write_nByte
                                    253 	.globl _I2C_Read
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
      000010                        505 _I2C_Address_PARM_2:
      000010                        506 	.ds 1
      000011                        507 _I2C_Write_nByte_PARM_2:
      000011                        508 	.ds 1
                                    509 ;--------------------------------------------------------
                                    510 ; overlayable items in internal ram
                                    511 ;--------------------------------------------------------
                                    512 ;--------------------------------------------------------
                                    513 ; indirectly addressable internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area ISEG    (DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; absolute internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area IABS    (ABS,DATA)
                                    520 	.area IABS    (ABS,DATA)
                                    521 ;--------------------------------------------------------
                                    522 ; bit data
                                    523 ;--------------------------------------------------------
                                    524 	.area BSEG    (BIT)
                                    525 ;--------------------------------------------------------
                                    526 ; paged external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area PSEG    (PAG,XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; uninitialized external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XSEG    (XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; absolute external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XABS    (ABS,XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; initialized external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XISEG   (XDATA)
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT0 (CODE)
                                    543 	.area GSINIT1 (CODE)
                                    544 	.area GSINIT2 (CODE)
                                    545 	.area GSINIT3 (CODE)
                                    546 	.area GSINIT4 (CODE)
                                    547 	.area GSINIT5 (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 	.area GSFINAL (CODE)
                                    550 	.area CSEG    (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; global & static initialisations
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; Home
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area HOME    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; code
                                    565 ;--------------------------------------------------------
                                    566 	.area CSEG    (CODE)
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'I2C_Init'
                                    569 ;------------------------------------------------------------
                                    570 ;	lib/src/i2c.c:7: void I2C_Init(void)
                                    571 ;	-----------------------------------------
                                    572 ;	 function I2C_Init
                                    573 ;	-----------------------------------------
      000229                        574 _I2C_Init:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
                                    583 ;	lib/src/i2c.c:12: P1M1 &= ~(1 << 2);
      000229 53 B3 FB         [24]  584 	anl	_P1M1,#0xfb
                                    585 ;	lib/src/i2c.c:13: P1M2 &= ~(1 << 2);
      00022C 53 B4 FB         [24]  586 	anl	_P1M2,#0xfb
                                    587 ;	lib/src/i2c.c:16: P1M1 &= ~(1 << 1);
      00022F 53 B3 FD         [24]  588 	anl	_P1M1,#0xfd
                                    589 ;	lib/src/i2c.c:17: P1M2 &= ~(1 << 1);
      000232 53 B4 FD         [24]  590 	anl	_P1M2,#0xfd
                                    591 ;	lib/src/i2c.c:19: P11=1;
                                    592 ;	assignBit
      000235 D2 91            [12]  593 	setb	_P11
                                    594 ;	lib/src/i2c.c:20: P12=1;
                                    595 ;	assignBit
      000237 D2 92            [12]  596 	setb	_P12
                                    597 ;	lib/src/i2c.c:23: }
      000239 22               [24]  598 	ret
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'send_stop'
                                    601 ;------------------------------------------------------------
                                    602 ;	lib/src/i2c.c:24: void send_stop(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function send_stop
                                    605 ;	-----------------------------------------
      00023A                        606 _send_stop:
                                    607 ;	lib/src/i2c.c:26: SDA_0;
                                    608 ;	assignBit
      00023A C2 92            [12]  609 	clr	_P12
                                    610 ;	lib/src/i2c.c:27: I2C_DELAY;  
      00023C 75 12 01         [24]  611 	mov	_DelayT0_PARM_2,#0x01
      00023F 75 13 00         [24]  612 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000242 90 00 05         [24]  613 	mov	dptr,#0x0005
      000245 12 01 DB         [24]  614 	lcall	_DelayT0
                                    615 ;	lib/src/i2c.c:28: SCL_1;
                                    616 ;	assignBit
      000248 D2 91            [12]  617 	setb	_P11
                                    618 ;	lib/src/i2c.c:29: I2C_DELAY;
      00024A 75 12 01         [24]  619 	mov	_DelayT0_PARM_2,#0x01
      00024D 75 13 00         [24]  620 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000250 90 00 05         [24]  621 	mov	dptr,#0x0005
      000253 12 01 DB         [24]  622 	lcall	_DelayT0
                                    623 ;	lib/src/i2c.c:30: SDA_1;
                                    624 ;	assignBit
      000256 D2 92            [12]  625 	setb	_P12
                                    626 ;	lib/src/i2c.c:31: I2C_DELAY;
      000258 75 12 01         [24]  627 	mov	_DelayT0_PARM_2,#0x01
      00025B 75 13 00         [24]  628 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00025E 90 00 05         [24]  629 	mov	dptr,#0x0005
                                    630 ;	lib/src/i2c.c:32: }
      000261 02 01 DB         [24]  631 	ljmp	_DelayT0
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'I2C_start'
                                    634 ;------------------------------------------------------------
                                    635 ;	lib/src/i2c.c:33: void I2C_start(void)
                                    636 ;	-----------------------------------------
                                    637 ;	 function I2C_start
                                    638 ;	-----------------------------------------
      000264                        639 _I2C_start:
                                    640 ;	lib/src/i2c.c:35: SCL_1;
                                    641 ;	assignBit
      000264 D2 91            [12]  642 	setb	_P11
                                    643 ;	lib/src/i2c.c:36: I2C_DELAY;
      000266 75 12 01         [24]  644 	mov	_DelayT0_PARM_2,#0x01
      000269 75 13 00         [24]  645 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00026C 90 00 05         [24]  646 	mov	dptr,#0x0005
      00026F 12 01 DB         [24]  647 	lcall	_DelayT0
                                    648 ;	lib/src/i2c.c:37: SDA_1;
                                    649 ;	assignBit
      000272 D2 92            [12]  650 	setb	_P12
                                    651 ;	lib/src/i2c.c:38: I2C_DELAY;
      000274 75 12 01         [24]  652 	mov	_DelayT0_PARM_2,#0x01
      000277 75 13 00         [24]  653 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00027A 90 00 05         [24]  654 	mov	dptr,#0x0005
      00027D 12 01 DB         [24]  655 	lcall	_DelayT0
                                    656 ;	lib/src/i2c.c:39: SDA_0;
                                    657 ;	assignBit
      000280 C2 92            [12]  658 	clr	_P12
                                    659 ;	lib/src/i2c.c:40: I2C_DELAY;
      000282 75 12 01         [24]  660 	mov	_DelayT0_PARM_2,#0x01
      000285 75 13 00         [24]  661 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000288 90 00 05         [24]  662 	mov	dptr,#0x0005
      00028B 12 01 DB         [24]  663 	lcall	_DelayT0
                                    664 ;	lib/src/i2c.c:41: SCL_0;
                                    665 ;	assignBit
      00028E C2 91            [12]  666 	clr	_P11
                                    667 ;	lib/src/i2c.c:42: I2C_DELAY;
      000290 75 12 01         [24]  668 	mov	_DelayT0_PARM_2,#0x01
      000293 75 13 00         [24]  669 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000296 90 00 05         [24]  670 	mov	dptr,#0x0005
                                    671 ;	lib/src/i2c.c:43: }
      000299 02 01 DB         [24]  672 	ljmp	_DelayT0
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'I2C_RepeatedStart'
                                    675 ;------------------------------------------------------------
                                    676 ;	lib/src/i2c.c:44: uint8_t I2C_RepeatedStart(void)
                                    677 ;	-----------------------------------------
                                    678 ;	 function I2C_RepeatedStart
                                    679 ;	-----------------------------------------
      00029C                        680 _I2C_RepeatedStart:
                                    681 ;	lib/src/i2c.c:46: STO = 0;
                                    682 ;	assignBit
      00029C C2 C4            [12]  683 	clr	_STO
                                    684 ;	lib/src/i2c.c:47: STA = 1;
                                    685 ;	assignBit
      00029E D2 C5            [12]  686 	setb	_STA
                                    687 ;	lib/src/i2c.c:48: SI = 0;
                                    688 ;	assignBit
      0002A0 C2 C3            [12]  689 	clr	_SI
                                    690 ;	lib/src/i2c.c:49: while (!SI);
      0002A2                        691 00101$:
      0002A2 30 C3 FD         [24]  692 	jnb	_SI,00101$
                                    693 ;	lib/src/i2c.c:51: if (I2STAT != 0x10) { 
      0002A5 74 10            [12]  694 	mov	a,#0x10
      0002A7 B5 BD 01         [24]  695 	cjne	a,_I2STAT,00121$
      0002AA 22               [24]  696 	ret
      0002AB                        697 00121$:
                                    698 ;	lib/src/i2c.c:53: send_stop();
      0002AB 12 02 3A         [24]  699 	lcall	_send_stop
                                    700 ;	lib/src/i2c.c:54: return 0;
      0002AE 75 82 00         [24]  701 	mov	dpl,#0x00
                                    702 ;	lib/src/i2c.c:56: }
      0002B1 22               [24]  703 	ret
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'I2C_Address'
                                    706 ;------------------------------------------------------------
                                    707 ;WriteRead                 Allocated with name '_I2C_Address_PARM_2'
                                    708 ;Address                   Allocated to registers r7 
                                    709 ;------------------------------------------------------------
                                    710 ;	lib/src/i2c.c:65: uint8_t I2C_Address(uint8_t Address, uint8_t WriteRead){ 
                                    711 ;	-----------------------------------------
                                    712 ;	 function I2C_Address
                                    713 ;	-----------------------------------------
      0002B2                        714 _I2C_Address:
      0002B2 AF 82            [24]  715 	mov	r7,dpl
                                    716 ;	lib/src/i2c.c:68: STA = 0;
                                    717 ;	assignBit
      0002B4 C2 C5            [12]  718 	clr	_STA
                                    719 ;	lib/src/i2c.c:69: STO = 0;
                                    720 ;	assignBit
      0002B6 C2 C4            [12]  721 	clr	_STO
                                    722 ;	lib/src/i2c.c:70: I2DAT = Address;
      0002B8 8F BC            [24]  723 	mov	_I2DAT,r7
                                    724 ;	lib/src/i2c.c:71: SI = 0;
                                    725 ;	assignBit
      0002BA C2 C3            [12]  726 	clr	_SI
                                    727 ;	lib/src/i2c.c:72: while (!SI);
      0002BC                        728 00101$:
      0002BC 30 C3 FD         [24]  729 	jnb	_SI,00101$
                                    730 ;	lib/src/i2c.c:73: if(WriteRead)	/*Read*/
      0002BF E5 10            [12]  731 	mov	a,_I2C_Address_PARM_2
      0002C1 60 12            [24]  732 	jz	00109$
                                    733 ;	lib/src/i2c.c:76: if (I2STAT != 0x40) {
      0002C3 74 40            [12]  734 	mov	a,#0x40
      0002C5 B5 BD 02         [24]  735 	cjne	a,_I2STAT,00135$
      0002C8 80 07            [24]  736 	sjmp	00105$
      0002CA                        737 00135$:
                                    738 ;	lib/src/i2c.c:78: send_stop();
      0002CA 12 02 3A         [24]  739 	lcall	_send_stop
                                    740 ;	lib/src/i2c.c:79: return 0;
      0002CD 75 82 00         [24]  741 	mov	dpl,#0x00
      0002D0 22               [24]  742 	ret
      0002D1                        743 00105$:
                                    744 ;	lib/src/i2c.c:81: return 1;
      0002D1 75 82 01         [24]  745 	mov	dpl,#0x01
      0002D4 22               [24]  746 	ret
      0002D5                        747 00109$:
                                    748 ;	lib/src/i2c.c:87: if (I2STAT != 0x18) {
      0002D5 74 18            [12]  749 	mov	a,#0x18
      0002D7 B5 BD 02         [24]  750 	cjne	a,_I2STAT,00136$
      0002DA 80 07            [24]  751 	sjmp	00107$
      0002DC                        752 00136$:
                                    753 ;	lib/src/i2c.c:89: send_stop();
      0002DC 12 02 3A         [24]  754 	lcall	_send_stop
                                    755 ;	lib/src/i2c.c:90: return 0;
      0002DF 75 82 00         [24]  756 	mov	dpl,#0x00
      0002E2 22               [24]  757 	ret
      0002E3                        758 00107$:
                                    759 ;	lib/src/i2c.c:92: return 1;
      0002E3 75 82 01         [24]  760 	mov	dpl,#0x01
                                    761 ;	lib/src/i2c.c:94: }
      0002E6 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'I2C_Write'
                                    765 ;------------------------------------------------------------
                                    766 ;data                      Allocated to registers r7 
                                    767 ;i                         Allocated to registers r6 
                                    768 ;result                    Allocated to registers r7 
                                    769 ;------------------------------------------------------------
                                    770 ;	lib/src/i2c.c:95: uint8_t I2C_Write(uint8_t data)
                                    771 ;	-----------------------------------------
                                    772 ;	 function I2C_Write
                                    773 ;	-----------------------------------------
      0002E7                        774 _I2C_Write:
      0002E7 AF 82            [24]  775 	mov	r7,dpl
                                    776 ;	lib/src/i2c.c:101: for (i = 0; i < 8; ++i)
      0002E9 7E 00            [12]  777 	mov	r6,#0x00
      0002EB                        778 00108$:
                                    779 ;	lib/src/i2c.c:103: if (data & 0x01) {SDA_1;}
      0002EB EF               [12]  780 	mov	a,r7
      0002EC 30 E0 04         [24]  781 	jnb	acc.0,00102$
                                    782 ;	assignBit
      0002EF D2 92            [12]  783 	setb	_P12
      0002F1 80 02            [24]  784 	sjmp	00103$
      0002F3                        785 00102$:
                                    786 ;	lib/src/i2c.c:104: else {SDA_0;}
                                    787 ;	assignBit
      0002F3 C2 92            [12]  788 	clr	_P12
      0002F5                        789 00103$:
                                    790 ;	lib/src/i2c.c:105: I2C_DELAY;	//748n
      0002F5 75 12 01         [24]  791 	mov	_DelayT0_PARM_2,#0x01
      0002F8 75 13 00         [24]  792 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0002FB 90 00 05         [24]  793 	mov	dptr,#0x0005
      0002FE C0 07            [24]  794 	push	ar7
      000300 C0 06            [24]  795 	push	ar6
      000302 12 01 DB         [24]  796 	lcall	_DelayT0
                                    797 ;	lib/src/i2c.c:106: SCL_1;
                                    798 ;	assignBit
      000305 D2 91            [12]  799 	setb	_P11
                                    800 ;	lib/src/i2c.c:107: I2C_DELAY;
      000307 75 12 01         [24]  801 	mov	_DelayT0_PARM_2,#0x01
      00030A 75 13 00         [24]  802 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00030D 90 00 05         [24]  803 	mov	dptr,#0x0005
      000310 12 01 DB         [24]  804 	lcall	_DelayT0
      000313 D0 06            [24]  805 	pop	ar6
      000315 D0 07            [24]  806 	pop	ar7
                                    807 ;	lib/src/i2c.c:108: SCL_0;
                                    808 ;	assignBit
      000317 C2 91            [12]  809 	clr	_P11
                                    810 ;	lib/src/i2c.c:109: data >>= 1;	//1.37u
      000319 EF               [12]  811 	mov	a,r7
      00031A C3               [12]  812 	clr	c
      00031B 13               [12]  813 	rrc	a
      00031C FF               [12]  814 	mov	r7,a
                                    815 ;	lib/src/i2c.c:101: for (i = 0; i < 8; ++i)
      00031D 0E               [12]  816 	inc	r6
      00031E BE 08 00         [24]  817 	cjne	r6,#0x08,00130$
      000321                        818 00130$:
      000321 40 C8            [24]  819 	jc	00108$
                                    820 ;	lib/src/i2c.c:112: SDA_0;
                                    821 ;	assignBit
      000323 C2 92            [12]  822 	clr	_P12
                                    823 ;	lib/src/i2c.c:113: I2C_DELAY;
      000325 75 12 01         [24]  824 	mov	_DelayT0_PARM_2,#0x01
      000328 75 13 00         [24]  825 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00032B 90 00 05         [24]  826 	mov	dptr,#0x0005
      00032E 12 01 DB         [24]  827 	lcall	_DelayT0
                                    828 ;	lib/src/i2c.c:115: SCL_1;
                                    829 ;	assignBit
      000331 D2 91            [12]  830 	setb	_P11
                                    831 ;	lib/src/i2c.c:116: I2C_DELAY;
      000333 75 12 01         [24]  832 	mov	_DelayT0_PARM_2,#0x01
      000336 75 13 00         [24]  833 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000339 90 00 05         [24]  834 	mov	dptr,#0x0005
      00033C 12 01 DB         [24]  835 	lcall	_DelayT0
                                    836 ;	lib/src/i2c.c:117: SCL_0;
                                    837 ;	assignBit
      00033F C2 91            [12]  838 	clr	_P11
                                    839 ;	lib/src/i2c.c:118: I2C_DELAY;
      000341 75 12 01         [24]  840 	mov	_DelayT0_PARM_2,#0x01
      000344 75 13 00         [24]  841 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000347 90 00 05         [24]  842 	mov	dptr,#0x0005
      00034A 12 01 DB         [24]  843 	lcall	_DelayT0
                                    844 ;	lib/src/i2c.c:121: if(P12){
      00034D 30 92 04         [24]  845 	jnb	_P12,00106$
                                    846 ;	lib/src/i2c.c:122: result = 0;
      000350 7F 00            [12]  847 	mov	r7,#0x00
      000352 80 02            [24]  848 	sjmp	00107$
      000354                        849 00106$:
                                    850 ;	lib/src/i2c.c:124: result = 1;
      000354 7F 01            [12]  851 	mov	r7,#0x01
      000356                        852 00107$:
                                    853 ;	lib/src/i2c.c:126: I2C_DELAY;
      000356 75 12 01         [24]  854 	mov	_DelayT0_PARM_2,#0x01
      000359 75 13 00         [24]  855 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00035C 90 00 05         [24]  856 	mov	dptr,#0x0005
      00035F C0 07            [24]  857 	push	ar7
      000361 12 01 DB         [24]  858 	lcall	_DelayT0
      000364 D0 07            [24]  859 	pop	ar7
                                    860 ;	lib/src/i2c.c:128: return result;
      000366 8F 82            [24]  861 	mov	dpl,r7
                                    862 ;	lib/src/i2c.c:129: }
      000368 22               [24]  863 	ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'I2C_Write_nByte'
                                    866 ;------------------------------------------------------------
                                    867 ;length                    Allocated with name '_I2C_Write_nByte_PARM_2'
                                    868 ;pData                     Allocated to registers r5 r6 r7 
                                    869 ;i                         Allocated to registers r4 
                                    870 ;------------------------------------------------------------
                                    871 ;	lib/src/i2c.c:130: uint8_t I2C_Write_nByte(uint8_t *pData, uint8_t length)
                                    872 ;	-----------------------------------------
                                    873 ;	 function I2C_Write_nByte
                                    874 ;	-----------------------------------------
      000369                        875 _I2C_Write_nByte:
      000369 AD 82            [24]  876 	mov	r5,dpl
      00036B AE 83            [24]  877 	mov	r6,dph
      00036D AF F0            [24]  878 	mov	r7,b
                                    879 ;	lib/src/i2c.c:134: for (i = 0; i < length; ++i) {
      00036F 7C 00            [12]  880 	mov	r4,#0x00
      000371                        881 00108$:
      000371 C3               [12]  882 	clr	c
      000372 EC               [12]  883 	mov	a,r4
      000373 95 11            [12]  884 	subb	a,_I2C_Write_nByte_PARM_2
      000375 50 29            [24]  885 	jnc	00110$
                                    886 ;	lib/src/i2c.c:135: I2DAT = pData[i];
      000377 EC               [12]  887 	mov	a,r4
      000378 2D               [12]  888 	add	a,r5
      000379 F9               [12]  889 	mov	r1,a
      00037A E4               [12]  890 	clr	a
      00037B 3E               [12]  891 	addc	a,r6
      00037C FA               [12]  892 	mov	r2,a
      00037D 8F 03            [24]  893 	mov	ar3,r7
      00037F 89 82            [24]  894 	mov	dpl,r1
      000381 8A 83            [24]  895 	mov	dph,r2
      000383 8B F0            [24]  896 	mov	b,r3
      000385 12 04 4E         [24]  897 	lcall	__gptrget
      000388 F5 BC            [12]  898 	mov	_I2DAT,a
                                    899 ;	lib/src/i2c.c:136: SI = 0;
                                    900 ;	assignBit
      00038A C2 C3            [12]  901 	clr	_SI
                                    902 ;	lib/src/i2c.c:137: while (!SI);
      00038C                        903 00101$:
      00038C 30 C3 FD         [24]  904 	jnb	_SI,00101$
                                    905 ;	lib/src/i2c.c:138: if (I2STAT != 0x28) {
      00038F 74 28            [12]  906 	mov	a,#0x28
      000391 B5 BD 02         [24]  907 	cjne	a,_I2STAT,00134$
      000394 80 07            [24]  908 	sjmp	00109$
      000396                        909 00134$:
                                    910 ;	lib/src/i2c.c:140: send_stop();
      000396 12 02 3A         [24]  911 	lcall	_send_stop
                                    912 ;	lib/src/i2c.c:141: return 0;
      000399 75 82 00         [24]  913 	mov	dpl,#0x00
      00039C 22               [24]  914 	ret
      00039D                        915 00109$:
                                    916 ;	lib/src/i2c.c:134: for (i = 0; i < length; ++i) {
      00039D 0C               [12]  917 	inc	r4
      00039E 80 D1            [24]  918 	sjmp	00108$
      0003A0                        919 00110$:
                                    920 ;	lib/src/i2c.c:144: }
      0003A0 22               [24]  921 	ret
                                    922 ;------------------------------------------------------------
                                    923 ;Allocation info for local variables in function 'I2C_Read'
                                    924 ;------------------------------------------------------------
                                    925 ;AckNack                   Allocated to registers r7 
                                    926 ;u8Data                    Allocated to registers 
                                    927 ;------------------------------------------------------------
                                    928 ;	lib/src/i2c.c:151: uint8_t I2C_Read(uint8_t AckNack) 
                                    929 ;	-----------------------------------------
                                    930 ;	 function I2C_Read
                                    931 ;	-----------------------------------------
      0003A1                        932 _I2C_Read:
                                    933 ;	lib/src/i2c.c:154: if(AckNack)
      0003A1 E5 82            [12]  934 	mov	a,dpl
      0003A3 FF               [12]  935 	mov	r7,a
      0003A4 60 19            [24]  936 	jz	00112$
                                    937 ;	lib/src/i2c.c:156: AA = 1;
                                    938 ;	assignBit
      0003A6 D2 C2            [12]  939 	setb	_AA
                                    940 ;	lib/src/i2c.c:157: SI = 0;
                                    941 ;	assignBit
      0003A8 C2 C3            [12]  942 	clr	_SI
                                    943 ;	lib/src/i2c.c:158: while (!SI);
      0003AA                        944 00101$:
      0003AA 30 C3 FD         [24]  945 	jnb	_SI,00101$
                                    946 ;	lib/src/i2c.c:159: if (I2STAT != 0x50) { /*Master Receive Data ACK*/
      0003AD 74 50            [12]  947 	mov	a,#0x50
      0003AF B5 BD 02         [24]  948 	cjne	a,_I2STAT,00153$
      0003B2 80 07            [24]  949 	sjmp	00105$
      0003B4                        950 00153$:
                                    951 ;	lib/src/i2c.c:161: send_stop();
      0003B4 12 02 3A         [24]  952 	lcall	_send_stop
                                    953 ;	lib/src/i2c.c:162: return 0;
      0003B7 75 82 00         [24]  954 	mov	dpl,#0x00
      0003BA 22               [24]  955 	ret
      0003BB                        956 00105$:
                                    957 ;	lib/src/i2c.c:164: u8Data = I2DAT;
      0003BB 85 BC 82         [24]  958 	mov	dpl,_I2DAT
                                    959 ;	lib/src/i2c.c:165: return u8Data;
      0003BE 22               [24]  960 	ret
      0003BF                        961 00112$:
                                    962 ;	lib/src/i2c.c:169: AA = 0;
                                    963 ;	assignBit
      0003BF C2 C2            [12]  964 	clr	_AA
                                    965 ;	lib/src/i2c.c:170: SI = 0;
                                    966 ;	assignBit
      0003C1 C2 C3            [12]  967 	clr	_SI
                                    968 ;	lib/src/i2c.c:171: while (!SI);
      0003C3                        969 00106$:
      0003C3 30 C3 FD         [24]  970 	jnb	_SI,00106$
                                    971 ;	lib/src/i2c.c:172: if (I2STAT != 0x58) { /*Master Receive Data NACK*/
      0003C6 74 58            [12]  972 	mov	a,#0x58
      0003C8 B5 BD 02         [24]  973 	cjne	a,_I2STAT,00155$
      0003CB 80 07            [24]  974 	sjmp	00110$
      0003CD                        975 00155$:
                                    976 ;	lib/src/i2c.c:174: send_stop();
      0003CD 12 02 3A         [24]  977 	lcall	_send_stop
                                    978 ;	lib/src/i2c.c:175: return 0;
      0003D0 75 82 00         [24]  979 	mov	dpl,#0x00
      0003D3 22               [24]  980 	ret
      0003D4                        981 00110$:
                                    982 ;	lib/src/i2c.c:177: u8Data = I2DAT;
      0003D4 85 BC 82         [24]  983 	mov	dpl,_I2DAT
                                    984 ;	lib/src/i2c.c:178: return u8Data;
                                    985 ;	lib/src/i2c.c:180: }
      0003D7 22               [24]  986 	ret
                                    987 	.area CSEG    (CODE)
                                    988 	.area CONST   (CODE)
                                    989 	.area XINIT   (CODE)
                                    990 	.area CABS    (ABS,CODE)
