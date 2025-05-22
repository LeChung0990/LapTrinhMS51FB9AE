                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sat Apr 26 09:36:18 2025
                                      5 ;--------------------------------------------------------
                                      6 	.module i2c
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _DelayT0
                                     13 	.globl _MOSI
                                     14 	.globl _P00
                                     15 	.globl _MISO
                                     16 	.globl _P01
                                     17 	.globl _RXD_1
                                     18 	.globl _P02
                                     19 	.globl _P03
                                     20 	.globl _STADC
                                     21 	.globl _P04
                                     22 	.globl _P05
                                     23 	.globl _TXD
                                     24 	.globl _P06
                                     25 	.globl _RXD
                                     26 	.globl _P07
                                     27 	.globl _IT0
                                     28 	.globl _IE0
                                     29 	.globl _IT1
                                     30 	.globl _IE1
                                     31 	.globl _TR0
                                     32 	.globl _TF0
                                     33 	.globl _TR1
                                     34 	.globl _TF1
                                     35 	.globl _P10
                                     36 	.globl _P11
                                     37 	.globl _P12
                                     38 	.globl _SCL
                                     39 	.globl _P13
                                     40 	.globl _SDA
                                     41 	.globl _P14
                                     42 	.globl _P15
                                     43 	.globl _TXD_1
                                     44 	.globl _P16
                                     45 	.globl _P17
                                     46 	.globl _RI
                                     47 	.globl _TI
                                     48 	.globl _RB8
                                     49 	.globl _TB8
                                     50 	.globl _REN
                                     51 	.globl _SM2
                                     52 	.globl _SM1
                                     53 	.globl _FE
                                     54 	.globl _SM0
                                     55 	.globl _P20
                                     56 	.globl _EX0
                                     57 	.globl _ET0
                                     58 	.globl _EX1
                                     59 	.globl _ET1
                                     60 	.globl _ES
                                     61 	.globl _EBOD
                                     62 	.globl _EADC
                                     63 	.globl _EA
                                     64 	.globl _P30
                                     65 	.globl _PX0
                                     66 	.globl _PT0
                                     67 	.globl _PX1
                                     68 	.globl _PT1
                                     69 	.globl _PS
                                     70 	.globl _PBOD
                                     71 	.globl _PADC
                                     72 	.globl _I2CPX
                                     73 	.globl _AA
                                     74 	.globl _SI
                                     75 	.globl _STO
                                     76 	.globl _STA
                                     77 	.globl _I2CEN
                                     78 	.globl _CM_RL2
                                     79 	.globl _TR2
                                     80 	.globl _TF2
                                     81 	.globl _P
                                     82 	.globl _OV
                                     83 	.globl _RS0
                                     84 	.globl _RS1
                                     85 	.globl _F0
                                     86 	.globl _AC
                                     87 	.globl _CY
                                     88 	.globl _CLRPWM
                                     89 	.globl _PWMF
                                     90 	.globl _LOAD
                                     91 	.globl _PWMRUN
                                     92 	.globl _ADCHS0
                                     93 	.globl _ADCHS1
                                     94 	.globl _ADCHS2
                                     95 	.globl _ADCHS3
                                     96 	.globl _ETGSEL0
                                     97 	.globl _ETGSEL1
                                     98 	.globl _ADCS
                                     99 	.globl _ADCF
                                    100 	.globl _RI_1
                                    101 	.globl _TI_1
                                    102 	.globl _RB8_1
                                    103 	.globl _TB8_1
                                    104 	.globl _REN_1
                                    105 	.globl _SM2_1
                                    106 	.globl _SM1_1
                                    107 	.globl _FE_1
                                    108 	.globl _SM0_1
                                    109 	.globl _EIPH1
                                    110 	.globl _EIP1
                                    111 	.globl _PMD
                                    112 	.globl _PMEN
                                    113 	.globl _PDTCNT
                                    114 	.globl _PDTEN
                                    115 	.globl _SCON_1
                                    116 	.globl _EIPH
                                    117 	.globl _AINDIDS
                                    118 	.globl _SPDR
                                    119 	.globl _SPSR
                                    120 	.globl _SPCR2
                                    121 	.globl _SPCR
                                    122 	.globl _CAPCON4
                                    123 	.globl _CAPCON3
                                    124 	.globl _B
                                    125 	.globl _EIP
                                    126 	.globl _C2H
                                    127 	.globl _C2L
                                    128 	.globl _PIF
                                    129 	.globl _PIPEN
                                    130 	.globl _PINEN
                                    131 	.globl _PICON
                                    132 	.globl _ADCCON0
                                    133 	.globl _C1H
                                    134 	.globl _C1L
                                    135 	.globl _C0H
                                    136 	.globl _C0L
                                    137 	.globl _ADCDLY
                                    138 	.globl _ADCCON2
                                    139 	.globl _ADCCON1
                                    140 	.globl _ACC
                                    141 	.globl _PWMCON1
                                    142 	.globl _PIOCON0
                                    143 	.globl _PWM3L
                                    144 	.globl _PWM2L
                                    145 	.globl _PWM1L
                                    146 	.globl _PWM0L
                                    147 	.globl _PWMPL
                                    148 	.globl _PWMCON0
                                    149 	.globl _FBD
                                    150 	.globl _PNP
                                    151 	.globl _PWM3H
                                    152 	.globl _PWM2H
                                    153 	.globl _PWM1H
                                    154 	.globl _PWM0H
                                    155 	.globl _PWMPH
                                    156 	.globl _PSW
                                    157 	.globl _ADCMPH
                                    158 	.globl _ADCMPL
                                    159 	.globl _PWM5L
                                    160 	.globl _TH2
                                    161 	.globl _PWM4L
                                    162 	.globl _TL2
                                    163 	.globl _RCMP2H
                                    164 	.globl _RCMP2L
                                    165 	.globl _T2MOD
                                    166 	.globl _T2CON
                                    167 	.globl _TA
                                    168 	.globl _PIOCON1
                                    169 	.globl _RH3
                                    170 	.globl _PWM5H
                                    171 	.globl _RL3
                                    172 	.globl _PWM4H
                                    173 	.globl _T3CON
                                    174 	.globl _ADCRH
                                    175 	.globl _ADCRL
                                    176 	.globl _I2ADDR
                                    177 	.globl _I2CON
                                    178 	.globl _I2TOC
                                    179 	.globl _I2CLK
                                    180 	.globl _I2STAT
                                    181 	.globl _I2DAT
                                    182 	.globl _SADDR_1
                                    183 	.globl _SADEN_1
                                    184 	.globl _SADEN
                                    185 	.globl _IP
                                    186 	.globl _PWMINTC
                                    187 	.globl _IPH
                                    188 	.globl _P2S
                                    189 	.globl _P1SR
                                    190 	.globl _P1M2
                                    191 	.globl _P1S
                                    192 	.globl _P1M1
                                    193 	.globl _P0SR
                                    194 	.globl _P0M2
                                    195 	.globl _P0S
                                    196 	.globl _P0M1
                                    197 	.globl _P3
                                    198 	.globl _IAPCN
                                    199 	.globl _IAPFD
                                    200 	.globl _P3SR
                                    201 	.globl _P3M2
                                    202 	.globl _P3S
                                    203 	.globl _P3M1
                                    204 	.globl _BODCON1
                                    205 	.globl _WDCON
                                    206 	.globl _SADDR
                                    207 	.globl _IE
                                    208 	.globl _IAPAH
                                    209 	.globl _IAPAL
                                    210 	.globl _IAPUEN
                                    211 	.globl _IAPTRG
                                    212 	.globl _BODCON0
                                    213 	.globl _AUXR1
                                    214 	.globl _P2
                                    215 	.globl _CHPCON
                                    216 	.globl _EIE1
                                    217 	.globl _EIE
                                    218 	.globl _SBUF_1
                                    219 	.globl _SBUF
                                    220 	.globl _SCON
                                    221 	.globl _CKEN
                                    222 	.globl _CKSWT
                                    223 	.globl _CKDIV
                                    224 	.globl _CAPCON2
                                    225 	.globl _CAPCON1
                                    226 	.globl _CAPCON0
                                    227 	.globl _SFRS
                                    228 	.globl _P1
                                    229 	.globl _WKCON
                                    230 	.globl _CKCON
                                    231 	.globl _TH1
                                    232 	.globl _TH0
                                    233 	.globl _TL1
                                    234 	.globl _TL0
                                    235 	.globl _TMOD
                                    236 	.globl _TCON
                                    237 	.globl _PCON
                                    238 	.globl _RWK
                                    239 	.globl _RCTRIM1
                                    240 	.globl _RCTRIM0
                                    241 	.globl _DPH
                                    242 	.globl _DPL
                                    243 	.globl _SP
                                    244 	.globl _P0
                                    245 	.globl _data_read_PARM_4
                                    246 	.globl _data_read_PARM_3
                                    247 	.globl _data_read_PARM_2
                                    248 	.globl _data_write_PARM_4
                                    249 	.globl _data_write_PARM_3
                                    250 	.globl _data_write_PARM_2
                                    251 	.globl _i2c_init
                                    252 	.globl _i2c_start
                                    253 	.globl _i2c_stop
                                    254 	.globl _i2c_write
                                    255 	.globl _i2c_read
                                    256 	.globl _data_write
                                    257 	.globl _data_read
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
      00003C                        509 _data_write_PARM_2:
      00003C                        510 	.ds 1
      00003D                        511 _data_write_PARM_3:
      00003D                        512 	.ds 1
      00003E                        513 _data_write_PARM_4:
      00003E                        514 	.ds 3
      000041                        515 _data_read_PARM_2:
      000041                        516 	.ds 1
      000042                        517 _data_read_PARM_3:
      000042                        518 	.ds 1
      000043                        519 _data_read_PARM_4:
      000043                        520 	.ds 3
                                    521 ;--------------------------------------------------------
                                    522 ; overlayable items in internal ram 
                                    523 ;--------------------------------------------------------
                                    524 ;--------------------------------------------------------
                                    525 ; indirectly addressable internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area ISEG    (DATA)
                                    528 ;--------------------------------------------------------
                                    529 ; absolute internal ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area IABS    (ABS,DATA)
                                    532 	.area IABS    (ABS,DATA)
                                    533 ;--------------------------------------------------------
                                    534 ; bit data
                                    535 ;--------------------------------------------------------
                                    536 	.area BSEG    (BIT)
                                    537 ;--------------------------------------------------------
                                    538 ; paged external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area PSEG    (PAG,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XSEG    (XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; absolute external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XABS    (ABS,XDATA)
                                    549 ;--------------------------------------------------------
                                    550 ; external initialized ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XISEG   (XDATA)
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT0 (CODE)
                                    555 	.area GSINIT1 (CODE)
                                    556 	.area GSINIT2 (CODE)
                                    557 	.area GSINIT3 (CODE)
                                    558 	.area GSINIT4 (CODE)
                                    559 	.area GSINIT5 (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area CSEG    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; global & static initialisations
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
                                    567 	.area GSINIT  (CODE)
                                    568 	.area GSFINAL (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 ;--------------------------------------------------------
                                    571 ; Home
                                    572 ;--------------------------------------------------------
                                    573 	.area HOME    (CODE)
                                    574 	.area HOME    (CODE)
                                    575 ;--------------------------------------------------------
                                    576 ; code
                                    577 ;--------------------------------------------------------
                                    578 	.area CSEG    (CODE)
                                    579 ;------------------------------------------------------------
                                    580 ;Allocation info for local variables in function 'i2c_init'
                                    581 ;------------------------------------------------------------
                                    582 ;	i2c.c:4: void i2c_init(void)
                                    583 ;	-----------------------------------------
                                    584 ;	 function i2c_init
                                    585 ;	-----------------------------------------
      00057B                        586 _i2c_init:
                           000007   587 	ar7 = 0x07
                           000006   588 	ar6 = 0x06
                           000005   589 	ar5 = 0x05
                           000004   590 	ar4 = 0x04
                           000003   591 	ar3 = 0x03
                           000002   592 	ar2 = 0x02
                           000001   593 	ar1 = 0x01
                           000000   594 	ar0 = 0x00
                                    595 ;	i2c.c:9: P14_OPENDRAIN_MODE;
      00057B 43 B3 10         [24]  596 	orl	_P1M1,#0x10
      00057E 43 B4 10         [24]  597 	orl	_P1M2,#0x10
                                    598 ;	i2c.c:10: P13_OPENDRAIN_MODE;
      000581 43 B3 08         [24]  599 	orl	_P1M1,#0x08
      000584 43 B4 08         [24]  600 	orl	_P1M2,#0x08
                                    601 ;	i2c.c:12: SDA_1;
      000587 D2 94            [12]  602 	setb	_P14
                                    603 ;	i2c.c:13: SCL_1;
      000589 D2 93            [12]  604 	setb	_P13
      00058B 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'i2c_start'
                                    608 ;------------------------------------------------------------
                                    609 ;	i2c.c:15: void i2c_start(void)
                                    610 ;	-----------------------------------------
                                    611 ;	 function i2c_start
                                    612 ;	-----------------------------------------
      00058C                        613 _i2c_start:
                                    614 ;	i2c.c:24: SCL_1;
      00058C D2 93            [12]  615 	setb	_P13
                                    616 ;	i2c.c:25: DELAYI2C;
      00058E 75 46 01         [24]  617 	mov	_DelayT0_PARM_2,#0x01
      000591 75 47 00         [24]  618 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000594 90 00 05         [24]  619 	mov	dptr,#0x0005
      000597 12 02 BC         [24]  620 	lcall	_DelayT0
                                    621 ;	i2c.c:26: SDA_1;
      00059A D2 94            [12]  622 	setb	_P14
                                    623 ;	i2c.c:27: DELAYI2C;
      00059C 75 46 01         [24]  624 	mov	_DelayT0_PARM_2,#0x01
      00059F 75 47 00         [24]  625 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0005A2 90 00 05         [24]  626 	mov	dptr,#0x0005
      0005A5 12 02 BC         [24]  627 	lcall	_DelayT0
                                    628 ;	i2c.c:28: SDA_0;
      0005A8 C2 94            [12]  629 	clr	_P14
                                    630 ;	i2c.c:29: DELAYI2C;
      0005AA 75 46 01         [24]  631 	mov	_DelayT0_PARM_2,#0x01
      0005AD 75 47 00         [24]  632 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0005B0 90 00 05         [24]  633 	mov	dptr,#0x0005
      0005B3 12 02 BC         [24]  634 	lcall	_DelayT0
                                    635 ;	i2c.c:30: SCL_0;
      0005B6 C2 93            [12]  636 	clr	_P13
                                    637 ;	i2c.c:31: DELAYI2C;
      0005B8 75 46 01         [24]  638 	mov	_DelayT0_PARM_2,#0x01
      0005BB 75 47 00         [24]  639 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0005BE 90 00 05         [24]  640 	mov	dptr,#0x0005
      0005C1 02 02 BC         [24]  641 	ljmp	_DelayT0
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'i2c_stop'
                                    644 ;------------------------------------------------------------
                                    645 ;	i2c.c:34: void i2c_stop(void)
                                    646 ;	-----------------------------------------
                                    647 ;	 function i2c_stop
                                    648 ;	-----------------------------------------
      0005C4                        649 _i2c_stop:
                                    650 ;	i2c.c:38: SDA_0;
      0005C4 C2 94            [12]  651 	clr	_P14
                                    652 ;	i2c.c:39: DELAYI2C;
      0005C6 75 46 01         [24]  653 	mov	_DelayT0_PARM_2,#0x01
      0005C9 75 47 00         [24]  654 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0005CC 90 00 05         [24]  655 	mov	dptr,#0x0005
      0005CF 12 02 BC         [24]  656 	lcall	_DelayT0
                                    657 ;	i2c.c:40: SCL_1;
      0005D2 D2 93            [12]  658 	setb	_P13
                                    659 ;	i2c.c:41: DELAYI2C;
      0005D4 75 46 01         [24]  660 	mov	_DelayT0_PARM_2,#0x01
      0005D7 75 47 00         [24]  661 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0005DA 90 00 05         [24]  662 	mov	dptr,#0x0005
      0005DD 12 02 BC         [24]  663 	lcall	_DelayT0
                                    664 ;	i2c.c:42: SDA_1;
      0005E0 D2 94            [12]  665 	setb	_P14
                                    666 ;	i2c.c:43: DELAYI2C;
      0005E2 75 46 01         [24]  667 	mov	_DelayT0_PARM_2,#0x01
      0005E5 75 47 00         [24]  668 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0005E8 90 00 05         [24]  669 	mov	dptr,#0x0005
      0005EB 02 02 BC         [24]  670 	ljmp	_DelayT0
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'i2c_write'
                                    673 ;------------------------------------------------------------
                                    674 ;u8Data                    Allocated to registers r7 
                                    675 ;i                         Allocated to registers r6 
                                    676 ;u8Ret                     Allocated to registers r7 
                                    677 ;------------------------------------------------------------
                                    678 ;	i2c.c:45: uint8_t i2c_write(uint8_t u8Data)
                                    679 ;	-----------------------------------------
                                    680 ;	 function i2c_write
                                    681 ;	-----------------------------------------
      0005EE                        682 _i2c_write:
      0005EE AF 82            [24]  683 	mov	r7,dpl
                                    684 ;	i2c.c:53: for (i = 0; i < 8; ++i) {
      0005F0 7E 00            [12]  685 	mov	r6,#0x00
      0005F2                        686 00108$:
                                    687 ;	i2c.c:54: if (u8Data & 0x80) {
      0005F2 EF               [12]  688 	mov	a,r7
      0005F3 30 E7 04         [24]  689 	jnb	acc.7,00102$
                                    690 ;	i2c.c:55: SDA_1;
      0005F6 D2 94            [12]  691 	setb	_P14
      0005F8 80 02            [24]  692 	sjmp	00103$
      0005FA                        693 00102$:
                                    694 ;	i2c.c:57: SDA_0;
      0005FA C2 94            [12]  695 	clr	_P14
      0005FC                        696 00103$:
                                    697 ;	i2c.c:59: DELAYI2C;
      0005FC 75 46 01         [24]  698 	mov	_DelayT0_PARM_2,#0x01
      0005FF 75 47 00         [24]  699 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000602 90 00 05         [24]  700 	mov	dptr,#0x0005
      000605 C0 07            [24]  701 	push	ar7
      000607 C0 06            [24]  702 	push	ar6
      000609 12 02 BC         [24]  703 	lcall	_DelayT0
                                    704 ;	i2c.c:60: SCL_1;
      00060C D2 93            [12]  705 	setb	_P13
                                    706 ;	i2c.c:61: DELAYI2C;
      00060E 75 46 01         [24]  707 	mov	_DelayT0_PARM_2,#0x01
      000611 75 47 00         [24]  708 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000614 90 00 05         [24]  709 	mov	dptr,#0x0005
      000617 12 02 BC         [24]  710 	lcall	_DelayT0
      00061A D0 06            [24]  711 	pop	ar6
      00061C D0 07            [24]  712 	pop	ar7
                                    713 ;	i2c.c:62: SCL_0;
      00061E C2 93            [12]  714 	clr	_P13
                                    715 ;	i2c.c:64: u8Data <<= 1;
      000620 EF               [12]  716 	mov	a,r7
      000621 2F               [12]  717 	add	a,r7
      000622 FF               [12]  718 	mov	r7,a
                                    719 ;	i2c.c:53: for (i = 0; i < 8; ++i) {
      000623 0E               [12]  720 	inc	r6
      000624 BE 08 00         [24]  721 	cjne	r6,#0x08,00126$
      000627                        722 00126$:
      000627 40 C9            [24]  723 	jc	00108$
                                    724 ;	i2c.c:67: SDA_0;
      000629 C2 94            [12]  725 	clr	_P14
                                    726 ;	i2c.c:68: DELAYI2C;
      00062B 75 46 01         [24]  727 	mov	_DelayT0_PARM_2,#0x01
      00062E 75 47 00         [24]  728 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000631 90 00 05         [24]  729 	mov	dptr,#0x0005
      000634 12 02 BC         [24]  730 	lcall	_DelayT0
                                    731 ;	i2c.c:70: SCL_1;
      000637 D2 93            [12]  732 	setb	_P13
                                    733 ;	i2c.c:71: DELAYI2C;
      000639 75 46 01         [24]  734 	mov	_DelayT0_PARM_2,#0x01
      00063C 75 47 00         [24]  735 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00063F 90 00 05         [24]  736 	mov	dptr,#0x0005
      000642 12 02 BC         [24]  737 	lcall	_DelayT0
                                    738 ;	i2c.c:72: SCL_0;
      000645 C2 93            [12]  739 	clr	_P13
                                    740 ;	i2c.c:73: DELAYI2C;
      000647 75 46 01         [24]  741 	mov	_DelayT0_PARM_2,#0x01
      00064A 75 47 00         [24]  742 	mov	(_DelayT0_PARM_2 + 1),#0x00
      00064D 90 00 05         [24]  743 	mov	dptr,#0x0005
      000650 12 02 BC         [24]  744 	lcall	_DelayT0
                                    745 ;	i2c.c:74: SDA_1;
      000653 D2 94            [12]  746 	setb	_P14
                                    747 ;	i2c.c:75: if (SDA_VAL) {
      000655 30 94 04         [24]  748 	jnb	_P14,00106$
                                    749 ;	i2c.c:76: u8Ret = 0;
      000658 7F 00            [12]  750 	mov	r7,#0x00
      00065A 80 02            [24]  751 	sjmp	00107$
      00065C                        752 00106$:
                                    753 ;	i2c.c:78: u8Ret = 1;
      00065C 7F 01            [12]  754 	mov	r7,#0x01
      00065E                        755 00107$:
                                    756 ;	i2c.c:80: DELAYI2C;
      00065E 75 46 01         [24]  757 	mov	_DelayT0_PARM_2,#0x01
      000661 75 47 00         [24]  758 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000664 90 00 05         [24]  759 	mov	dptr,#0x0005
      000667 C0 07            [24]  760 	push	ar7
      000669 12 02 BC         [24]  761 	lcall	_DelayT0
      00066C D0 07            [24]  762 	pop	ar7
                                    763 ;	i2c.c:81: return u8Ret;
      00066E 8F 82            [24]  764 	mov	dpl,r7
      000670 22               [24]  765 	ret
                                    766 ;------------------------------------------------------------
                                    767 ;Allocation info for local variables in function 'i2c_read'
                                    768 ;------------------------------------------------------------
                                    769 ;Ack                       Allocated to registers r7 
                                    770 ;u8DataRead                Allocated to registers r6 
                                    771 ;i                         Allocated to registers r5 
                                    772 ;------------------------------------------------------------
                                    773 ;	i2c.c:83: uint8_t i2c_read(uint8_t Ack)
                                    774 ;	-----------------------------------------
                                    775 ;	 function i2c_read
                                    776 ;	-----------------------------------------
      000671                        777 _i2c_read:
      000671 AF 82            [24]  778 	mov	r7,dpl
                                    779 ;	i2c.c:85: uint8_t u8DataRead = 0;
      000673 7E 00            [12]  780 	mov	r6,#0x00
                                    781 ;	i2c.c:87: SDA_1;
      000675 D2 94            [12]  782 	setb	_P14
                                    783 ;	i2c.c:88: for (i = 0; i < 8; ++i)
      000677 7D 00            [12]  784 	mov	r5,#0x00
      000679                        785 00107$:
                                    786 ;	i2c.c:90: u8DataRead = u8DataRead << 1;
      000679 EE               [12]  787 	mov	a,r6
      00067A 2E               [12]  788 	add	a,r6
      00067B FE               [12]  789 	mov	r6,a
                                    790 ;	i2c.c:91: SCL_1;
      00067C D2 93            [12]  791 	setb	_P13
                                    792 ;	i2c.c:92: DELAYI2C;
      00067E 75 46 01         [24]  793 	mov	_DelayT0_PARM_2,#0x01
      000681 75 47 00         [24]  794 	mov	(_DelayT0_PARM_2 + 1),#0x00
      000684 90 00 05         [24]  795 	mov	dptr,#0x0005
      000687 C0 07            [24]  796 	push	ar7
      000689 C0 06            [24]  797 	push	ar6
      00068B C0 05            [24]  798 	push	ar5
      00068D 12 02 BC         [24]  799 	lcall	_DelayT0
      000690 D0 05            [24]  800 	pop	ar5
      000692 D0 06            [24]  801 	pop	ar6
      000694 D0 07            [24]  802 	pop	ar7
                                    803 ;	i2c.c:93: if (SDA_VAL)
      000696 30 94 03         [24]  804 	jnb	_P14,00102$
                                    805 ;	i2c.c:95: u8DataRead = u8DataRead | 0x01;
      000699 43 06 01         [24]  806 	orl	ar6,#0x01
      00069C                        807 00102$:
                                    808 ;	i2c.c:97: DELAYI2C;
      00069C 75 46 01         [24]  809 	mov	_DelayT0_PARM_2,#0x01
      00069F 75 47 00         [24]  810 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0006A2 90 00 05         [24]  811 	mov	dptr,#0x0005
      0006A5 C0 07            [24]  812 	push	ar7
      0006A7 C0 06            [24]  813 	push	ar6
      0006A9 C0 05            [24]  814 	push	ar5
      0006AB 12 02 BC         [24]  815 	lcall	_DelayT0
                                    816 ;	i2c.c:98: SCL_0;
      0006AE C2 93            [12]  817 	clr	_P13
                                    818 ;	i2c.c:99: DELAYI2C;
      0006B0 75 46 01         [24]  819 	mov	_DelayT0_PARM_2,#0x01
      0006B3 75 47 00         [24]  820 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0006B6 90 00 05         [24]  821 	mov	dptr,#0x0005
      0006B9 12 02 BC         [24]  822 	lcall	_DelayT0
      0006BC D0 05            [24]  823 	pop	ar5
      0006BE D0 06            [24]  824 	pop	ar6
      0006C0 D0 07            [24]  825 	pop	ar7
                                    826 ;	i2c.c:88: for (i = 0; i < 8; ++i)
      0006C2 0D               [12]  827 	inc	r5
      0006C3 BD 08 00         [24]  828 	cjne	r5,#0x08,00125$
      0006C6                        829 00125$:
      0006C6 40 B1            [24]  830 	jc	00107$
                                    831 ;	i2c.c:102: if(Ack){
      0006C8 EF               [12]  832 	mov	a,r7
      0006C9 60 04            [24]  833 	jz	00105$
                                    834 ;	i2c.c:103: SDA_0;
      0006CB C2 94            [12]  835 	clr	_P14
      0006CD 80 02            [24]  836 	sjmp	00106$
      0006CF                        837 00105$:
                                    838 ;	i2c.c:105: SDA_1;
      0006CF D2 94            [12]  839 	setb	_P14
      0006D1                        840 00106$:
                                    841 ;	i2c.c:107: DELAYI2C;
      0006D1 75 46 01         [24]  842 	mov	_DelayT0_PARM_2,#0x01
      0006D4 75 47 00         [24]  843 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0006D7 90 00 05         [24]  844 	mov	dptr,#0x0005
      0006DA C0 06            [24]  845 	push	ar6
      0006DC 12 02 BC         [24]  846 	lcall	_DelayT0
                                    847 ;	i2c.c:109: SCL_1;
      0006DF D2 93            [12]  848 	setb	_P13
                                    849 ;	i2c.c:110: DELAYI2C;
      0006E1 75 46 01         [24]  850 	mov	_DelayT0_PARM_2,#0x01
      0006E4 75 47 00         [24]  851 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0006E7 90 00 05         [24]  852 	mov	dptr,#0x0005
      0006EA 12 02 BC         [24]  853 	lcall	_DelayT0
                                    854 ;	i2c.c:111: SCL_0;
      0006ED C2 93            [12]  855 	clr	_P13
                                    856 ;	i2c.c:112: DELAYI2C;
      0006EF 75 46 01         [24]  857 	mov	_DelayT0_PARM_2,#0x01
      0006F2 75 47 00         [24]  858 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0006F5 90 00 05         [24]  859 	mov	dptr,#0x0005
      0006F8 12 02 BC         [24]  860 	lcall	_DelayT0
      0006FB D0 06            [24]  861 	pop	ar6
                                    862 ;	i2c.c:113: return u8DataRead;
      0006FD 8E 82            [24]  863 	mov	dpl,r6
      0006FF 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'data_write'
                                    867 ;------------------------------------------------------------
                                    868 ;addressData               Allocated with name '_data_write_PARM_2'
                                    869 ;num                       Allocated with name '_data_write_PARM_3'
                                    870 ;data                      Allocated with name '_data_write_PARM_4'
                                    871 ;address                   Allocated to registers r7 
                                    872 ;i                         Allocated to registers r5 
                                    873 ;------------------------------------------------------------
                                    874 ;	i2c.c:115: uint8_t data_write(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data)
                                    875 ;	-----------------------------------------
                                    876 ;	 function data_write
                                    877 ;	-----------------------------------------
      000700                        878 _data_write:
      000700 AF 82            [24]  879 	mov	r7,dpl
                                    880 ;	i2c.c:118: for(i=0; i< num; ++i)
      000702 AE 3C            [24]  881 	mov	r6,_data_write_PARM_2
      000704 7D 00            [12]  882 	mov	r5,#0x00
      000706                        883 00103$:
      000706 C3               [12]  884 	clr	c
      000707 ED               [12]  885 	mov	a,r5
      000708 95 3D            [12]  886 	subb	a,_data_write_PARM_3
      00070A 50 5C            [24]  887 	jnc	00101$
                                    888 ;	i2c.c:120: i2c_start();
      00070C C0 07            [24]  889 	push	ar7
      00070E C0 06            [24]  890 	push	ar6
      000710 C0 05            [24]  891 	push	ar5
      000712 12 05 8C         [24]  892 	lcall	_i2c_start
      000715 D0 05            [24]  893 	pop	ar5
      000717 D0 06            [24]  894 	pop	ar6
      000719 D0 07            [24]  895 	pop	ar7
                                    896 ;	i2c.c:121: i2c_write(address);
      00071B 8F 82            [24]  897 	mov	dpl,r7
      00071D C0 07            [24]  898 	push	ar7
      00071F C0 06            [24]  899 	push	ar6
      000721 C0 05            [24]  900 	push	ar5
      000723 12 05 EE         [24]  901 	lcall	_i2c_write
      000726 D0 05            [24]  902 	pop	ar5
      000728 D0 06            [24]  903 	pop	ar6
                                    904 ;	i2c.c:122: i2c_write(addressData++);
      00072A 8E 82            [24]  905 	mov	dpl,r6
      00072C 0E               [12]  906 	inc	r6
      00072D C0 06            [24]  907 	push	ar6
      00072F C0 05            [24]  908 	push	ar5
      000731 12 05 EE         [24]  909 	lcall	_i2c_write
      000734 D0 05            [24]  910 	pop	ar5
                                    911 ;	i2c.c:123: i2c_write(data[i]);
      000736 ED               [12]  912 	mov	a,r5
      000737 25 3E            [12]  913 	add	a,_data_write_PARM_4
      000739 FA               [12]  914 	mov	r2,a
      00073A E4               [12]  915 	clr	a
      00073B 35 3F            [12]  916 	addc	a,(_data_write_PARM_4 + 1)
      00073D FB               [12]  917 	mov	r3,a
      00073E AC 40            [24]  918 	mov	r4,(_data_write_PARM_4 + 2)
      000740 8A 82            [24]  919 	mov	dpl,r2
      000742 8B 83            [24]  920 	mov	dph,r3
      000744 8C F0            [24]  921 	mov	b,r4
      000746 12 08 F6         [24]  922 	lcall	__gptrget
      000749 F5 82            [12]  923 	mov	dpl,a
      00074B C0 05            [24]  924 	push	ar5
      00074D 12 05 EE         [24]  925 	lcall	_i2c_write
                                    926 ;	i2c.c:124: i2c_stop();
      000750 12 05 C4         [24]  927 	lcall	_i2c_stop
                                    928 ;	i2c.c:125: DelayT0(1, CONFIG_1MS);
      000753 75 46 E8         [24]  929 	mov	_DelayT0_PARM_2,#0xE8
      000756 75 47 03         [24]  930 	mov	(_DelayT0_PARM_2 + 1),#0x03
      000759 90 00 01         [24]  931 	mov	dptr,#0x0001
      00075C 12 02 BC         [24]  932 	lcall	_DelayT0
      00075F D0 05            [24]  933 	pop	ar5
      000761 D0 06            [24]  934 	pop	ar6
      000763 D0 07            [24]  935 	pop	ar7
                                    936 ;	i2c.c:118: for(i=0; i< num; ++i)
      000765 0D               [12]  937 	inc	r5
      000766 80 9E            [24]  938 	sjmp	00103$
      000768                        939 00101$:
                                    940 ;	i2c.c:127: return 1;
      000768 75 82 01         [24]  941 	mov	dpl,#0x01
      00076B 22               [24]  942 	ret
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function 'data_read'
                                    945 ;------------------------------------------------------------
                                    946 ;addressData               Allocated with name '_data_read_PARM_2'
                                    947 ;num                       Allocated with name '_data_read_PARM_3'
                                    948 ;data                      Allocated with name '_data_read_PARM_4'
                                    949 ;address                   Allocated to registers r7 
                                    950 ;i                         Allocated to registers r7 
                                    951 ;------------------------------------------------------------
                                    952 ;	i2c.c:129: uint8_t data_read(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data)
                                    953 ;	-----------------------------------------
                                    954 ;	 function data_read
                                    955 ;	-----------------------------------------
      00076C                        956 _data_read:
      00076C AF 82            [24]  957 	mov	r7,dpl
                                    958 ;	i2c.c:132: i2c_start();
      00076E C0 07            [24]  959 	push	ar7
      000770 12 05 8C         [24]  960 	lcall	_i2c_start
      000773 D0 07            [24]  961 	pop	ar7
                                    962 ;	i2c.c:133: i2c_write(address);
      000775 8F 82            [24]  963 	mov	dpl,r7
      000777 C0 07            [24]  964 	push	ar7
      000779 12 05 EE         [24]  965 	lcall	_i2c_write
                                    966 ;	i2c.c:134: i2c_write(addressData);
      00077C 85 41 82         [24]  967 	mov	dpl,_data_read_PARM_2
      00077F 12 05 EE         [24]  968 	lcall	_i2c_write
                                    969 ;	i2c.c:136: i2c_start();
      000782 12 05 8C         [24]  970 	lcall	_i2c_start
      000785 D0 07            [24]  971 	pop	ar7
                                    972 ;	i2c.c:137: i2c_write(address | 0x01);
      000787 74 01            [12]  973 	mov	a,#0x01
      000789 4F               [12]  974 	orl	a,r7
      00078A F5 82            [12]  975 	mov	dpl,a
      00078C 12 05 EE         [24]  976 	lcall	_i2c_write
                                    977 ;	i2c.c:138: for(i=0; i< num - 1; ++i)
      00078F 7F 00            [12]  978 	mov	r7,#0x00
      000791                        979 00103$:
      000791 AD 42            [24]  980 	mov	r5,_data_read_PARM_3
      000793 7E 00            [12]  981 	mov	r6,#0x00
      000795 1D               [12]  982 	dec	r5
      000796 BD FF 01         [24]  983 	cjne	r5,#0xFF,00114$
      000799 1E               [12]  984 	dec	r6
      00079A                        985 00114$:
      00079A 8F 03            [24]  986 	mov	ar3,r7
      00079C 7C 00            [12]  987 	mov	r4,#0x00
      00079E C3               [12]  988 	clr	c
      00079F EB               [12]  989 	mov	a,r3
      0007A0 9D               [12]  990 	subb	a,r5
      0007A1 EC               [12]  991 	mov	a,r4
      0007A2 64 80            [12]  992 	xrl	a,#0x80
      0007A4 8E F0            [24]  993 	mov	b,r6
      0007A6 63 F0 80         [24]  994 	xrl	b,#0x80
      0007A9 95 F0            [12]  995 	subb	a,b
      0007AB 50 2F            [24]  996 	jnc	00101$
                                    997 ;	i2c.c:140: data[i] = i2c_read(1);
      0007AD EF               [12]  998 	mov	a,r7
      0007AE 25 43            [12]  999 	add	a,_data_read_PARM_4
      0007B0 FC               [12] 1000 	mov	r4,a
      0007B1 E4               [12] 1001 	clr	a
      0007B2 35 44            [12] 1002 	addc	a,(_data_read_PARM_4 + 1)
      0007B4 FD               [12] 1003 	mov	r5,a
      0007B5 AE 45            [24] 1004 	mov	r6,(_data_read_PARM_4 + 2)
      0007B7 75 82 01         [24] 1005 	mov	dpl,#0x01
      0007BA C0 07            [24] 1006 	push	ar7
      0007BC C0 06            [24] 1007 	push	ar6
      0007BE C0 05            [24] 1008 	push	ar5
      0007C0 C0 04            [24] 1009 	push	ar4
      0007C2 12 06 71         [24] 1010 	lcall	_i2c_read
      0007C5 AB 82            [24] 1011 	mov	r3,dpl
      0007C7 D0 04            [24] 1012 	pop	ar4
      0007C9 D0 05            [24] 1013 	pop	ar5
      0007CB D0 06            [24] 1014 	pop	ar6
      0007CD D0 07            [24] 1015 	pop	ar7
      0007CF 8C 82            [24] 1016 	mov	dpl,r4
      0007D1 8D 83            [24] 1017 	mov	dph,r5
      0007D3 8E F0            [24] 1018 	mov	b,r6
      0007D5 EB               [12] 1019 	mov	a,r3
      0007D6 12 08 0B         [24] 1020 	lcall	__gptrput
                                   1021 ;	i2c.c:138: for(i=0; i< num - 1; ++i)
      0007D9 0F               [12] 1022 	inc	r7
      0007DA 80 B5            [24] 1023 	sjmp	00103$
      0007DC                       1024 00101$:
                                   1025 ;	i2c.c:142: data[i] = i2c_read(0);
      0007DC EF               [12] 1026 	mov	a,r7
      0007DD 25 43            [12] 1027 	add	a,_data_read_PARM_4
      0007DF FF               [12] 1028 	mov	r7,a
      0007E0 E4               [12] 1029 	clr	a
      0007E1 35 44            [12] 1030 	addc	a,(_data_read_PARM_4 + 1)
      0007E3 FE               [12] 1031 	mov	r6,a
      0007E4 AD 45            [24] 1032 	mov	r5,(_data_read_PARM_4 + 2)
      0007E6 75 82 00         [24] 1033 	mov	dpl,#0x00
      0007E9 C0 07            [24] 1034 	push	ar7
      0007EB C0 06            [24] 1035 	push	ar6
      0007ED C0 05            [24] 1036 	push	ar5
      0007EF 12 06 71         [24] 1037 	lcall	_i2c_read
      0007F2 AC 82            [24] 1038 	mov	r4,dpl
      0007F4 D0 05            [24] 1039 	pop	ar5
      0007F6 D0 06            [24] 1040 	pop	ar6
      0007F8 D0 07            [24] 1041 	pop	ar7
      0007FA 8F 82            [24] 1042 	mov	dpl,r7
      0007FC 8E 83            [24] 1043 	mov	dph,r6
      0007FE 8D F0            [24] 1044 	mov	b,r5
      000800 EC               [12] 1045 	mov	a,r4
      000801 12 08 0B         [24] 1046 	lcall	__gptrput
                                   1047 ;	i2c.c:143: i2c_stop();
      000804 12 05 C4         [24] 1048 	lcall	_i2c_stop
                                   1049 ;	i2c.c:144: return 1;
      000807 75 82 01         [24] 1050 	mov	dpl,#0x01
      00080A 22               [24] 1051 	ret
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
                                   1054 	.area XINIT   (CODE)
                                   1055 	.area CABS    (ABS,CODE)
