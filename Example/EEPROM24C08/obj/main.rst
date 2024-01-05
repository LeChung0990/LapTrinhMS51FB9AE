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
                                     12 	.globl _UART0_NUMBER
                                     13 	.globl _UART0_STRING
                                     14 	.globl _UART0_Init
                                     15 	.globl _Delay_Ms
                                     16 	.globl _I2C_Read
                                     17 	.globl _I2C_Write
                                     18 	.globl _I2C_Address
                                     19 	.globl _I2C_RepeatedStart
                                     20 	.globl _I2C_start
                                     21 	.globl _send_stop
                                     22 	.globl _I2C_Init
                                     23 	.globl _MOSI
                                     24 	.globl _P00
                                     25 	.globl _MISO
                                     26 	.globl _P01
                                     27 	.globl _RXD_1
                                     28 	.globl _P02
                                     29 	.globl _P03
                                     30 	.globl _STADC
                                     31 	.globl _P04
                                     32 	.globl _P05
                                     33 	.globl _TXD
                                     34 	.globl _P06
                                     35 	.globl _RXD
                                     36 	.globl _P07
                                     37 	.globl _IT0
                                     38 	.globl _IE0
                                     39 	.globl _IT1
                                     40 	.globl _IE1
                                     41 	.globl _TR0
                                     42 	.globl _TF0
                                     43 	.globl _TR1
                                     44 	.globl _TF1
                                     45 	.globl _P10
                                     46 	.globl _P11
                                     47 	.globl _P12
                                     48 	.globl _SCL
                                     49 	.globl _P13
                                     50 	.globl _SDA
                                     51 	.globl _P14
                                     52 	.globl _P15
                                     53 	.globl _TXD_1
                                     54 	.globl _P16
                                     55 	.globl _P17
                                     56 	.globl _RI
                                     57 	.globl _TI
                                     58 	.globl _RB8
                                     59 	.globl _TB8
                                     60 	.globl _REN
                                     61 	.globl _SM2
                                     62 	.globl _SM1
                                     63 	.globl _FE
                                     64 	.globl _SM0
                                     65 	.globl _P20
                                     66 	.globl _EX0
                                     67 	.globl _ET0
                                     68 	.globl _EX1
                                     69 	.globl _ET1
                                     70 	.globl _ES
                                     71 	.globl _EBOD
                                     72 	.globl _EADC
                                     73 	.globl _EA
                                     74 	.globl _P30
                                     75 	.globl _PX0
                                     76 	.globl _PT0
                                     77 	.globl _PX1
                                     78 	.globl _PT1
                                     79 	.globl _PS
                                     80 	.globl _PBOD
                                     81 	.globl _PADC
                                     82 	.globl _I2CPX
                                     83 	.globl _AA
                                     84 	.globl _SI
                                     85 	.globl _STO
                                     86 	.globl _STA
                                     87 	.globl _I2CEN
                                     88 	.globl _CM_RL2
                                     89 	.globl _TR2
                                     90 	.globl _TF2
                                     91 	.globl _P
                                     92 	.globl _OV
                                     93 	.globl _RS0
                                     94 	.globl _RS1
                                     95 	.globl _F0
                                     96 	.globl _AC
                                     97 	.globl _CY
                                     98 	.globl _CLRPWM
                                     99 	.globl _PWMF
                                    100 	.globl _LOAD
                                    101 	.globl _PWMRUN
                                    102 	.globl _ADCHS0
                                    103 	.globl _ADCHS1
                                    104 	.globl _ADCHS2
                                    105 	.globl _ADCHS3
                                    106 	.globl _ETGSEL0
                                    107 	.globl _ETGSEL1
                                    108 	.globl _ADCS
                                    109 	.globl _ADCF
                                    110 	.globl _RI_1
                                    111 	.globl _TI_1
                                    112 	.globl _RB8_1
                                    113 	.globl _TB8_1
                                    114 	.globl _REN_1
                                    115 	.globl _SM2_1
                                    116 	.globl _SM1_1
                                    117 	.globl _FE_1
                                    118 	.globl _SM0_1
                                    119 	.globl _EIPH1
                                    120 	.globl _EIP1
                                    121 	.globl _PMD
                                    122 	.globl _PMEN
                                    123 	.globl _PDTCNT
                                    124 	.globl _PDTEN
                                    125 	.globl _SCON_1
                                    126 	.globl _EIPH
                                    127 	.globl _AINDIDS
                                    128 	.globl _SPDR
                                    129 	.globl _SPSR
                                    130 	.globl _SPCR2
                                    131 	.globl _SPCR
                                    132 	.globl _CAPCON4
                                    133 	.globl _CAPCON3
                                    134 	.globl _B
                                    135 	.globl _EIP
                                    136 	.globl _C2H
                                    137 	.globl _C2L
                                    138 	.globl _PIF
                                    139 	.globl _PIPEN
                                    140 	.globl _PINEN
                                    141 	.globl _PICON
                                    142 	.globl _ADCCON0
                                    143 	.globl _C1H
                                    144 	.globl _C1L
                                    145 	.globl _C0H
                                    146 	.globl _C0L
                                    147 	.globl _ADCDLY
                                    148 	.globl _ADCCON2
                                    149 	.globl _ADCCON1
                                    150 	.globl _ACC
                                    151 	.globl _PWMCON1
                                    152 	.globl _PIOCON0
                                    153 	.globl _PWM3L
                                    154 	.globl _PWM2L
                                    155 	.globl _PWM1L
                                    156 	.globl _PWM0L
                                    157 	.globl _PWMPL
                                    158 	.globl _PWMCON0
                                    159 	.globl _FBD
                                    160 	.globl _PNP
                                    161 	.globl _PWM3H
                                    162 	.globl _PWM2H
                                    163 	.globl _PWM1H
                                    164 	.globl _PWM0H
                                    165 	.globl _PWMPH
                                    166 	.globl _PSW
                                    167 	.globl _ADCMPH
                                    168 	.globl _ADCMPL
                                    169 	.globl _PWM5L
                                    170 	.globl _TH2
                                    171 	.globl _PWM4L
                                    172 	.globl _TL2
                                    173 	.globl _RCMP2H
                                    174 	.globl _RCMP2L
                                    175 	.globl _T2MOD
                                    176 	.globl _T2CON
                                    177 	.globl _TA
                                    178 	.globl _PIOCON1
                                    179 	.globl _RH3
                                    180 	.globl _PWM5H
                                    181 	.globl _RL3
                                    182 	.globl _PWM4H
                                    183 	.globl _T3CON
                                    184 	.globl _ADCRH
                                    185 	.globl _ADCRL
                                    186 	.globl _I2ADDR
                                    187 	.globl _I2CON
                                    188 	.globl _I2TOC
                                    189 	.globl _I2CLK
                                    190 	.globl _I2STAT
                                    191 	.globl _I2DAT
                                    192 	.globl _SADDR_1
                                    193 	.globl _SADEN_1
                                    194 	.globl _SADEN
                                    195 	.globl _IP
                                    196 	.globl _PWMINTC
                                    197 	.globl _IPH
                                    198 	.globl _P2S
                                    199 	.globl _P1SR
                                    200 	.globl _P1M2
                                    201 	.globl _P1S
                                    202 	.globl _P1M1
                                    203 	.globl _P0SR
                                    204 	.globl _P0M2
                                    205 	.globl _P0S
                                    206 	.globl _P0M1
                                    207 	.globl _P3
                                    208 	.globl _IAPCN
                                    209 	.globl _IAPFD
                                    210 	.globl _P3SR
                                    211 	.globl _P3M2
                                    212 	.globl _P3S
                                    213 	.globl _P3M1
                                    214 	.globl _BODCON1
                                    215 	.globl _WDCON
                                    216 	.globl _SADDR
                                    217 	.globl _IE
                                    218 	.globl _IAPAH
                                    219 	.globl _IAPAL
                                    220 	.globl _IAPUEN
                                    221 	.globl _IAPTRG
                                    222 	.globl _BODCON0
                                    223 	.globl _AUXR1
                                    224 	.globl _P2
                                    225 	.globl _CHPCON
                                    226 	.globl _EIE1
                                    227 	.globl _EIE
                                    228 	.globl _SBUF_1
                                    229 	.globl _SBUF
                                    230 	.globl _SCON
                                    231 	.globl _CKEN
                                    232 	.globl _CKSWT
                                    233 	.globl _CKDIV
                                    234 	.globl _CAPCON2
                                    235 	.globl _CAPCON1
                                    236 	.globl _CAPCON0
                                    237 	.globl _SFRS
                                    238 	.globl _P1
                                    239 	.globl _WKCON
                                    240 	.globl _CKCON
                                    241 	.globl _TH1
                                    242 	.globl _TH0
                                    243 	.globl _TL1
                                    244 	.globl _TL0
                                    245 	.globl _TMOD
                                    246 	.globl _TCON
                                    247 	.globl _PCON
                                    248 	.globl _RWK
                                    249 	.globl _RCTRIM1
                                    250 	.globl _RCTRIM0
                                    251 	.globl _DPH
                                    252 	.globl _DPL
                                    253 	.globl _SP
                                    254 	.globl _P0
                                    255 	.globl _checkAddress
                                    256 	.globl _u8Data
                                    257 	.globl _Res
                                    258 	.globl _High
                                    259 	.globl _Low
                                    260 ;--------------------------------------------------------
                                    261 ; special function registers
                                    262 ;--------------------------------------------------------
                                    263 	.area RSEG    (ABS,DATA)
      000000                        264 	.org 0x0000
                           000080   265 _P0	=	0x0080
                           000081   266 _SP	=	0x0081
                           000082   267 _DPL	=	0x0082
                           000083   268 _DPH	=	0x0083
                           000084   269 _RCTRIM0	=	0x0084
                           000085   270 _RCTRIM1	=	0x0085
                           000086   271 _RWK	=	0x0086
                           000087   272 _PCON	=	0x0087
                           000088   273 _TCON	=	0x0088
                           000089   274 _TMOD	=	0x0089
                           00008A   275 _TL0	=	0x008a
                           00008B   276 _TL1	=	0x008b
                           00008C   277 _TH0	=	0x008c
                           00008D   278 _TH1	=	0x008d
                           00008E   279 _CKCON	=	0x008e
                           00008F   280 _WKCON	=	0x008f
                           000090   281 _P1	=	0x0090
                           000091   282 _SFRS	=	0x0091
                           000092   283 _CAPCON0	=	0x0092
                           000093   284 _CAPCON1	=	0x0093
                           000094   285 _CAPCON2	=	0x0094
                           000095   286 _CKDIV	=	0x0095
                           000096   287 _CKSWT	=	0x0096
                           000097   288 _CKEN	=	0x0097
                           000098   289 _SCON	=	0x0098
                           000099   290 _SBUF	=	0x0099
                           00009A   291 _SBUF_1	=	0x009a
                           00009B   292 _EIE	=	0x009b
                           00009C   293 _EIE1	=	0x009c
                           00009F   294 _CHPCON	=	0x009f
                           0000A0   295 _P2	=	0x00a0
                           0000A2   296 _AUXR1	=	0x00a2
                           0000A3   297 _BODCON0	=	0x00a3
                           0000A4   298 _IAPTRG	=	0x00a4
                           0000A5   299 _IAPUEN	=	0x00a5
                           0000A6   300 _IAPAL	=	0x00a6
                           0000A7   301 _IAPAH	=	0x00a7
                           0000A8   302 _IE	=	0x00a8
                           0000A9   303 _SADDR	=	0x00a9
                           0000AA   304 _WDCON	=	0x00aa
                           0000AB   305 _BODCON1	=	0x00ab
                           0000AC   306 _P3M1	=	0x00ac
                           0000AC   307 _P3S	=	0x00ac
                           0000AD   308 _P3M2	=	0x00ad
                           0000AD   309 _P3SR	=	0x00ad
                           0000AE   310 _IAPFD	=	0x00ae
                           0000AF   311 _IAPCN	=	0x00af
                           0000B0   312 _P3	=	0x00b0
                           0000B1   313 _P0M1	=	0x00b1
                           0000B1   314 _P0S	=	0x00b1
                           0000B2   315 _P0M2	=	0x00b2
                           0000B2   316 _P0SR	=	0x00b2
                           0000B3   317 _P1M1	=	0x00b3
                           0000B3   318 _P1S	=	0x00b3
                           0000B4   319 _P1M2	=	0x00b4
                           0000B4   320 _P1SR	=	0x00b4
                           0000B5   321 _P2S	=	0x00b5
                           0000B7   322 _IPH	=	0x00b7
                           0000B7   323 _PWMINTC	=	0x00b7
                           0000B8   324 _IP	=	0x00b8
                           0000B9   325 _SADEN	=	0x00b9
                           0000BA   326 _SADEN_1	=	0x00ba
                           0000BB   327 _SADDR_1	=	0x00bb
                           0000BC   328 _I2DAT	=	0x00bc
                           0000BD   329 _I2STAT	=	0x00bd
                           0000BE   330 _I2CLK	=	0x00be
                           0000BF   331 _I2TOC	=	0x00bf
                           0000C0   332 _I2CON	=	0x00c0
                           0000C1   333 _I2ADDR	=	0x00c1
                           0000C2   334 _ADCRL	=	0x00c2
                           0000C3   335 _ADCRH	=	0x00c3
                           0000C4   336 _T3CON	=	0x00c4
                           0000C4   337 _PWM4H	=	0x00c4
                           0000C5   338 _RL3	=	0x00c5
                           0000C5   339 _PWM5H	=	0x00c5
                           0000C6   340 _RH3	=	0x00c6
                           0000C6   341 _PIOCON1	=	0x00c6
                           0000C7   342 _TA	=	0x00c7
                           0000C8   343 _T2CON	=	0x00c8
                           0000C9   344 _T2MOD	=	0x00c9
                           0000CA   345 _RCMP2L	=	0x00ca
                           0000CB   346 _RCMP2H	=	0x00cb
                           0000CC   347 _TL2	=	0x00cc
                           0000CC   348 _PWM4L	=	0x00cc
                           0000CD   349 _TH2	=	0x00cd
                           0000CD   350 _PWM5L	=	0x00cd
                           0000CE   351 _ADCMPL	=	0x00ce
                           0000CF   352 _ADCMPH	=	0x00cf
                           0000D0   353 _PSW	=	0x00d0
                           0000D1   354 _PWMPH	=	0x00d1
                           0000D2   355 _PWM0H	=	0x00d2
                           0000D3   356 _PWM1H	=	0x00d3
                           0000D4   357 _PWM2H	=	0x00d4
                           0000D5   358 _PWM3H	=	0x00d5
                           0000D6   359 _PNP	=	0x00d6
                           0000D7   360 _FBD	=	0x00d7
                           0000D8   361 _PWMCON0	=	0x00d8
                           0000D9   362 _PWMPL	=	0x00d9
                           0000DA   363 _PWM0L	=	0x00da
                           0000DB   364 _PWM1L	=	0x00db
                           0000DC   365 _PWM2L	=	0x00dc
                           0000DD   366 _PWM3L	=	0x00dd
                           0000DE   367 _PIOCON0	=	0x00de
                           0000DF   368 _PWMCON1	=	0x00df
                           0000E0   369 _ACC	=	0x00e0
                           0000E1   370 _ADCCON1	=	0x00e1
                           0000E2   371 _ADCCON2	=	0x00e2
                           0000E3   372 _ADCDLY	=	0x00e3
                           0000E4   373 _C0L	=	0x00e4
                           0000E5   374 _C0H	=	0x00e5
                           0000E6   375 _C1L	=	0x00e6
                           0000E7   376 _C1H	=	0x00e7
                           0000E8   377 _ADCCON0	=	0x00e8
                           0000E9   378 _PICON	=	0x00e9
                           0000EA   379 _PINEN	=	0x00ea
                           0000EB   380 _PIPEN	=	0x00eb
                           0000EC   381 _PIF	=	0x00ec
                           0000ED   382 _C2L	=	0x00ed
                           0000EE   383 _C2H	=	0x00ee
                           0000EF   384 _EIP	=	0x00ef
                           0000F0   385 _B	=	0x00f0
                           0000F1   386 _CAPCON3	=	0x00f1
                           0000F2   387 _CAPCON4	=	0x00f2
                           0000F3   388 _SPCR	=	0x00f3
                           0000F3   389 _SPCR2	=	0x00f3
                           0000F4   390 _SPSR	=	0x00f4
                           0000F5   391 _SPDR	=	0x00f5
                           0000F6   392 _AINDIDS	=	0x00f6
                           0000F7   393 _EIPH	=	0x00f7
                           0000F8   394 _SCON_1	=	0x00f8
                           0000F9   395 _PDTEN	=	0x00f9
                           0000FA   396 _PDTCNT	=	0x00fa
                           0000FB   397 _PMEN	=	0x00fb
                           0000FC   398 _PMD	=	0x00fc
                           0000FE   399 _EIP1	=	0x00fe
                           0000FF   400 _EIPH1	=	0x00ff
                                    401 ;--------------------------------------------------------
                                    402 ; special function bits
                                    403 ;--------------------------------------------------------
                                    404 	.area RSEG    (ABS,DATA)
      000000                        405 	.org 0x0000
                           0000FF   406 _SM0_1	=	0x00ff
                           0000FF   407 _FE_1	=	0x00ff
                           0000FE   408 _SM1_1	=	0x00fe
                           0000FD   409 _SM2_1	=	0x00fd
                           0000FC   410 _REN_1	=	0x00fc
                           0000FB   411 _TB8_1	=	0x00fb
                           0000FA   412 _RB8_1	=	0x00fa
                           0000F9   413 _TI_1	=	0x00f9
                           0000F8   414 _RI_1	=	0x00f8
                           0000EF   415 _ADCF	=	0x00ef
                           0000EE   416 _ADCS	=	0x00ee
                           0000ED   417 _ETGSEL1	=	0x00ed
                           0000EC   418 _ETGSEL0	=	0x00ec
                           0000EB   419 _ADCHS3	=	0x00eb
                           0000EA   420 _ADCHS2	=	0x00ea
                           0000E9   421 _ADCHS1	=	0x00e9
                           0000E8   422 _ADCHS0	=	0x00e8
                           0000DF   423 _PWMRUN	=	0x00df
                           0000DE   424 _LOAD	=	0x00de
                           0000DD   425 _PWMF	=	0x00dd
                           0000DC   426 _CLRPWM	=	0x00dc
                           0000D7   427 _CY	=	0x00d7
                           0000D6   428 _AC	=	0x00d6
                           0000D5   429 _F0	=	0x00d5
                           0000D4   430 _RS1	=	0x00d4
                           0000D3   431 _RS0	=	0x00d3
                           0000D2   432 _OV	=	0x00d2
                           0000D0   433 _P	=	0x00d0
                           0000CF   434 _TF2	=	0x00cf
                           0000CA   435 _TR2	=	0x00ca
                           0000C8   436 _CM_RL2	=	0x00c8
                           0000C6   437 _I2CEN	=	0x00c6
                           0000C5   438 _STA	=	0x00c5
                           0000C4   439 _STO	=	0x00c4
                           0000C3   440 _SI	=	0x00c3
                           0000C2   441 _AA	=	0x00c2
                           0000C0   442 _I2CPX	=	0x00c0
                           0000BE   443 _PADC	=	0x00be
                           0000BD   444 _PBOD	=	0x00bd
                           0000BC   445 _PS	=	0x00bc
                           0000BB   446 _PT1	=	0x00bb
                           0000BA   447 _PX1	=	0x00ba
                           0000B9   448 _PT0	=	0x00b9
                           0000B8   449 _PX0	=	0x00b8
                           0000B0   450 _P30	=	0x00b0
                           0000AF   451 _EA	=	0x00af
                           0000AE   452 _EADC	=	0x00ae
                           0000AD   453 _EBOD	=	0x00ad
                           0000AC   454 _ES	=	0x00ac
                           0000AB   455 _ET1	=	0x00ab
                           0000AA   456 _EX1	=	0x00aa
                           0000A9   457 _ET0	=	0x00a9
                           0000A8   458 _EX0	=	0x00a8
                           0000A0   459 _P20	=	0x00a0
                           00009F   460 _SM0	=	0x009f
                           00009F   461 _FE	=	0x009f
                           00009E   462 _SM1	=	0x009e
                           00009D   463 _SM2	=	0x009d
                           00009C   464 _REN	=	0x009c
                           00009B   465 _TB8	=	0x009b
                           00009A   466 _RB8	=	0x009a
                           000099   467 _TI	=	0x0099
                           000098   468 _RI	=	0x0098
                           000097   469 _P17	=	0x0097
                           000096   470 _P16	=	0x0096
                           000096   471 _TXD_1	=	0x0096
                           000095   472 _P15	=	0x0095
                           000094   473 _P14	=	0x0094
                           000094   474 _SDA	=	0x0094
                           000093   475 _P13	=	0x0093
                           000093   476 _SCL	=	0x0093
                           000092   477 _P12	=	0x0092
                           000091   478 _P11	=	0x0091
                           000090   479 _P10	=	0x0090
                           00008F   480 _TF1	=	0x008f
                           00008E   481 _TR1	=	0x008e
                           00008D   482 _TF0	=	0x008d
                           00008C   483 _TR0	=	0x008c
                           00008B   484 _IE1	=	0x008b
                           00008A   485 _IT1	=	0x008a
                           000089   486 _IE0	=	0x0089
                           000088   487 _IT0	=	0x0088
                           000087   488 _P07	=	0x0087
                           000087   489 _RXD	=	0x0087
                           000086   490 _P06	=	0x0086
                           000086   491 _TXD	=	0x0086
                           000085   492 _P05	=	0x0085
                           000084   493 _P04	=	0x0084
                           000084   494 _STADC	=	0x0084
                           000083   495 _P03	=	0x0083
                           000082   496 _P02	=	0x0082
                           000082   497 _RXD_1	=	0x0082
                           000081   498 _P01	=	0x0081
                           000081   499 _MISO	=	0x0081
                           000080   500 _P00	=	0x0080
                           000080   501 _MOSI	=	0x0080
                                    502 ;--------------------------------------------------------
                                    503 ; overlayable register banks
                                    504 ;--------------------------------------------------------
                                    505 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        506 	.ds 8
                                    507 ;--------------------------------------------------------
                                    508 ; internal ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area DSEG    (DATA)
      000008                        511 _Low::
      000008                        512 	.ds 1
      000009                        513 _High::
      000009                        514 	.ds 1
      00000A                        515 _Res::
      00000A                        516 	.ds 2
      00000C                        517 _u8Data::
      00000C                        518 	.ds 10
      000016                        519 _checkAddress::
      000016                        520 	.ds 1
                                    521 ;--------------------------------------------------------
                                    522 ; overlayable items in internal ram
                                    523 ;--------------------------------------------------------
                                    524 ;--------------------------------------------------------
                                    525 ; Stack segment in internal ram
                                    526 ;--------------------------------------------------------
                                    527 	.area SSEG
      000021                        528 __start__stack:
      000021                        529 	.ds	1
                                    530 
                                    531 ;--------------------------------------------------------
                                    532 ; indirectly addressable internal ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area ISEG    (DATA)
                                    535 ;--------------------------------------------------------
                                    536 ; absolute internal ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area IABS    (ABS,DATA)
                                    539 	.area IABS    (ABS,DATA)
                                    540 ;--------------------------------------------------------
                                    541 ; bit data
                                    542 ;--------------------------------------------------------
                                    543 	.area BSEG    (BIT)
                                    544 ;--------------------------------------------------------
                                    545 ; paged external ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area PSEG    (PAG,XDATA)
                                    548 ;--------------------------------------------------------
                                    549 ; uninitialized external ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area XSEG    (XDATA)
                                    552 ;--------------------------------------------------------
                                    553 ; absolute external ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area XABS    (ABS,XDATA)
                                    556 ;--------------------------------------------------------
                                    557 ; initialized external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area XISEG   (XDATA)
                                    560 	.area HOME    (CODE)
                                    561 	.area GSINIT0 (CODE)
                                    562 	.area GSINIT1 (CODE)
                                    563 	.area GSINIT2 (CODE)
                                    564 	.area GSINIT3 (CODE)
                                    565 	.area GSINIT4 (CODE)
                                    566 	.area GSINIT5 (CODE)
                                    567 	.area GSINIT  (CODE)
                                    568 	.area GSFINAL (CODE)
                                    569 	.area CSEG    (CODE)
                                    570 ;--------------------------------------------------------
                                    571 ; interrupt vector
                                    572 ;--------------------------------------------------------
                                    573 	.area HOME    (CODE)
      000000                        574 __interrupt_vect:
      000000 02 00 06         [24]  575 	ljmp	__sdcc_gsinit_startup
                                    576 ;--------------------------------------------------------
                                    577 ; global & static initialisations
                                    578 ;--------------------------------------------------------
                                    579 	.area HOME    (CODE)
                                    580 	.area GSINIT  (CODE)
                                    581 	.area GSFINAL (CODE)
                                    582 	.area GSINIT  (CODE)
                                    583 	.globl __sdcc_gsinit_startup
                                    584 	.globl __sdcc_program_startup
                                    585 	.globl __start__stack
                                    586 	.globl __mcs51_genXINIT
                                    587 	.globl __mcs51_genXRAMCLEAR
                                    588 	.globl __mcs51_genRAMCLEAR
                                    589 ;	main.c:13: uint8_t checkAddress = 0;
      00005F 75 16 00         [24]  590 	mov	_checkAddress,#0x00
                                    591 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  592 	ljmp	__sdcc_program_startup
                                    593 ;--------------------------------------------------------
                                    594 ; Home
                                    595 ;--------------------------------------------------------
                                    596 	.area HOME    (CODE)
                                    597 	.area HOME    (CODE)
      000003                        598 __sdcc_program_startup:
      000003 02 00 65         [24]  599 	ljmp	_main
                                    600 ;	return from main will return to caller
                                    601 ;--------------------------------------------------------
                                    602 ; code
                                    603 ;--------------------------------------------------------
                                    604 	.area CSEG    (CODE)
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'main'
                                    607 ;------------------------------------------------------------
                                    608 ;	main.c:15: void main(void)
                                    609 ;	-----------------------------------------
                                    610 ;	 function main
                                    611 ;	-----------------------------------------
      000065                        612 _main:
                           000007   613 	ar7 = 0x07
                           000006   614 	ar6 = 0x06
                           000005   615 	ar5 = 0x05
                           000004   616 	ar4 = 0x04
                           000003   617 	ar3 = 0x03
                           000002   618 	ar2 = 0x02
                           000001   619 	ar1 = 0x01
                           000000   620 	ar0 = 0x00
                                    621 ;	main.c:19: I2C_Init();
      000065 12 00 E1         [24]  622 	lcall	_I2C_Init
                                    623 ;	main.c:20: UART0_Init();
      000068 12 02 63         [24]  624 	lcall	_UART0_Init
                                    625 ;	main.c:23: UART0_STRING("Start:");
      00006B 90 04 97         [24]  626 	mov	dptr,#___str_0
      00006E 75 F0 80         [24]  627 	mov	b,#0x80
      000071 12 02 B4         [24]  628 	lcall	_UART0_STRING
                                    629 ;	main.c:34: I2C_start();
      000074 12 01 24         [24]  630 	lcall	_I2C_start
                                    631 ;	main.c:35: I2C_Address(0xA0, 0);
      000077 75 17 00         [24]  632 	mov	_I2C_Address_PARM_2,#0x00
      00007A 75 82 A0         [24]  633 	mov	dpl,#0xa0
      00007D 12 01 5B         [24]  634 	lcall	_I2C_Address
                                    635 ;	main.c:36: I2C_Write(0x00);
      000080 75 82 00         [24]  636 	mov	dpl,#0x00
      000083 12 01 90         [24]  637 	lcall	_I2C_Write
                                    638 ;	main.c:37: I2C_Write(0x34);
      000086 75 82 34         [24]  639 	mov	dpl,#0x34
      000089 12 01 90         [24]  640 	lcall	_I2C_Write
                                    641 ;	main.c:38: send_stop();
      00008C 12 00 F7         [24]  642 	lcall	_send_stop
                                    643 ;	main.c:40: Delay_Ms(10);
      00008F 90 00 0A         [24]  644 	mov	dptr,#0x000a
      000092 12 02 24         [24]  645 	lcall	_Delay_Ms
                                    646 ;	main.c:42: I2C_start();
      000095 12 01 24         [24]  647 	lcall	_I2C_start
                                    648 ;	main.c:43: I2C_Address(0xA0, 0);
      000098 75 17 00         [24]  649 	mov	_I2C_Address_PARM_2,#0x00
      00009B 75 82 A0         [24]  650 	mov	dpl,#0xa0
      00009E 12 01 5B         [24]  651 	lcall	_I2C_Address
                                    652 ;	main.c:44: I2C_Write(0x00);
      0000A1 75 82 00         [24]  653 	mov	dpl,#0x00
      0000A4 12 01 90         [24]  654 	lcall	_I2C_Write
                                    655 ;	main.c:46: I2C_RepeatedStart();
      0000A7 12 01 45         [24]  656 	lcall	_I2C_RepeatedStart
                                    657 ;	main.c:47: I2C_Address(0xA1, 1);
      0000AA 75 17 01         [24]  658 	mov	_I2C_Address_PARM_2,#0x01
      0000AD 75 82 A1         [24]  659 	mov	dpl,#0xa1
      0000B0 12 01 5B         [24]  660 	lcall	_I2C_Address
                                    661 ;	main.c:48: u8Data[1] = I2C_Read(0);
      0000B3 75 82 00         [24]  662 	mov	dpl,#0x00
      0000B6 12 01 DD         [24]  663 	lcall	_I2C_Read
      0000B9 E5 82            [12]  664 	mov	a,dpl
      0000BB F5 0D            [12]  665 	mov	(_u8Data + 0x0001),a
                                    666 ;	main.c:49: send_stop();
      0000BD 12 00 F7         [24]  667 	lcall	_send_stop
                                    668 ;	main.c:51: UART0_NUMBER(u8Data[0]);
      0000C0 AE 0C            [24]  669 	mov	r6,_u8Data
      0000C2 7F 00            [12]  670 	mov	r7,#0x00
      0000C4 8E 82            [24]  671 	mov	dpl,r6
      0000C6 8F 83            [24]  672 	mov	dph,r7
      0000C8 12 03 0B         [24]  673 	lcall	_UART0_NUMBER
                                    674 ;	main.c:52: UART0_STRING(",");
      0000CB 90 04 9E         [24]  675 	mov	dptr,#___str_1
      0000CE 75 F0 80         [24]  676 	mov	b,#0x80
      0000D1 12 02 B4         [24]  677 	lcall	_UART0_STRING
                                    678 ;	main.c:53: UART0_NUMBER(u8Data[1]);
      0000D4 AE 0D            [24]  679 	mov	r6,(_u8Data + 0x0001)
      0000D6 7F 00            [12]  680 	mov	r7,#0x00
      0000D8 8E 82            [24]  681 	mov	dpl,r6
      0000DA 8F 83            [24]  682 	mov	dph,r7
      0000DC 12 03 0B         [24]  683 	lcall	_UART0_NUMBER
                                    684 ;	main.c:54: while (1) {
      0000DF                        685 00102$:
                                    686 ;	main.c:57: }
      0000DF 80 FE            [24]  687 	sjmp	00102$
                                    688 	.area CSEG    (CODE)
                                    689 	.area CONST   (CODE)
                                    690 	.area CONST   (CODE)
      000497                        691 ___str_0:
      000497 53 74 61 72 74 3A      692 	.ascii "Start:"
      00049D 00                     693 	.db 0x00
                                    694 	.area CSEG    (CODE)
                                    695 	.area CONST   (CODE)
      00049E                        696 ___str_1:
      00049E 2C                     697 	.ascii ","
      00049F 00                     698 	.db 0x00
                                    699 	.area CSEG    (CODE)
                                    700 	.area XINIT   (CODE)
                                    701 	.area CABS    (ABS,CODE)
