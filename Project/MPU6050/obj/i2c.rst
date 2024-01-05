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
                                    243 	.globl _I2C_Write_nByte_PARM_2
                                    244 	.globl _I2C_Address_PARM_2
                                    245 	.globl _I2C_Init
                                    246 	.globl _send_stop
                                    247 	.globl _I2C_start
                                    248 	.globl _I2C_RepeatedStart
                                    249 	.globl _I2C_Address
                                    250 	.globl _I2C_Write
                                    251 	.globl _I2C_Write_nByte
                                    252 	.globl _I2C_Read
                                    253 ;--------------------------------------------------------
                                    254 ; special function registers
                                    255 ;--------------------------------------------------------
                                    256 	.area RSEG    (ABS,DATA)
      000000                        257 	.org 0x0000
                           000080   258 _P0	=	0x0080
                           000081   259 _SP	=	0x0081
                           000082   260 _DPL	=	0x0082
                           000083   261 _DPH	=	0x0083
                           000084   262 _RCTRIM0	=	0x0084
                           000085   263 _RCTRIM1	=	0x0085
                           000086   264 _RWK	=	0x0086
                           000087   265 _PCON	=	0x0087
                           000088   266 _TCON	=	0x0088
                           000089   267 _TMOD	=	0x0089
                           00008A   268 _TL0	=	0x008a
                           00008B   269 _TL1	=	0x008b
                           00008C   270 _TH0	=	0x008c
                           00008D   271 _TH1	=	0x008d
                           00008E   272 _CKCON	=	0x008e
                           00008F   273 _WKCON	=	0x008f
                           000090   274 _P1	=	0x0090
                           000091   275 _SFRS	=	0x0091
                           000092   276 _CAPCON0	=	0x0092
                           000093   277 _CAPCON1	=	0x0093
                           000094   278 _CAPCON2	=	0x0094
                           000095   279 _CKDIV	=	0x0095
                           000096   280 _CKSWT	=	0x0096
                           000097   281 _CKEN	=	0x0097
                           000098   282 _SCON	=	0x0098
                           000099   283 _SBUF	=	0x0099
                           00009A   284 _SBUF_1	=	0x009a
                           00009B   285 _EIE	=	0x009b
                           00009C   286 _EIE1	=	0x009c
                           00009F   287 _CHPCON	=	0x009f
                           0000A0   288 _P2	=	0x00a0
                           0000A2   289 _AUXR1	=	0x00a2
                           0000A3   290 _BODCON0	=	0x00a3
                           0000A4   291 _IAPTRG	=	0x00a4
                           0000A5   292 _IAPUEN	=	0x00a5
                           0000A6   293 _IAPAL	=	0x00a6
                           0000A7   294 _IAPAH	=	0x00a7
                           0000A8   295 _IE	=	0x00a8
                           0000A9   296 _SADDR	=	0x00a9
                           0000AA   297 _WDCON	=	0x00aa
                           0000AB   298 _BODCON1	=	0x00ab
                           0000AC   299 _P3M1	=	0x00ac
                           0000AC   300 _P3S	=	0x00ac
                           0000AD   301 _P3M2	=	0x00ad
                           0000AD   302 _P3SR	=	0x00ad
                           0000AE   303 _IAPFD	=	0x00ae
                           0000AF   304 _IAPCN	=	0x00af
                           0000B0   305 _P3	=	0x00b0
                           0000B1   306 _P0M1	=	0x00b1
                           0000B1   307 _P0S	=	0x00b1
                           0000B2   308 _P0M2	=	0x00b2
                           0000B2   309 _P0SR	=	0x00b2
                           0000B3   310 _P1M1	=	0x00b3
                           0000B3   311 _P1S	=	0x00b3
                           0000B4   312 _P1M2	=	0x00b4
                           0000B4   313 _P1SR	=	0x00b4
                           0000B5   314 _P2S	=	0x00b5
                           0000B7   315 _IPH	=	0x00b7
                           0000B7   316 _PWMINTC	=	0x00b7
                           0000B8   317 _IP	=	0x00b8
                           0000B9   318 _SADEN	=	0x00b9
                           0000BA   319 _SADEN_1	=	0x00ba
                           0000BB   320 _SADDR_1	=	0x00bb
                           0000BC   321 _I2DAT	=	0x00bc
                           0000BD   322 _I2STAT	=	0x00bd
                           0000BE   323 _I2CLK	=	0x00be
                           0000BF   324 _I2TOC	=	0x00bf
                           0000C0   325 _I2CON	=	0x00c0
                           0000C1   326 _I2ADDR	=	0x00c1
                           0000C2   327 _ADCRL	=	0x00c2
                           0000C3   328 _ADCRH	=	0x00c3
                           0000C4   329 _T3CON	=	0x00c4
                           0000C4   330 _PWM4H	=	0x00c4
                           0000C5   331 _RL3	=	0x00c5
                           0000C5   332 _PWM5H	=	0x00c5
                           0000C6   333 _RH3	=	0x00c6
                           0000C6   334 _PIOCON1	=	0x00c6
                           0000C7   335 _TA	=	0x00c7
                           0000C8   336 _T2CON	=	0x00c8
                           0000C9   337 _T2MOD	=	0x00c9
                           0000CA   338 _RCMP2L	=	0x00ca
                           0000CB   339 _RCMP2H	=	0x00cb
                           0000CC   340 _TL2	=	0x00cc
                           0000CC   341 _PWM4L	=	0x00cc
                           0000CD   342 _TH2	=	0x00cd
                           0000CD   343 _PWM5L	=	0x00cd
                           0000CE   344 _ADCMPL	=	0x00ce
                           0000CF   345 _ADCMPH	=	0x00cf
                           0000D0   346 _PSW	=	0x00d0
                           0000D1   347 _PWMPH	=	0x00d1
                           0000D2   348 _PWM0H	=	0x00d2
                           0000D3   349 _PWM1H	=	0x00d3
                           0000D4   350 _PWM2H	=	0x00d4
                           0000D5   351 _PWM3H	=	0x00d5
                           0000D6   352 _PNP	=	0x00d6
                           0000D7   353 _FBD	=	0x00d7
                           0000D8   354 _PWMCON0	=	0x00d8
                           0000D9   355 _PWMPL	=	0x00d9
                           0000DA   356 _PWM0L	=	0x00da
                           0000DB   357 _PWM1L	=	0x00db
                           0000DC   358 _PWM2L	=	0x00dc
                           0000DD   359 _PWM3L	=	0x00dd
                           0000DE   360 _PIOCON0	=	0x00de
                           0000DF   361 _PWMCON1	=	0x00df
                           0000E0   362 _ACC	=	0x00e0
                           0000E1   363 _ADCCON1	=	0x00e1
                           0000E2   364 _ADCCON2	=	0x00e2
                           0000E3   365 _ADCDLY	=	0x00e3
                           0000E4   366 _C0L	=	0x00e4
                           0000E5   367 _C0H	=	0x00e5
                           0000E6   368 _C1L	=	0x00e6
                           0000E7   369 _C1H	=	0x00e7
                           0000E8   370 _ADCCON0	=	0x00e8
                           0000E9   371 _PICON	=	0x00e9
                           0000EA   372 _PINEN	=	0x00ea
                           0000EB   373 _PIPEN	=	0x00eb
                           0000EC   374 _PIF	=	0x00ec
                           0000ED   375 _C2L	=	0x00ed
                           0000EE   376 _C2H	=	0x00ee
                           0000EF   377 _EIP	=	0x00ef
                           0000F0   378 _B	=	0x00f0
                           0000F1   379 _CAPCON3	=	0x00f1
                           0000F2   380 _CAPCON4	=	0x00f2
                           0000F3   381 _SPCR	=	0x00f3
                           0000F3   382 _SPCR2	=	0x00f3
                           0000F4   383 _SPSR	=	0x00f4
                           0000F5   384 _SPDR	=	0x00f5
                           0000F6   385 _AINDIDS	=	0x00f6
                           0000F7   386 _EIPH	=	0x00f7
                           0000F8   387 _SCON_1	=	0x00f8
                           0000F9   388 _PDTEN	=	0x00f9
                           0000FA   389 _PDTCNT	=	0x00fa
                           0000FB   390 _PMEN	=	0x00fb
                           0000FC   391 _PMD	=	0x00fc
                           0000FE   392 _EIP1	=	0x00fe
                           0000FF   393 _EIPH1	=	0x00ff
                                    394 ;--------------------------------------------------------
                                    395 ; special function bits
                                    396 ;--------------------------------------------------------
                                    397 	.area RSEG    (ABS,DATA)
      000000                        398 	.org 0x0000
                           0000FF   399 _SM0_1	=	0x00ff
                           0000FF   400 _FE_1	=	0x00ff
                           0000FE   401 _SM1_1	=	0x00fe
                           0000FD   402 _SM2_1	=	0x00fd
                           0000FC   403 _REN_1	=	0x00fc
                           0000FB   404 _TB8_1	=	0x00fb
                           0000FA   405 _RB8_1	=	0x00fa
                           0000F9   406 _TI_1	=	0x00f9
                           0000F8   407 _RI_1	=	0x00f8
                           0000EF   408 _ADCF	=	0x00ef
                           0000EE   409 _ADCS	=	0x00ee
                           0000ED   410 _ETGSEL1	=	0x00ed
                           0000EC   411 _ETGSEL0	=	0x00ec
                           0000EB   412 _ADCHS3	=	0x00eb
                           0000EA   413 _ADCHS2	=	0x00ea
                           0000E9   414 _ADCHS1	=	0x00e9
                           0000E8   415 _ADCHS0	=	0x00e8
                           0000DF   416 _PWMRUN	=	0x00df
                           0000DE   417 _LOAD	=	0x00de
                           0000DD   418 _PWMF	=	0x00dd
                           0000DC   419 _CLRPWM	=	0x00dc
                           0000D7   420 _CY	=	0x00d7
                           0000D6   421 _AC	=	0x00d6
                           0000D5   422 _F0	=	0x00d5
                           0000D4   423 _RS1	=	0x00d4
                           0000D3   424 _RS0	=	0x00d3
                           0000D2   425 _OV	=	0x00d2
                           0000D0   426 _P	=	0x00d0
                           0000CF   427 _TF2	=	0x00cf
                           0000CA   428 _TR2	=	0x00ca
                           0000C8   429 _CM_RL2	=	0x00c8
                           0000C6   430 _I2CEN	=	0x00c6
                           0000C5   431 _STA	=	0x00c5
                           0000C4   432 _STO	=	0x00c4
                           0000C3   433 _SI	=	0x00c3
                           0000C2   434 _AA	=	0x00c2
                           0000C0   435 _I2CPX	=	0x00c0
                           0000BE   436 _PADC	=	0x00be
                           0000BD   437 _PBOD	=	0x00bd
                           0000BC   438 _PS	=	0x00bc
                           0000BB   439 _PT1	=	0x00bb
                           0000BA   440 _PX1	=	0x00ba
                           0000B9   441 _PT0	=	0x00b9
                           0000B8   442 _PX0	=	0x00b8
                           0000B0   443 _P30	=	0x00b0
                           0000AF   444 _EA	=	0x00af
                           0000AE   445 _EADC	=	0x00ae
                           0000AD   446 _EBOD	=	0x00ad
                           0000AC   447 _ES	=	0x00ac
                           0000AB   448 _ET1	=	0x00ab
                           0000AA   449 _EX1	=	0x00aa
                           0000A9   450 _ET0	=	0x00a9
                           0000A8   451 _EX0	=	0x00a8
                           0000A0   452 _P20	=	0x00a0
                           00009F   453 _SM0	=	0x009f
                           00009F   454 _FE	=	0x009f
                           00009E   455 _SM1	=	0x009e
                           00009D   456 _SM2	=	0x009d
                           00009C   457 _REN	=	0x009c
                           00009B   458 _TB8	=	0x009b
                           00009A   459 _RB8	=	0x009a
                           000099   460 _TI	=	0x0099
                           000098   461 _RI	=	0x0098
                           000097   462 _P17	=	0x0097
                           000096   463 _P16	=	0x0096
                           000096   464 _TXD_1	=	0x0096
                           000095   465 _P15	=	0x0095
                           000094   466 _P14	=	0x0094
                           000094   467 _SDA	=	0x0094
                           000093   468 _P13	=	0x0093
                           000093   469 _SCL	=	0x0093
                           000092   470 _P12	=	0x0092
                           000091   471 _P11	=	0x0091
                           000090   472 _P10	=	0x0090
                           00008F   473 _TF1	=	0x008f
                           00008E   474 _TR1	=	0x008e
                           00008D   475 _TF0	=	0x008d
                           00008C   476 _TR0	=	0x008c
                           00008B   477 _IE1	=	0x008b
                           00008A   478 _IT1	=	0x008a
                           000089   479 _IE0	=	0x0089
                           000088   480 _IT0	=	0x0088
                           000087   481 _P07	=	0x0087
                           000087   482 _RXD	=	0x0087
                           000086   483 _P06	=	0x0086
                           000086   484 _TXD	=	0x0086
                           000085   485 _P05	=	0x0085
                           000084   486 _P04	=	0x0084
                           000084   487 _STADC	=	0x0084
                           000083   488 _P03	=	0x0083
                           000082   489 _P02	=	0x0082
                           000082   490 _RXD_1	=	0x0082
                           000081   491 _P01	=	0x0081
                           000081   492 _MISO	=	0x0081
                           000080   493 _P00	=	0x0080
                           000080   494 _MOSI	=	0x0080
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable register banks
                                    497 ;--------------------------------------------------------
                                    498 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        499 	.ds 8
                                    500 ;--------------------------------------------------------
                                    501 ; internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area DSEG    (DATA)
      00000F                        504 _I2C_Address_PARM_2:
      00000F                        505 	.ds 1
      000010                        506 _I2C_Write_nByte_PARM_2:
      000010                        507 	.ds 1
                                    508 ;--------------------------------------------------------
                                    509 ; overlayable items in internal ram
                                    510 ;--------------------------------------------------------
                                    511 	.area	OSEG    (OVR,DATA)
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
      000000                        525 _send_stop_sloc0_1_0:
      000000                        526 	.ds 1
                                    527 ;--------------------------------------------------------
                                    528 ; paged external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area PSEG    (PAG,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; uninitialized external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XSEG    (XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; absolute external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XABS    (ABS,XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; initialized external ram data
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
                                    570 ;Allocation info for local variables in function 'I2C_Init'
                                    571 ;------------------------------------------------------------
                                    572 ;	lib/src/i2c.c:7: void I2C_Init(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function I2C_Init
                                    575 ;	-----------------------------------------
      00017D                        576 _I2C_Init:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
                                    585 ;	lib/src/i2c.c:9: I2CLK = 39;
      00017D 75 BE 27         [24]  586 	mov	_I2CLK,#0x27
                                    587 ;	lib/src/i2c.c:12: P1M1 &= ~(1 << 3);
      000180 53 B3 F7         [24]  588 	anl	_P1M1,#0xf7
                                    589 ;	lib/src/i2c.c:13: P1M2 &= ~(1 << 3);
      000183 53 B4 F7         [24]  590 	anl	_P1M2,#0xf7
                                    591 ;	lib/src/i2c.c:16: P1M1 &= ~(1 << 4);
      000186 53 B3 EF         [24]  592 	anl	_P1M1,#0xef
                                    593 ;	lib/src/i2c.c:17: P1M2 &= ~(1 << 4);
      000189 53 B4 EF         [24]  594 	anl	_P1M2,#0xef
                                    595 ;	lib/src/i2c.c:19: P13=1;
                                    596 ;	assignBit
      00018C D2 93            [12]  597 	setb	_P13
                                    598 ;	lib/src/i2c.c:20: P14=1;
                                    599 ;	assignBit
      00018E D2 94            [12]  600 	setb	_P14
                                    601 ;	lib/src/i2c.c:22: I2CEN=1;
                                    602 ;	assignBit
      000190 D2 C6            [12]  603 	setb	_I2CEN
                                    604 ;	lib/src/i2c.c:23: }
      000192 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'send_stop'
                                    608 ;------------------------------------------------------------
                                    609 ;t                         Allocated to registers r5 r6 
                                    610 ;u8TimeOut                 Allocated to registers r7 
                                    611 ;------------------------------------------------------------
                                    612 ;	lib/src/i2c.c:24: uint8_t send_stop(void)
                                    613 ;	-----------------------------------------
                                    614 ;	 function send_stop
                                    615 ;	-----------------------------------------
      000193                        616 _send_stop:
                                    617 ;	lib/src/i2c.c:29: STA = 0;
                                    618 ;	assignBit
      000193 C2 C5            [12]  619 	clr	_STA
                                    620 ;	lib/src/i2c.c:30: STO = 1;
                                    621 ;	assignBit
      000195 D2 C4            [12]  622 	setb	_STO
                                    623 ;	lib/src/i2c.c:31: SI = 0;
                                    624 ;	assignBit
      000197 C2 C3            [12]  625 	clr	_SI
                                    626 ;	lib/src/i2c.c:33: u8TimeOut = 0;
      000199 7F 00            [12]  627 	mov	r7,#0x00
                                    628 ;	lib/src/i2c.c:34: while (1) {
      00019B 7D 01            [12]  629 	mov	r5,#0x01
      00019D 7E 00            [12]  630 	mov	r6,#0x00
      00019F                        631 00106$:
                                    632 ;	lib/src/i2c.c:35: if (I2STAT == 0xF8) {
      00019F 74 F8            [12]  633 	mov	a,#0xf8
      0001A1 B5 BD 02         [24]  634 	cjne	a,_I2STAT,00122$
      0001A4 80 0F            [24]  635 	sjmp	00107$
      0001A6                        636 00122$:
                                    637 ;	lib/src/i2c.c:38: if (!t) {
      0001A6 ED               [12]  638 	mov	a,r5
      0001A7 4E               [12]  639 	orl	a,r6
      0001A8 70 04            [24]  640 	jnz	00104$
                                    641 ;	lib/src/i2c.c:39: u8TimeOut = 1;
      0001AA 7F 01            [12]  642 	mov	r7,#0x01
                                    643 ;	lib/src/i2c.c:40: break;
      0001AC 80 07            [24]  644 	sjmp	00107$
      0001AE                        645 00104$:
                                    646 ;	lib/src/i2c.c:42: ++t;
      0001AE 0D               [12]  647 	inc	r5
      0001AF BD 00 ED         [24]  648 	cjne	r5,#0x00,00106$
      0001B2 0E               [12]  649 	inc	r6
      0001B3 80 EA            [24]  650 	sjmp	00106$
      0001B5                        651 00107$:
                                    652 ;	lib/src/i2c.c:44: return (!u8TimeOut);
      0001B5 EF               [12]  653 	mov	a,r7
      0001B6 B4 01 00         [24]  654 	cjne	a,#0x01,00125$
      0001B9                        655 00125$:
      0001B9 92 00            [24]  656 	mov  _send_stop_sloc0_1_0,c
      0001BB E4               [12]  657 	clr	a
      0001BC 33               [12]  658 	rlc	a
      0001BD F5 82            [12]  659 	mov	dpl,a
                                    660 ;	lib/src/i2c.c:45: }
      0001BF 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'I2C_start'
                                    664 ;------------------------------------------------------------
                                    665 ;	lib/src/i2c.c:46: uint8_t I2C_start(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function I2C_start
                                    668 ;	-----------------------------------------
      0001C0                        669 _I2C_start:
                                    670 ;	lib/src/i2c.c:49: if (I2STAT != 0xF8) {
      0001C0 74 F8            [12]  671 	mov	a,#0xf8
      0001C2 B5 BD 02         [24]  672 	cjne	a,_I2STAT,00126$
      0001C5 80 04            [24]  673 	sjmp	00102$
      0001C7                        674 00126$:
                                    675 ;	lib/src/i2c.c:50: return 0;
      0001C7 75 82 00         [24]  676 	mov	dpl,#0x00
      0001CA 22               [24]  677 	ret
      0001CB                        678 00102$:
                                    679 ;	lib/src/i2c.c:53: STO = 0;
                                    680 ;	assignBit
      0001CB C2 C4            [12]  681 	clr	_STO
                                    682 ;	lib/src/i2c.c:54: STA = 1;
                                    683 ;	assignBit
      0001CD D2 C5            [12]  684 	setb	_STA
                                    685 ;	lib/src/i2c.c:55: SI = 0;
                                    686 ;	assignBit
      0001CF C2 C3            [12]  687 	clr	_SI
                                    688 ;	lib/src/i2c.c:56: while (!SI);
      0001D1                        689 00103$:
      0001D1 30 C3 FD         [24]  690 	jnb	_SI,00103$
                                    691 ;	lib/src/i2c.c:57: if (I2STAT != 0x08) {
      0001D4 74 08            [12]  692 	mov	a,#0x08
      0001D6 B5 BD 01         [24]  693 	cjne	a,_I2STAT,00128$
      0001D9 22               [24]  694 	ret
      0001DA                        695 00128$:
                                    696 ;	lib/src/i2c.c:59: send_stop();
      0001DA 12 01 93         [24]  697 	lcall	_send_stop
                                    698 ;	lib/src/i2c.c:60: return 0;
      0001DD 75 82 00         [24]  699 	mov	dpl,#0x00
                                    700 ;	lib/src/i2c.c:62: }
      0001E0 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'I2C_RepeatedStart'
                                    704 ;------------------------------------------------------------
                                    705 ;	lib/src/i2c.c:63: uint8_t I2C_RepeatedStart(void)
                                    706 ;	-----------------------------------------
                                    707 ;	 function I2C_RepeatedStart
                                    708 ;	-----------------------------------------
      0001E1                        709 _I2C_RepeatedStart:
                                    710 ;	lib/src/i2c.c:65: STO = 0;
                                    711 ;	assignBit
      0001E1 C2 C4            [12]  712 	clr	_STO
                                    713 ;	lib/src/i2c.c:66: STA = 1;
                                    714 ;	assignBit
      0001E3 D2 C5            [12]  715 	setb	_STA
                                    716 ;	lib/src/i2c.c:67: SI = 0;
                                    717 ;	assignBit
      0001E5 C2 C3            [12]  718 	clr	_SI
                                    719 ;	lib/src/i2c.c:68: while (!SI);
      0001E7                        720 00101$:
      0001E7 30 C3 FD         [24]  721 	jnb	_SI,00101$
                                    722 ;	lib/src/i2c.c:70: if (I2STAT != 0x10) { 
      0001EA 74 10            [12]  723 	mov	a,#0x10
      0001EC B5 BD 01         [24]  724 	cjne	a,_I2STAT,00121$
      0001EF 22               [24]  725 	ret
      0001F0                        726 00121$:
                                    727 ;	lib/src/i2c.c:72: send_stop();
      0001F0 12 01 93         [24]  728 	lcall	_send_stop
                                    729 ;	lib/src/i2c.c:73: return 0;
      0001F3 75 82 00         [24]  730 	mov	dpl,#0x00
                                    731 ;	lib/src/i2c.c:75: }
      0001F6 22               [24]  732 	ret
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'I2C_Address'
                                    735 ;------------------------------------------------------------
                                    736 ;WriteRead                 Allocated with name '_I2C_Address_PARM_2'
                                    737 ;Address                   Allocated to registers r7 
                                    738 ;------------------------------------------------------------
                                    739 ;	lib/src/i2c.c:76: uint8_t I2C_Address(uint8_t Address, uint8_t WriteRead){ /*1:Read,0:Write*/
                                    740 ;	-----------------------------------------
                                    741 ;	 function I2C_Address
                                    742 ;	-----------------------------------------
      0001F7                        743 _I2C_Address:
      0001F7 AF 82            [24]  744 	mov	r7,dpl
                                    745 ;	lib/src/i2c.c:79: STA = 0;
                                    746 ;	assignBit
      0001F9 C2 C5            [12]  747 	clr	_STA
                                    748 ;	lib/src/i2c.c:80: STO = 0;
                                    749 ;	assignBit
      0001FB C2 C4            [12]  750 	clr	_STO
                                    751 ;	lib/src/i2c.c:81: I2DAT = Address;
      0001FD 8F BC            [24]  752 	mov	_I2DAT,r7
                                    753 ;	lib/src/i2c.c:82: SI = 0;
                                    754 ;	assignBit
      0001FF C2 C3            [12]  755 	clr	_SI
                                    756 ;	lib/src/i2c.c:83: while (!SI);
      000201                        757 00101$:
      000201 30 C3 FD         [24]  758 	jnb	_SI,00101$
                                    759 ;	lib/src/i2c.c:84: if(WriteRead)	/*Read*/
      000204 E5 0F            [12]  760 	mov	a,_I2C_Address_PARM_2
      000206 60 12            [24]  761 	jz	00109$
                                    762 ;	lib/src/i2c.c:87: if (I2STAT != 0x40) {
      000208 74 40            [12]  763 	mov	a,#0x40
      00020A B5 BD 02         [24]  764 	cjne	a,_I2STAT,00135$
      00020D 80 07            [24]  765 	sjmp	00105$
      00020F                        766 00135$:
                                    767 ;	lib/src/i2c.c:89: send_stop();
      00020F 12 01 93         [24]  768 	lcall	_send_stop
                                    769 ;	lib/src/i2c.c:90: return 0;
      000212 75 82 00         [24]  770 	mov	dpl,#0x00
      000215 22               [24]  771 	ret
      000216                        772 00105$:
                                    773 ;	lib/src/i2c.c:92: return 1;
      000216 75 82 01         [24]  774 	mov	dpl,#0x01
      000219 22               [24]  775 	ret
      00021A                        776 00109$:
                                    777 ;	lib/src/i2c.c:98: if (I2STAT != 0x18) {
      00021A 74 18            [12]  778 	mov	a,#0x18
      00021C B5 BD 02         [24]  779 	cjne	a,_I2STAT,00136$
      00021F 80 07            [24]  780 	sjmp	00107$
      000221                        781 00136$:
                                    782 ;	lib/src/i2c.c:100: send_stop();
      000221 12 01 93         [24]  783 	lcall	_send_stop
                                    784 ;	lib/src/i2c.c:101: return 0;
      000224 75 82 00         [24]  785 	mov	dpl,#0x00
      000227 22               [24]  786 	ret
      000228                        787 00107$:
                                    788 ;	lib/src/i2c.c:103: return 1;
      000228 75 82 01         [24]  789 	mov	dpl,#0x01
                                    790 ;	lib/src/i2c.c:105: }
      00022B 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'I2C_Write'
                                    794 ;------------------------------------------------------------
                                    795 ;u8Data                    Allocated to registers 
                                    796 ;------------------------------------------------------------
                                    797 ;	lib/src/i2c.c:106: uint8_t I2C_Write(uint8_t u8Data)
                                    798 ;	-----------------------------------------
                                    799 ;	 function I2C_Write
                                    800 ;	-----------------------------------------
      00022C                        801 _I2C_Write:
      00022C 85 82 BC         [24]  802 	mov	_I2DAT,dpl
                                    803 ;	lib/src/i2c.c:110: SI = 0;
                                    804 ;	assignBit
      00022F C2 C3            [12]  805 	clr	_SI
                                    806 ;	lib/src/i2c.c:111: while (!SI);
      000231                        807 00101$:
      000231 30 C3 FD         [24]  808 	jnb	_SI,00101$
                                    809 ;	lib/src/i2c.c:113: if (I2STAT != 0x28) {
      000234 74 28            [12]  810 	mov	a,#0x28
      000236 B5 BD 01         [24]  811 	cjne	a,_I2STAT,00121$
      000239 22               [24]  812 	ret
      00023A                        813 00121$:
                                    814 ;	lib/src/i2c.c:115: send_stop();
      00023A 12 01 93         [24]  815 	lcall	_send_stop
                                    816 ;	lib/src/i2c.c:116: return 0;
      00023D 75 82 00         [24]  817 	mov	dpl,#0x00
                                    818 ;	lib/src/i2c.c:118: }
      000240 22               [24]  819 	ret
                                    820 ;------------------------------------------------------------
                                    821 ;Allocation info for local variables in function 'I2C_Write_nByte'
                                    822 ;------------------------------------------------------------
                                    823 ;length                    Allocated with name '_I2C_Write_nByte_PARM_2'
                                    824 ;pData                     Allocated to registers r5 r6 r7 
                                    825 ;i                         Allocated to registers r4 
                                    826 ;------------------------------------------------------------
                                    827 ;	lib/src/i2c.c:119: uint8_t I2C_Write_nByte(uint8_t *pData, uint8_t length)
                                    828 ;	-----------------------------------------
                                    829 ;	 function I2C_Write_nByte
                                    830 ;	-----------------------------------------
      000241                        831 _I2C_Write_nByte:
      000241 AD 82            [24]  832 	mov	r5,dpl
      000243 AE 83            [24]  833 	mov	r6,dph
      000245 AF F0            [24]  834 	mov	r7,b
                                    835 ;	lib/src/i2c.c:123: for (i = 0; i < length; ++i) {
      000247 7C 00            [12]  836 	mov	r4,#0x00
      000249                        837 00108$:
      000249 C3               [12]  838 	clr	c
      00024A EC               [12]  839 	mov	a,r4
      00024B 95 10            [12]  840 	subb	a,_I2C_Write_nByte_PARM_2
      00024D 50 29            [24]  841 	jnc	00110$
                                    842 ;	lib/src/i2c.c:124: I2DAT = pData[i];
      00024F EC               [12]  843 	mov	a,r4
      000250 2D               [12]  844 	add	a,r5
      000251 F9               [12]  845 	mov	r1,a
      000252 E4               [12]  846 	clr	a
      000253 3E               [12]  847 	addc	a,r6
      000254 FA               [12]  848 	mov	r2,a
      000255 8F 03            [24]  849 	mov	ar3,r7
      000257 89 82            [24]  850 	mov	dpl,r1
      000259 8A 83            [24]  851 	mov	dph,r2
      00025B 8B F0            [24]  852 	mov	b,r3
      00025D 12 04 A5         [24]  853 	lcall	__gptrget
      000260 F5 BC            [12]  854 	mov	_I2DAT,a
                                    855 ;	lib/src/i2c.c:125: SI = 0;
                                    856 ;	assignBit
      000262 C2 C3            [12]  857 	clr	_SI
                                    858 ;	lib/src/i2c.c:126: while (!SI);
      000264                        859 00101$:
      000264 30 C3 FD         [24]  860 	jnb	_SI,00101$
                                    861 ;	lib/src/i2c.c:127: if (I2STAT != 0x28) {
      000267 74 28            [12]  862 	mov	a,#0x28
      000269 B5 BD 02         [24]  863 	cjne	a,_I2STAT,00134$
      00026C 80 07            [24]  864 	sjmp	00109$
      00026E                        865 00134$:
                                    866 ;	lib/src/i2c.c:129: send_stop();
      00026E 12 01 93         [24]  867 	lcall	_send_stop
                                    868 ;	lib/src/i2c.c:130: return 0;
      000271 75 82 00         [24]  869 	mov	dpl,#0x00
      000274 22               [24]  870 	ret
      000275                        871 00109$:
                                    872 ;	lib/src/i2c.c:123: for (i = 0; i < length; ++i) {
      000275 0C               [12]  873 	inc	r4
      000276 80 D1            [24]  874 	sjmp	00108$
      000278                        875 00110$:
                                    876 ;	lib/src/i2c.c:133: }
      000278 22               [24]  877 	ret
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'I2C_Read'
                                    880 ;------------------------------------------------------------
                                    881 ;AckNack                   Allocated to registers r7 
                                    882 ;u8Data                    Allocated to registers 
                                    883 ;------------------------------------------------------------
                                    884 ;	lib/src/i2c.c:134: uint8_t I2C_Read(uint8_t AckNack) /*1:Ack, 0: Nack*/
                                    885 ;	-----------------------------------------
                                    886 ;	 function I2C_Read
                                    887 ;	-----------------------------------------
      000279                        888 _I2C_Read:
                                    889 ;	lib/src/i2c.c:137: if(AckNack)
      000279 E5 82            [12]  890 	mov	a,dpl
      00027B FF               [12]  891 	mov	r7,a
      00027C 60 19            [24]  892 	jz	00112$
                                    893 ;	lib/src/i2c.c:139: AA = 1;
                                    894 ;	assignBit
      00027E D2 C2            [12]  895 	setb	_AA
                                    896 ;	lib/src/i2c.c:140: SI = 0;
                                    897 ;	assignBit
      000280 C2 C3            [12]  898 	clr	_SI
                                    899 ;	lib/src/i2c.c:141: while (!SI);
      000282                        900 00101$:
      000282 30 C3 FD         [24]  901 	jnb	_SI,00101$
                                    902 ;	lib/src/i2c.c:142: if (I2STAT != 0x50) { /*Master Receive Data ACK*/
      000285 74 50            [12]  903 	mov	a,#0x50
      000287 B5 BD 02         [24]  904 	cjne	a,_I2STAT,00153$
      00028A 80 07            [24]  905 	sjmp	00105$
      00028C                        906 00153$:
                                    907 ;	lib/src/i2c.c:144: send_stop();
      00028C 12 01 93         [24]  908 	lcall	_send_stop
                                    909 ;	lib/src/i2c.c:145: return 0;
      00028F 75 82 00         [24]  910 	mov	dpl,#0x00
      000292 22               [24]  911 	ret
      000293                        912 00105$:
                                    913 ;	lib/src/i2c.c:147: u8Data = I2DAT;
      000293 85 BC 82         [24]  914 	mov	dpl,_I2DAT
                                    915 ;	lib/src/i2c.c:148: return u8Data;
      000296 22               [24]  916 	ret
      000297                        917 00112$:
                                    918 ;	lib/src/i2c.c:152: AA = 0;
                                    919 ;	assignBit
      000297 C2 C2            [12]  920 	clr	_AA
                                    921 ;	lib/src/i2c.c:153: SI = 0;
                                    922 ;	assignBit
      000299 C2 C3            [12]  923 	clr	_SI
                                    924 ;	lib/src/i2c.c:154: while (!SI);
      00029B                        925 00106$:
      00029B 30 C3 FD         [24]  926 	jnb	_SI,00106$
                                    927 ;	lib/src/i2c.c:155: if (I2STAT != 0x58) { /*Master Receive Data NACK*/
      00029E 74 58            [12]  928 	mov	a,#0x58
      0002A0 B5 BD 02         [24]  929 	cjne	a,_I2STAT,00155$
      0002A3 80 07            [24]  930 	sjmp	00110$
      0002A5                        931 00155$:
                                    932 ;	lib/src/i2c.c:157: send_stop();
      0002A5 12 01 93         [24]  933 	lcall	_send_stop
                                    934 ;	lib/src/i2c.c:158: return 0;
      0002A8 75 82 00         [24]  935 	mov	dpl,#0x00
      0002AB 22               [24]  936 	ret
      0002AC                        937 00110$:
                                    938 ;	lib/src/i2c.c:160: u8Data = I2DAT;
      0002AC 85 BC 82         [24]  939 	mov	dpl,_I2DAT
                                    940 ;	lib/src/i2c.c:161: return u8Data;
                                    941 ;	lib/src/i2c.c:163: }
      0002AF 22               [24]  942 	ret
                                    943 	.area CSEG    (CODE)
                                    944 	.area CONST   (CODE)
                                    945 	.area XINIT   (CODE)
                                    946 	.area CABS    (ABS,CODE)
