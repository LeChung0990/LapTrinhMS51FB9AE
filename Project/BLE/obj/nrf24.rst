                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Apr  3 10:29:26 2025
                                      5 ;--------------------------------------------------------
                                      6 	.module nrf24
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _btLeWhiten_PARM_3
                                     13 	.globl _btLeWhiten_PARM_2
                                     14 	.globl _btLeCrc_PARM_3
                                     15 	.globl _btLeCrc_PARM_2
                                     16 	.globl _DelayT0
                                     17 	.globl _MOSI
                                     18 	.globl _P00
                                     19 	.globl _MISO
                                     20 	.globl _P01
                                     21 	.globl _RXD_1
                                     22 	.globl _P02
                                     23 	.globl _P03
                                     24 	.globl _STADC
                                     25 	.globl _P04
                                     26 	.globl _P05
                                     27 	.globl _TXD
                                     28 	.globl _P06
                                     29 	.globl _RXD
                                     30 	.globl _P07
                                     31 	.globl _IT0
                                     32 	.globl _IE0
                                     33 	.globl _IT1
                                     34 	.globl _IE1
                                     35 	.globl _TR0
                                     36 	.globl _TF0
                                     37 	.globl _TR1
                                     38 	.globl _TF1
                                     39 	.globl _P10
                                     40 	.globl _P11
                                     41 	.globl _P12
                                     42 	.globl _SCL
                                     43 	.globl _P13
                                     44 	.globl _SDA
                                     45 	.globl _P14
                                     46 	.globl _P15
                                     47 	.globl _TXD_1
                                     48 	.globl _P16
                                     49 	.globl _P17
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _FE
                                     58 	.globl _SM0
                                     59 	.globl _P20
                                     60 	.globl _EX0
                                     61 	.globl _ET0
                                     62 	.globl _EX1
                                     63 	.globl _ET1
                                     64 	.globl _ES
                                     65 	.globl _EBOD
                                     66 	.globl _EADC
                                     67 	.globl _EA
                                     68 	.globl _P30
                                     69 	.globl _PX0
                                     70 	.globl _PT0
                                     71 	.globl _PX1
                                     72 	.globl _PT1
                                     73 	.globl _PS
                                     74 	.globl _PBOD
                                     75 	.globl _PADC
                                     76 	.globl _I2CPX
                                     77 	.globl _AA
                                     78 	.globl _SI
                                     79 	.globl _STO
                                     80 	.globl _STA
                                     81 	.globl _I2CEN
                                     82 	.globl _CM_RL2
                                     83 	.globl _TR2
                                     84 	.globl _TF2
                                     85 	.globl _P
                                     86 	.globl _OV
                                     87 	.globl _RS0
                                     88 	.globl _RS1
                                     89 	.globl _F0
                                     90 	.globl _AC
                                     91 	.globl _CY
                                     92 	.globl _CLRPWM
                                     93 	.globl _PWMF
                                     94 	.globl _LOAD
                                     95 	.globl _PWMRUN
                                     96 	.globl _ADCHS0
                                     97 	.globl _ADCHS1
                                     98 	.globl _ADCHS2
                                     99 	.globl _ADCHS3
                                    100 	.globl _ETGSEL0
                                    101 	.globl _ETGSEL1
                                    102 	.globl _ADCS
                                    103 	.globl _ADCF
                                    104 	.globl _RI_1
                                    105 	.globl _TI_1
                                    106 	.globl _RB8_1
                                    107 	.globl _TB8_1
                                    108 	.globl _REN_1
                                    109 	.globl _SM2_1
                                    110 	.globl _SM1_1
                                    111 	.globl _FE_1
                                    112 	.globl _SM0_1
                                    113 	.globl _EIPH1
                                    114 	.globl _EIP1
                                    115 	.globl _PMD
                                    116 	.globl _PMEN
                                    117 	.globl _PDTCNT
                                    118 	.globl _PDTEN
                                    119 	.globl _SCON_1
                                    120 	.globl _EIPH
                                    121 	.globl _AINDIDS
                                    122 	.globl _SPDR
                                    123 	.globl _SPSR
                                    124 	.globl _SPCR2
                                    125 	.globl _SPCR
                                    126 	.globl _CAPCON4
                                    127 	.globl _CAPCON3
                                    128 	.globl _B
                                    129 	.globl _EIP
                                    130 	.globl _C2H
                                    131 	.globl _C2L
                                    132 	.globl _PIF
                                    133 	.globl _PIPEN
                                    134 	.globl _PINEN
                                    135 	.globl _PICON
                                    136 	.globl _ADCCON0
                                    137 	.globl _C1H
                                    138 	.globl _C1L
                                    139 	.globl _C0H
                                    140 	.globl _C0L
                                    141 	.globl _ADCDLY
                                    142 	.globl _ADCCON2
                                    143 	.globl _ADCCON1
                                    144 	.globl _ACC
                                    145 	.globl _PWMCON1
                                    146 	.globl _PIOCON0
                                    147 	.globl _PWM3L
                                    148 	.globl _PWM2L
                                    149 	.globl _PWM1L
                                    150 	.globl _PWM0L
                                    151 	.globl _PWMPL
                                    152 	.globl _PWMCON0
                                    153 	.globl _FBD
                                    154 	.globl _PNP
                                    155 	.globl _PWM3H
                                    156 	.globl _PWM2H
                                    157 	.globl _PWM1H
                                    158 	.globl _PWM0H
                                    159 	.globl _PWMPH
                                    160 	.globl _PSW
                                    161 	.globl _ADCMPH
                                    162 	.globl _ADCMPL
                                    163 	.globl _PWM5L
                                    164 	.globl _TH2
                                    165 	.globl _PWM4L
                                    166 	.globl _TL2
                                    167 	.globl _RCMP2H
                                    168 	.globl _RCMP2L
                                    169 	.globl _T2MOD
                                    170 	.globl _T2CON
                                    171 	.globl _TA
                                    172 	.globl _PIOCON1
                                    173 	.globl _RH3
                                    174 	.globl _PWM5H
                                    175 	.globl _RL3
                                    176 	.globl _PWM4H
                                    177 	.globl _T3CON
                                    178 	.globl _ADCRH
                                    179 	.globl _ADCRL
                                    180 	.globl _I2ADDR
                                    181 	.globl _I2CON
                                    182 	.globl _I2TOC
                                    183 	.globl _I2CLK
                                    184 	.globl _I2STAT
                                    185 	.globl _I2DAT
                                    186 	.globl _SADDR_1
                                    187 	.globl _SADEN_1
                                    188 	.globl _SADEN
                                    189 	.globl _IP
                                    190 	.globl _PWMINTC
                                    191 	.globl _IPH
                                    192 	.globl _P2S
                                    193 	.globl _P1SR
                                    194 	.globl _P1M2
                                    195 	.globl _P1S
                                    196 	.globl _P1M1
                                    197 	.globl _P0SR
                                    198 	.globl _P0M2
                                    199 	.globl _P0S
                                    200 	.globl _P0M1
                                    201 	.globl _P3
                                    202 	.globl _IAPCN
                                    203 	.globl _IAPFD
                                    204 	.globl _P3SR
                                    205 	.globl _P3M2
                                    206 	.globl _P3S
                                    207 	.globl _P3M1
                                    208 	.globl _BODCON1
                                    209 	.globl _WDCON
                                    210 	.globl _SADDR
                                    211 	.globl _IE
                                    212 	.globl _IAPAH
                                    213 	.globl _IAPAL
                                    214 	.globl _IAPUEN
                                    215 	.globl _IAPTRG
                                    216 	.globl _BODCON0
                                    217 	.globl _AUXR1
                                    218 	.globl _P2
                                    219 	.globl _CHPCON
                                    220 	.globl _EIE1
                                    221 	.globl _EIE
                                    222 	.globl _SBUF_1
                                    223 	.globl _SBUF
                                    224 	.globl _SCON
                                    225 	.globl _CKEN
                                    226 	.globl _CKSWT
                                    227 	.globl _CKDIV
                                    228 	.globl _CAPCON2
                                    229 	.globl _CAPCON1
                                    230 	.globl _CAPCON0
                                    231 	.globl _SFRS
                                    232 	.globl _P1
                                    233 	.globl _WKCON
                                    234 	.globl _CKCON
                                    235 	.globl _TH1
                                    236 	.globl _TH0
                                    237 	.globl _TL1
                                    238 	.globl _TL0
                                    239 	.globl _TMOD
                                    240 	.globl _TCON
                                    241 	.globl _PCON
                                    242 	.globl _RWK
                                    243 	.globl _RCTRIM1
                                    244 	.globl _RCTRIM0
                                    245 	.globl _DPH
                                    246 	.globl _DPL
                                    247 	.globl _SP
                                    248 	.globl _P0
                                    249 	.globl _btLePacketEncode_PARM_3
                                    250 	.globl _btLePacketEncode_PARM_2
                                    251 	.globl _nrf_wbuf_PARM_3
                                    252 	.globl _nrf_wbuf_PARM_2
                                    253 	.globl _nrf_manybytes_PARM_2
                                    254 	.globl _nrf_cmd_PARM_2
                                    255 	.globl _spi_byte
                                    256 	.globl _nrf_cmd
                                    257 	.globl _nrf_simplebyte
                                    258 	.globl _nrf_manybytes
                                    259 	.globl _nrf_wbuf
                                    260 	.globl _btLeCrc
                                    261 	.globl _swapbits
                                    262 	.globl _btLeWhiten
                                    263 	.globl _btLePacketEncode
                                    264 	.globl _ble_init
                                    265 ;--------------------------------------------------------
                                    266 ; special function registers
                                    267 ;--------------------------------------------------------
                                    268 	.area RSEG    (ABS,DATA)
      000000                        269 	.org 0x0000
                           000080   270 _P0	=	0x0080
                           000081   271 _SP	=	0x0081
                           000082   272 _DPL	=	0x0082
                           000083   273 _DPH	=	0x0083
                           000084   274 _RCTRIM0	=	0x0084
                           000085   275 _RCTRIM1	=	0x0085
                           000086   276 _RWK	=	0x0086
                           000087   277 _PCON	=	0x0087
                           000088   278 _TCON	=	0x0088
                           000089   279 _TMOD	=	0x0089
                           00008A   280 _TL0	=	0x008a
                           00008B   281 _TL1	=	0x008b
                           00008C   282 _TH0	=	0x008c
                           00008D   283 _TH1	=	0x008d
                           00008E   284 _CKCON	=	0x008e
                           00008F   285 _WKCON	=	0x008f
                           000090   286 _P1	=	0x0090
                           000091   287 _SFRS	=	0x0091
                           000092   288 _CAPCON0	=	0x0092
                           000093   289 _CAPCON1	=	0x0093
                           000094   290 _CAPCON2	=	0x0094
                           000095   291 _CKDIV	=	0x0095
                           000096   292 _CKSWT	=	0x0096
                           000097   293 _CKEN	=	0x0097
                           000098   294 _SCON	=	0x0098
                           000099   295 _SBUF	=	0x0099
                           00009A   296 _SBUF_1	=	0x009a
                           00009B   297 _EIE	=	0x009b
                           00009C   298 _EIE1	=	0x009c
                           00009F   299 _CHPCON	=	0x009f
                           0000A0   300 _P2	=	0x00a0
                           0000A2   301 _AUXR1	=	0x00a2
                           0000A3   302 _BODCON0	=	0x00a3
                           0000A4   303 _IAPTRG	=	0x00a4
                           0000A5   304 _IAPUEN	=	0x00a5
                           0000A6   305 _IAPAL	=	0x00a6
                           0000A7   306 _IAPAH	=	0x00a7
                           0000A8   307 _IE	=	0x00a8
                           0000A9   308 _SADDR	=	0x00a9
                           0000AA   309 _WDCON	=	0x00aa
                           0000AB   310 _BODCON1	=	0x00ab
                           0000AC   311 _P3M1	=	0x00ac
                           0000AC   312 _P3S	=	0x00ac
                           0000AD   313 _P3M2	=	0x00ad
                           0000AD   314 _P3SR	=	0x00ad
                           0000AE   315 _IAPFD	=	0x00ae
                           0000AF   316 _IAPCN	=	0x00af
                           0000B0   317 _P3	=	0x00b0
                           0000B1   318 _P0M1	=	0x00b1
                           0000B1   319 _P0S	=	0x00b1
                           0000B2   320 _P0M2	=	0x00b2
                           0000B2   321 _P0SR	=	0x00b2
                           0000B3   322 _P1M1	=	0x00b3
                           0000B3   323 _P1S	=	0x00b3
                           0000B4   324 _P1M2	=	0x00b4
                           0000B4   325 _P1SR	=	0x00b4
                           0000B5   326 _P2S	=	0x00b5
                           0000B7   327 _IPH	=	0x00b7
                           0000B7   328 _PWMINTC	=	0x00b7
                           0000B8   329 _IP	=	0x00b8
                           0000B9   330 _SADEN	=	0x00b9
                           0000BA   331 _SADEN_1	=	0x00ba
                           0000BB   332 _SADDR_1	=	0x00bb
                           0000BC   333 _I2DAT	=	0x00bc
                           0000BD   334 _I2STAT	=	0x00bd
                           0000BE   335 _I2CLK	=	0x00be
                           0000BF   336 _I2TOC	=	0x00bf
                           0000C0   337 _I2CON	=	0x00c0
                           0000C1   338 _I2ADDR	=	0x00c1
                           0000C2   339 _ADCRL	=	0x00c2
                           0000C3   340 _ADCRH	=	0x00c3
                           0000C4   341 _T3CON	=	0x00c4
                           0000C4   342 _PWM4H	=	0x00c4
                           0000C5   343 _RL3	=	0x00c5
                           0000C5   344 _PWM5H	=	0x00c5
                           0000C6   345 _RH3	=	0x00c6
                           0000C6   346 _PIOCON1	=	0x00c6
                           0000C7   347 _TA	=	0x00c7
                           0000C8   348 _T2CON	=	0x00c8
                           0000C9   349 _T2MOD	=	0x00c9
                           0000CA   350 _RCMP2L	=	0x00ca
                           0000CB   351 _RCMP2H	=	0x00cb
                           0000CC   352 _TL2	=	0x00cc
                           0000CC   353 _PWM4L	=	0x00cc
                           0000CD   354 _TH2	=	0x00cd
                           0000CD   355 _PWM5L	=	0x00cd
                           0000CE   356 _ADCMPL	=	0x00ce
                           0000CF   357 _ADCMPH	=	0x00cf
                           0000D0   358 _PSW	=	0x00d0
                           0000D1   359 _PWMPH	=	0x00d1
                           0000D2   360 _PWM0H	=	0x00d2
                           0000D3   361 _PWM1H	=	0x00d3
                           0000D4   362 _PWM2H	=	0x00d4
                           0000D5   363 _PWM3H	=	0x00d5
                           0000D6   364 _PNP	=	0x00d6
                           0000D7   365 _FBD	=	0x00d7
                           0000D8   366 _PWMCON0	=	0x00d8
                           0000D9   367 _PWMPL	=	0x00d9
                           0000DA   368 _PWM0L	=	0x00da
                           0000DB   369 _PWM1L	=	0x00db
                           0000DC   370 _PWM2L	=	0x00dc
                           0000DD   371 _PWM3L	=	0x00dd
                           0000DE   372 _PIOCON0	=	0x00de
                           0000DF   373 _PWMCON1	=	0x00df
                           0000E0   374 _ACC	=	0x00e0
                           0000E1   375 _ADCCON1	=	0x00e1
                           0000E2   376 _ADCCON2	=	0x00e2
                           0000E3   377 _ADCDLY	=	0x00e3
                           0000E4   378 _C0L	=	0x00e4
                           0000E5   379 _C0H	=	0x00e5
                           0000E6   380 _C1L	=	0x00e6
                           0000E7   381 _C1H	=	0x00e7
                           0000E8   382 _ADCCON0	=	0x00e8
                           0000E9   383 _PICON	=	0x00e9
                           0000EA   384 _PINEN	=	0x00ea
                           0000EB   385 _PIPEN	=	0x00eb
                           0000EC   386 _PIF	=	0x00ec
                           0000ED   387 _C2L	=	0x00ed
                           0000EE   388 _C2H	=	0x00ee
                           0000EF   389 _EIP	=	0x00ef
                           0000F0   390 _B	=	0x00f0
                           0000F1   391 _CAPCON3	=	0x00f1
                           0000F2   392 _CAPCON4	=	0x00f2
                           0000F3   393 _SPCR	=	0x00f3
                           0000F3   394 _SPCR2	=	0x00f3
                           0000F4   395 _SPSR	=	0x00f4
                           0000F5   396 _SPDR	=	0x00f5
                           0000F6   397 _AINDIDS	=	0x00f6
                           0000F7   398 _EIPH	=	0x00f7
                           0000F8   399 _SCON_1	=	0x00f8
                           0000F9   400 _PDTEN	=	0x00f9
                           0000FA   401 _PDTCNT	=	0x00fa
                           0000FB   402 _PMEN	=	0x00fb
                           0000FC   403 _PMD	=	0x00fc
                           0000FE   404 _EIP1	=	0x00fe
                           0000FF   405 _EIPH1	=	0x00ff
                                    406 ;--------------------------------------------------------
                                    407 ; special function bits
                                    408 ;--------------------------------------------------------
                                    409 	.area RSEG    (ABS,DATA)
      000000                        410 	.org 0x0000
                           0000FF   411 _SM0_1	=	0x00ff
                           0000FF   412 _FE_1	=	0x00ff
                           0000FE   413 _SM1_1	=	0x00fe
                           0000FD   414 _SM2_1	=	0x00fd
                           0000FC   415 _REN_1	=	0x00fc
                           0000FB   416 _TB8_1	=	0x00fb
                           0000FA   417 _RB8_1	=	0x00fa
                           0000F9   418 _TI_1	=	0x00f9
                           0000F8   419 _RI_1	=	0x00f8
                           0000EF   420 _ADCF	=	0x00ef
                           0000EE   421 _ADCS	=	0x00ee
                           0000ED   422 _ETGSEL1	=	0x00ed
                           0000EC   423 _ETGSEL0	=	0x00ec
                           0000EB   424 _ADCHS3	=	0x00eb
                           0000EA   425 _ADCHS2	=	0x00ea
                           0000E9   426 _ADCHS1	=	0x00e9
                           0000E8   427 _ADCHS0	=	0x00e8
                           0000DF   428 _PWMRUN	=	0x00df
                           0000DE   429 _LOAD	=	0x00de
                           0000DD   430 _PWMF	=	0x00dd
                           0000DC   431 _CLRPWM	=	0x00dc
                           0000D7   432 _CY	=	0x00d7
                           0000D6   433 _AC	=	0x00d6
                           0000D5   434 _F0	=	0x00d5
                           0000D4   435 _RS1	=	0x00d4
                           0000D3   436 _RS0	=	0x00d3
                           0000D2   437 _OV	=	0x00d2
                           0000D0   438 _P	=	0x00d0
                           0000CF   439 _TF2	=	0x00cf
                           0000CA   440 _TR2	=	0x00ca
                           0000C8   441 _CM_RL2	=	0x00c8
                           0000C6   442 _I2CEN	=	0x00c6
                           0000C5   443 _STA	=	0x00c5
                           0000C4   444 _STO	=	0x00c4
                           0000C3   445 _SI	=	0x00c3
                           0000C2   446 _AA	=	0x00c2
                           0000C0   447 _I2CPX	=	0x00c0
                           0000BE   448 _PADC	=	0x00be
                           0000BD   449 _PBOD	=	0x00bd
                           0000BC   450 _PS	=	0x00bc
                           0000BB   451 _PT1	=	0x00bb
                           0000BA   452 _PX1	=	0x00ba
                           0000B9   453 _PT0	=	0x00b9
                           0000B8   454 _PX0	=	0x00b8
                           0000B0   455 _P30	=	0x00b0
                           0000AF   456 _EA	=	0x00af
                           0000AE   457 _EADC	=	0x00ae
                           0000AD   458 _EBOD	=	0x00ad
                           0000AC   459 _ES	=	0x00ac
                           0000AB   460 _ET1	=	0x00ab
                           0000AA   461 _EX1	=	0x00aa
                           0000A9   462 _ET0	=	0x00a9
                           0000A8   463 _EX0	=	0x00a8
                           0000A0   464 _P20	=	0x00a0
                           00009F   465 _SM0	=	0x009f
                           00009F   466 _FE	=	0x009f
                           00009E   467 _SM1	=	0x009e
                           00009D   468 _SM2	=	0x009d
                           00009C   469 _REN	=	0x009c
                           00009B   470 _TB8	=	0x009b
                           00009A   471 _RB8	=	0x009a
                           000099   472 _TI	=	0x0099
                           000098   473 _RI	=	0x0098
                           000097   474 _P17	=	0x0097
                           000096   475 _P16	=	0x0096
                           000096   476 _TXD_1	=	0x0096
                           000095   477 _P15	=	0x0095
                           000094   478 _P14	=	0x0094
                           000094   479 _SDA	=	0x0094
                           000093   480 _P13	=	0x0093
                           000093   481 _SCL	=	0x0093
                           000092   482 _P12	=	0x0092
                           000091   483 _P11	=	0x0091
                           000090   484 _P10	=	0x0090
                           00008F   485 _TF1	=	0x008f
                           00008E   486 _TR1	=	0x008e
                           00008D   487 _TF0	=	0x008d
                           00008C   488 _TR0	=	0x008c
                           00008B   489 _IE1	=	0x008b
                           00008A   490 _IT1	=	0x008a
                           000089   491 _IE0	=	0x0089
                           000088   492 _IT0	=	0x0088
                           000087   493 _P07	=	0x0087
                           000087   494 _RXD	=	0x0087
                           000086   495 _P06	=	0x0086
                           000086   496 _TXD	=	0x0086
                           000085   497 _P05	=	0x0085
                           000084   498 _P04	=	0x0084
                           000084   499 _STADC	=	0x0084
                           000083   500 _P03	=	0x0083
                           000082   501 _P02	=	0x0082
                           000082   502 _RXD_1	=	0x0082
                           000081   503 _P01	=	0x0081
                           000081   504 _MISO	=	0x0081
                           000080   505 _P00	=	0x0080
                           000080   506 _MOSI	=	0x0080
                                    507 ;--------------------------------------------------------
                                    508 ; overlayable register banks
                                    509 ;--------------------------------------------------------
                                    510 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        511 	.ds 8
                                    512 ;--------------------------------------------------------
                                    513 ; internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area DSEG    (DATA)
      000046                        516 _nrf_cmd_PARM_2:
      000046                        517 	.ds 1
      000047                        518 _nrf_manybytes_PARM_2:
      000047                        519 	.ds 1
      000048                        520 _nrf_wbuf_PARM_2:
      000048                        521 	.ds 3
      00004B                        522 _nrf_wbuf_PARM_3:
      00004B                        523 	.ds 1
      00004C                        524 _btLePacketEncode_PARM_2:
      00004C                        525 	.ds 1
      00004D                        526 _btLePacketEncode_PARM_3:
      00004D                        527 	.ds 1
      00004E                        528 _btLePacketEncode_i_1_42:
      00004E                        529 	.ds 1
                                    530 ;--------------------------------------------------------
                                    531 ; overlayable items in internal ram 
                                    532 ;--------------------------------------------------------
                                    533 	.area	OSEG    (OVR,DATA)
      000054                        534 _btLeCrc_PARM_2:
      000054                        535 	.ds 1
      000055                        536 _btLeCrc_PARM_3:
      000055                        537 	.ds 3
      000058                        538 _btLeCrc_sloc0_1_0:
      000058                        539 	.ds 3
      00005B                        540 _btLeCrc_sloc1_1_0:
      00005B                        541 	.ds 3
                                    542 	.area	OSEG    (OVR,DATA)
                                    543 	.area	OSEG    (OVR,DATA)
      000054                        544 _btLeWhiten_PARM_2:
      000054                        545 	.ds 1
      000055                        546 _btLeWhiten_PARM_3:
      000055                        547 	.ds 1
                                    548 ;--------------------------------------------------------
                                    549 ; indirectly addressable internal ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area ISEG    (DATA)
                                    552 ;--------------------------------------------------------
                                    553 ; absolute internal ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area IABS    (ABS,DATA)
                                    556 	.area IABS    (ABS,DATA)
                                    557 ;--------------------------------------------------------
                                    558 ; bit data
                                    559 ;--------------------------------------------------------
                                    560 	.area BSEG    (BIT)
                                    561 ;--------------------------------------------------------
                                    562 ; paged external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area PSEG    (PAG,XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XSEG    (XDATA)
                                    569 ;--------------------------------------------------------
                                    570 ; absolute external ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area XABS    (ABS,XDATA)
                                    573 ;--------------------------------------------------------
                                    574 ; external initialized ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area XISEG   (XDATA)
                                    577 	.area HOME    (CODE)
                                    578 	.area GSINIT0 (CODE)
                                    579 	.area GSINIT1 (CODE)
                                    580 	.area GSINIT2 (CODE)
                                    581 	.area GSINIT3 (CODE)
                                    582 	.area GSINIT4 (CODE)
                                    583 	.area GSINIT5 (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 	.area GSFINAL (CODE)
                                    586 	.area CSEG    (CODE)
                                    587 ;--------------------------------------------------------
                                    588 ; global & static initialisations
                                    589 ;--------------------------------------------------------
                                    590 	.area HOME    (CODE)
                                    591 	.area GSINIT  (CODE)
                                    592 	.area GSFINAL (CODE)
                                    593 	.area GSINIT  (CODE)
                                    594 ;--------------------------------------------------------
                                    595 ; Home
                                    596 ;--------------------------------------------------------
                                    597 	.area HOME    (CODE)
                                    598 	.area HOME    (CODE)
                                    599 ;--------------------------------------------------------
                                    600 ; code
                                    601 ;--------------------------------------------------------
                                    602 	.area CSEG    (CODE)
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'spi_byte'
                                    605 ;------------------------------------------------------------
                                    606 ;byte                      Allocated to registers 
                                    607 ;buffer                    Allocated to registers r7 
                                    608 ;counter                   Allocated to registers r6 
                                    609 ;------------------------------------------------------------
                                    610 ;	nrf24.c:3: uint8_t spi_byte(uint8_t byte) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function spi_byte
                                    613 ;	-----------------------------------------
      000493                        614 _spi_byte:
                           000007   615 	ar7 = 0x07
                           000006   616 	ar6 = 0x06
                           000005   617 	ar5 = 0x05
                           000004   618 	ar4 = 0x04
                           000003   619 	ar3 = 0x03
                           000002   620 	ar2 = 0x02
                           000001   621 	ar1 = 0x01
                           000000   622 	ar0 = 0x00
      000493 AF 82            [24]  623 	mov	r7,dpl
                                    624 ;	nrf24.c:7: for(counter = 8; counter; counter--)
      000495 7E 08            [12]  625 	mov	r6,#0x08
      000497                        626 00105$:
                                    627 ;	nrf24.c:9: if (buffer & 0x80)   MOSI=1;
      000497 EF               [12]  628 	mov	a,r7
      000498 30 E7 04         [24]  629 	jnb	acc.7,00102$
      00049B D2 80            [12]  630 	setb	_P00
      00049D 80 02            [24]  631 	sjmp	00103$
      00049F                        632 00102$:
                                    633 ;	nrf24.c:10: else  MOSI=0;
      00049F C2 80            [12]  634 	clr	_P00
      0004A1                        635 00103$:
                                    636 ;	nrf24.c:11: buffer <<= 1;
      0004A1 EF               [12]  637 	mov	a,r7
      0004A2 2F               [12]  638 	add	a,r7
      0004A3 FF               [12]  639 	mov	r7,a
                                    640 ;	nrf24.c:12: SCK=1;
      0004A4 D2 90            [12]  641 	setb	_P10
                                    642 ;	nrf24.c:13: DelayT0(3, CONFIG_1US);
      0004A6 75 54 01         [24]  643 	mov	_DelayT0_PARM_2,#0x01
      0004A9 75 55 00         [24]  644 	mov	(_DelayT0_PARM_2 + 1),#0x00
      0004AC 90 00 03         [24]  645 	mov	dptr,#0x0003
      0004AF C0 07            [24]  646 	push	ar7
      0004B1 C0 06            [24]  647 	push	ar6
      0004B3 12 03 64         [24]  648 	lcall	_DelayT0
      0004B6 D0 06            [24]  649 	pop	ar6
      0004B8 D0 07            [24]  650 	pop	ar7
                                    651 ;	nrf24.c:14: buffer &= 0xfe;                //Clear 0th bit
      0004BA 53 07 FE         [24]  652 	anl	ar7,#0xFE
                                    653 ;	nrf24.c:15: buffer|=MISO;
      0004BD 8F 05            [24]  654 	mov	ar5,r7
      0004BF A2 81            [12]  655 	mov	c,_P01
      0004C1 E4               [12]  656 	clr	a
      0004C2 33               [12]  657 	rlc	a
      0004C3 FC               [12]  658 	mov	r4,a
      0004C4 4D               [12]  659 	orl	a,r5
      0004C5 FF               [12]  660 	mov	r7,a
                                    661 ;	nrf24.c:16: SCK=0;  
      0004C6 C2 90            [12]  662 	clr	_P10
                                    663 ;	nrf24.c:7: for(counter = 8; counter; counter--)
      0004C8 EE               [12]  664 	mov	a,r6
      0004C9 14               [12]  665 	dec	a
      0004CA FD               [12]  666 	mov	r5,a
      0004CB FE               [12]  667 	mov	r6,a
      0004CC 70 C9            [24]  668 	jnz	00105$
                                    669 ;	nrf24.c:18: return buffer;
      0004CE 8F 82            [24]  670 	mov	dpl,r7
      0004D0 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'nrf_cmd'
                                    674 ;------------------------------------------------------------
                                    675 ;data                      Allocated with name '_nrf_cmd_PARM_2'
                                    676 ;cmd                       Allocated to registers 
                                    677 ;------------------------------------------------------------
                                    678 ;	nrf24.c:20: void nrf_cmd(uint8_t cmd, uint8_t data) {
                                    679 ;	-----------------------------------------
                                    680 ;	 function nrf_cmd
                                    681 ;	-----------------------------------------
      0004D1                        682 _nrf_cmd:
                                    683 ;	nrf24.c:22: CSN_PIN = 0; 
      0004D1 C2 91            [12]  684 	clr	_P11
                                    685 ;	nrf24.c:23: spi_byte(cmd);
      0004D3 12 04 93         [24]  686 	lcall	_spi_byte
                                    687 ;	nrf24.c:24: spi_byte(data);
      0004D6 85 46 82         [24]  688 	mov	dpl,_nrf_cmd_PARM_2
      0004D9 12 04 93         [24]  689 	lcall	_spi_byte
                                    690 ;	nrf24.c:25: CSN_PIN = 1; 
      0004DC D2 91            [12]  691 	setb	_P11
      0004DE 22               [24]  692 	ret
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'nrf_simplebyte'
                                    695 ;------------------------------------------------------------
                                    696 ;cmd                       Allocated to registers 
                                    697 ;------------------------------------------------------------
                                    698 ;	nrf24.c:28: void nrf_simplebyte(uint8_t cmd) {
                                    699 ;	-----------------------------------------
                                    700 ;	 function nrf_simplebyte
                                    701 ;	-----------------------------------------
      0004DF                        702 _nrf_simplebyte:
                                    703 ;	nrf24.c:30: CSN_PIN = 0; 
      0004DF C2 91            [12]  704 	clr	_P11
                                    705 ;	nrf24.c:31: spi_byte(cmd);
      0004E1 12 04 93         [24]  706 	lcall	_spi_byte
                                    707 ;	nrf24.c:32: CSN_PIN = 1; 
      0004E4 D2 91            [12]  708 	setb	_P11
      0004E6 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'nrf_manybytes'
                                    712 ;------------------------------------------------------------
                                    713 ;len                       Allocated with name '_nrf_manybytes_PARM_2'
                                    714 ;data                      Allocated to registers r5 r6 r7 
                                    715 ;------------------------------------------------------------
                                    716 ;	nrf24.c:35: void nrf_manybytes(uint8_t* data, uint8_t len) {
                                    717 ;	-----------------------------------------
                                    718 ;	 function nrf_manybytes
                                    719 ;	-----------------------------------------
      0004E7                        720 _nrf_manybytes:
      0004E7 AD 82            [24]  721 	mov	r5,dpl
      0004E9 AE 83            [24]  722 	mov	r6,dph
      0004EB AF F0            [24]  723 	mov	r7,b
                                    724 ;	nrf24.c:37: CSN_PIN = 0; 
      0004ED C2 91            [12]  725 	clr	_P11
                                    726 ;	nrf24.c:38: do {
      0004EF AC 47            [24]  727 	mov	r4,_nrf_manybytes_PARM_2
      0004F1                        728 00101$:
                                    729 ;	nrf24.c:39: spi_byte(*data++);
      0004F1 8D 82            [24]  730 	mov	dpl,r5
      0004F3 8E 83            [24]  731 	mov	dph,r6
      0004F5 8F F0            [24]  732 	mov	b,r7
      0004F7 12 0C E1         [24]  733 	lcall	__gptrget
      0004FA FB               [12]  734 	mov	r3,a
      0004FB A3               [24]  735 	inc	dptr
      0004FC AD 82            [24]  736 	mov	r5,dpl
      0004FE AE 83            [24]  737 	mov	r6,dph
      000500 8B 82            [24]  738 	mov	dpl,r3
      000502 C0 07            [24]  739 	push	ar7
      000504 C0 06            [24]  740 	push	ar6
      000506 C0 05            [24]  741 	push	ar5
      000508 C0 04            [24]  742 	push	ar4
      00050A 12 04 93         [24]  743 	lcall	_spi_byte
      00050D D0 04            [24]  744 	pop	ar4
      00050F D0 05            [24]  745 	pop	ar5
      000511 D0 06            [24]  746 	pop	ar6
      000513 D0 07            [24]  747 	pop	ar7
                                    748 ;	nrf24.c:40: } while (--len);
      000515 DC DA            [24]  749 	djnz	r4,00101$
                                    750 ;	nrf24.c:41: CSN_PIN = 1; 
      000517 D2 91            [12]  751 	setb	_P11
      000519 22               [24]  752 	ret
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'nrf_wbuf'
                                    755 ;------------------------------------------------------------
                                    756 ;buff                      Allocated with name '_nrf_wbuf_PARM_2'
                                    757 ;len                       Allocated with name '_nrf_wbuf_PARM_3'
                                    758 ;reg                       Allocated to registers 
                                    759 ;sp                        Allocated to registers r7 
                                    760 ;------------------------------------------------------------
                                    761 ;	nrf24.c:44: void nrf_wbuf(uint8_t reg,uint8_t* buff ,uint8_t len)
                                    762 ;	-----------------------------------------
                                    763 ;	 function nrf_wbuf
                                    764 ;	-----------------------------------------
      00051A                        765 _nrf_wbuf:
                                    766 ;	nrf24.c:47: CSN_PIN = 0; 
      00051A C2 91            [12]  767 	clr	_P11
                                    768 ;	nrf24.c:48: spi_byte(reg);
      00051C 12 04 93         [24]  769 	lcall	_spi_byte
                                    770 ;	nrf24.c:49: for(sp=0;sp<len;sp++)
      00051F 7F 00            [12]  771 	mov	r7,#0x00
      000521                        772 00103$:
      000521 C3               [12]  773 	clr	c
      000522 EF               [12]  774 	mov	a,r7
      000523 95 4B            [12]  775 	subb	a,_nrf_wbuf_PARM_3
      000525 50 1F            [24]  776 	jnc	00101$
                                    777 ;	nrf24.c:51: spi_byte(buff[sp]);
      000527 EF               [12]  778 	mov	a,r7
      000528 25 48            [12]  779 	add	a,_nrf_wbuf_PARM_2
      00052A FC               [12]  780 	mov	r4,a
      00052B E4               [12]  781 	clr	a
      00052C 35 49            [12]  782 	addc	a,(_nrf_wbuf_PARM_2 + 1)
      00052E FD               [12]  783 	mov	r5,a
      00052F AE 4A            [24]  784 	mov	r6,(_nrf_wbuf_PARM_2 + 2)
      000531 8C 82            [24]  785 	mov	dpl,r4
      000533 8D 83            [24]  786 	mov	dph,r5
      000535 8E F0            [24]  787 	mov	b,r6
      000537 12 0C E1         [24]  788 	lcall	__gptrget
      00053A F5 82            [12]  789 	mov	dpl,a
      00053C C0 07            [24]  790 	push	ar7
      00053E 12 04 93         [24]  791 	lcall	_spi_byte
      000541 D0 07            [24]  792 	pop	ar7
                                    793 ;	nrf24.c:49: for(sp=0;sp<len;sp++)
      000543 0F               [12]  794 	inc	r7
      000544 80 DB            [24]  795 	sjmp	00103$
      000546                        796 00101$:
                                    797 ;	nrf24.c:53: CSN_PIN = 1; 
      000546 D2 91            [12]  798 	setb	_P11
      000548 22               [24]  799 	ret
                                    800 ;------------------------------------------------------------
                                    801 ;Allocation info for local variables in function 'btLeCrc'
                                    802 ;------------------------------------------------------------
                                    803 ;len                       Allocated with name '_btLeCrc_PARM_2'
                                    804 ;dst                       Allocated with name '_btLeCrc_PARM_3'
                                    805 ;data                      Allocated to registers 
                                    806 ;v                         Allocated to registers r2 
                                    807 ;t                         Allocated to registers r0 
                                    808 ;d                         Allocated to registers r3 
                                    809 ;sloc0                     Allocated with name '_btLeCrc_sloc0_1_0'
                                    810 ;sloc1                     Allocated with name '_btLeCrc_sloc1_1_0'
                                    811 ;------------------------------------------------------------
                                    812 ;	nrf24.c:57: void btLeCrc(const uint8_t* data, uint8_t len, uint8_t* dst) {
                                    813 ;	-----------------------------------------
                                    814 ;	 function btLeCrc
                                    815 ;	-----------------------------------------
      000549                        816 _btLeCrc:
      000549 AD 82            [24]  817 	mov	r5,dpl
      00054B AE 83            [24]  818 	mov	r6,dph
      00054D AF F0            [24]  819 	mov	r7,b
                                    820 ;	nrf24.c:61: while (len--) {
      00054F AC 54            [24]  821 	mov	r4,_btLeCrc_PARM_2
      000551                        822 00108$:
      000551 8C 03            [24]  823 	mov	ar3,r4
      000553 1C               [12]  824 	dec	r4
      000554 EB               [12]  825 	mov	a,r3
      000555 70 01            [24]  826 	jnz	00138$
      000557 22               [24]  827 	ret
      000558                        828 00138$:
                                    829 ;	nrf24.c:62: d = *data++;
      000558 8D 82            [24]  830 	mov	dpl,r5
      00055A 8E 83            [24]  831 	mov	dph,r6
      00055C 8F F0            [24]  832 	mov	b,r7
      00055E 12 0C E1         [24]  833 	lcall	__gptrget
      000561 FB               [12]  834 	mov	r3,a
      000562 A3               [24]  835 	inc	dptr
      000563 AD 82            [24]  836 	mov	r5,dpl
      000565 AE 83            [24]  837 	mov	r6,dph
                                    838 ;	nrf24.c:63: for (v = 0; v < 8; v++, d >>= 1) {
      000567 7A 00            [12]  839 	mov	r2,#0x00
      000569                        840 00111$:
                                    841 ;	nrf24.c:64: t = dst[0] >> 7;
      000569 85 55 58         [24]  842 	mov	_btLeCrc_sloc0_1_0,_btLeCrc_PARM_3
      00056C 85 56 59         [24]  843 	mov	(_btLeCrc_sloc0_1_0 + 1),(_btLeCrc_PARM_3 + 1)
      00056F 85 57 5A         [24]  844 	mov	(_btLeCrc_sloc0_1_0 + 2),(_btLeCrc_PARM_3 + 2)
      000572 85 58 82         [24]  845 	mov	dpl,_btLeCrc_sloc0_1_0
      000575 85 59 83         [24]  846 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      000578 85 5A F0         [24]  847 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      00057B 12 0C E1         [24]  848 	lcall	__gptrget
      00057E F9               [12]  849 	mov	r1,a
      00057F 23               [12]  850 	rl	a
      000580 54 01            [12]  851 	anl	a,#0x01
      000582 F8               [12]  852 	mov	r0,a
                                    853 ;	nrf24.c:65: dst[0] <<= 1;
      000583 E9               [12]  854 	mov	a,r1
      000584 29               [12]  855 	add	a,r1
      000585 85 58 82         [24]  856 	mov	dpl,_btLeCrc_sloc0_1_0
      000588 85 59 83         [24]  857 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      00058B 85 5A F0         [24]  858 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      00058E 12 0B 31         [24]  859 	lcall	__gptrput
                                    860 ;	nrf24.c:66: if (dst[1] & 0x80) dst[0] |= 1;
      000591 74 01            [12]  861 	mov	a,#0x01
      000593 25 58            [12]  862 	add	a,_btLeCrc_sloc0_1_0
      000595 F5 5B            [12]  863 	mov	_btLeCrc_sloc1_1_0,a
      000597 E4               [12]  864 	clr	a
      000598 35 59            [12]  865 	addc	a,(_btLeCrc_sloc0_1_0 + 1)
      00059A F5 5C            [12]  866 	mov	(_btLeCrc_sloc1_1_0 + 1),a
      00059C 85 5A 5D         [24]  867 	mov	(_btLeCrc_sloc1_1_0 + 2),(_btLeCrc_sloc0_1_0 + 2)
      00059F 85 5B 82         [24]  868 	mov	dpl,_btLeCrc_sloc1_1_0
      0005A2 85 5C 83         [24]  869 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      0005A5 85 5D F0         [24]  870 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      0005A8 12 0C E1         [24]  871 	lcall	__gptrget
      0005AB F9               [12]  872 	mov	r1,a
      0005AC 30 E7 1D         [24]  873 	jnb	acc.7,00102$
      0005AF 85 58 82         [24]  874 	mov	dpl,_btLeCrc_sloc0_1_0
      0005B2 85 59 83         [24]  875 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      0005B5 85 5A F0         [24]  876 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      0005B8 12 0C E1         [24]  877 	lcall	__gptrget
      0005BB F9               [12]  878 	mov	r1,a
      0005BC 43 01 01         [24]  879 	orl	ar1,#0x01
      0005BF 85 58 82         [24]  880 	mov	dpl,_btLeCrc_sloc0_1_0
      0005C2 85 59 83         [24]  881 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      0005C5 85 5A F0         [24]  882 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      0005C8 E9               [12]  883 	mov	a,r1
      0005C9 12 0B 31         [24]  884 	lcall	__gptrput
      0005CC                        885 00102$:
                                    886 ;	nrf24.c:67: dst[1] <<= 1;
      0005CC 85 5B 82         [24]  887 	mov	dpl,_btLeCrc_sloc1_1_0
      0005CF 85 5C 83         [24]  888 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      0005D2 85 5D F0         [24]  889 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      0005D5 12 0C E1         [24]  890 	lcall	__gptrget
      0005D8 25 E0            [12]  891 	add	a,acc
      0005DA 85 5B 82         [24]  892 	mov	dpl,_btLeCrc_sloc1_1_0
      0005DD 85 5C 83         [24]  893 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      0005E0 85 5D F0         [24]  894 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      0005E3 12 0B 31         [24]  895 	lcall	__gptrput
                                    896 ;	nrf24.c:68: if (dst[2] & 0x80) dst[1] |= 1;
      0005E6 74 02            [12]  897 	mov	a,#0x02
      0005E8 25 58            [12]  898 	add	a,_btLeCrc_sloc0_1_0
      0005EA F5 58            [12]  899 	mov	_btLeCrc_sloc0_1_0,a
      0005EC E4               [12]  900 	clr	a
      0005ED 35 59            [12]  901 	addc	a,(_btLeCrc_sloc0_1_0 + 1)
      0005EF F5 59            [12]  902 	mov	(_btLeCrc_sloc0_1_0 + 1),a
      0005F1 85 58 82         [24]  903 	mov	dpl,_btLeCrc_sloc0_1_0
      0005F4 85 59 83         [24]  904 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      0005F7 85 5A F0         [24]  905 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      0005FA 12 0C E1         [24]  906 	lcall	__gptrget
      0005FD F9               [12]  907 	mov	r1,a
      0005FE 30 E7 1D         [24]  908 	jnb	acc.7,00104$
      000601 85 5B 82         [24]  909 	mov	dpl,_btLeCrc_sloc1_1_0
      000604 85 5C 83         [24]  910 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      000607 85 5D F0         [24]  911 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      00060A 12 0C E1         [24]  912 	lcall	__gptrget
      00060D F9               [12]  913 	mov	r1,a
      00060E 43 01 01         [24]  914 	orl	ar1,#0x01
      000611 85 5B 82         [24]  915 	mov	dpl,_btLeCrc_sloc1_1_0
      000614 85 5C 83         [24]  916 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      000617 85 5D F0         [24]  917 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      00061A E9               [12]  918 	mov	a,r1
      00061B 12 0B 31         [24]  919 	lcall	__gptrput
      00061E                        920 00104$:
                                    921 ;	nrf24.c:69: dst[2] <<= 1;
      00061E 85 58 82         [24]  922 	mov	dpl,_btLeCrc_sloc0_1_0
      000621 85 59 83         [24]  923 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      000624 85 5A F0         [24]  924 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      000627 12 0C E1         [24]  925 	lcall	__gptrget
      00062A 25 E0            [12]  926 	add	a,acc
      00062C 85 58 82         [24]  927 	mov	dpl,_btLeCrc_sloc0_1_0
      00062F 85 59 83         [24]  928 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      000632 85 5A F0         [24]  929 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      000635 12 0B 31         [24]  930 	lcall	__gptrput
                                    931 ;	nrf24.c:71: if (t != (d & 1)) {
      000638 74 01            [12]  932 	mov	a,#0x01
      00063A 5B               [12]  933 	anl	a,r3
      00063B F9               [12]  934 	mov	r1,a
      00063C E8               [12]  935 	mov	a,r0
      00063D B5 01 02         [24]  936 	cjne	a,ar1,00141$
      000640 80 3A            [24]  937 	sjmp	00112$
      000642                        938 00141$:
                                    939 ;	nrf24.c:72: dst[2] ^= 0x5B;
      000642 85 58 82         [24]  940 	mov	dpl,_btLeCrc_sloc0_1_0
      000645 85 59 83         [24]  941 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      000648 85 5A F0         [24]  942 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      00064B 12 0C E1         [24]  943 	lcall	__gptrget
      00064E F9               [12]  944 	mov	r1,a
      00064F 63 01 5B         [24]  945 	xrl	ar1,#0x5B
      000652 85 58 82         [24]  946 	mov	dpl,_btLeCrc_sloc0_1_0
      000655 85 59 83         [24]  947 	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
      000658 85 5A F0         [24]  948 	mov	b,(_btLeCrc_sloc0_1_0 + 2)
      00065B E9               [12]  949 	mov	a,r1
      00065C 12 0B 31         [24]  950 	lcall	__gptrput
                                    951 ;	nrf24.c:73: dst[1] ^= 0x06;
      00065F 85 5B 82         [24]  952 	mov	dpl,_btLeCrc_sloc1_1_0
      000662 85 5C 83         [24]  953 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      000665 85 5D F0         [24]  954 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      000668 12 0C E1         [24]  955 	lcall	__gptrget
      00066B F9               [12]  956 	mov	r1,a
      00066C 63 01 06         [24]  957 	xrl	ar1,#0x06
      00066F 85 5B 82         [24]  958 	mov	dpl,_btLeCrc_sloc1_1_0
      000672 85 5C 83         [24]  959 	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
      000675 85 5D F0         [24]  960 	mov	b,(_btLeCrc_sloc1_1_0 + 2)
      000678 E9               [12]  961 	mov	a,r1
      000679 12 0B 31         [24]  962 	lcall	__gptrput
      00067C                        963 00112$:
                                    964 ;	nrf24.c:63: for (v = 0; v < 8; v++, d >>= 1) {
      00067C 0A               [12]  965 	inc	r2
      00067D EB               [12]  966 	mov	a,r3
      00067E C3               [12]  967 	clr	c
      00067F 13               [12]  968 	rrc	a
      000680 FB               [12]  969 	mov	r3,a
      000681 BA 08 00         [24]  970 	cjne	r2,#0x08,00142$
      000684                        971 00142$:
      000684 50 03            [24]  972 	jnc	00143$
      000686 02 05 69         [24]  973 	ljmp	00111$
      000689                        974 00143$:
      000689 02 05 51         [24]  975 	ljmp	00108$
                                    976 ;------------------------------------------------------------
                                    977 ;Allocation info for local variables in function 'swapbits'
                                    978 ;------------------------------------------------------------
                                    979 ;a                         Allocated to registers r7 
                                    980 ;v                         Allocated to registers r6 
                                    981 ;------------------------------------------------------------
                                    982 ;	nrf24.c:79: uint8_t  swapbits(uint8_t a) {
                                    983 ;	-----------------------------------------
                                    984 ;	 function swapbits
                                    985 ;	-----------------------------------------
      00068C                        986 _swapbits:
      00068C AF 82            [24]  987 	mov	r7,dpl
                                    988 ;	nrf24.c:81: uint8_t v = 0;
      00068E 7E 00            [12]  989 	mov	r6,#0x00
                                    990 ;	nrf24.c:82: if (a & 0x80) v |= 0x01;
      000690 EF               [12]  991 	mov	a,r7
      000691 30 E7 02         [24]  992 	jnb	acc.7,00102$
      000694 7E 01            [12]  993 	mov	r6,#0x01
      000696                        994 00102$:
                                    995 ;	nrf24.c:83: if (a & 0x40) v |= 0x02;
      000696 EF               [12]  996 	mov	a,r7
      000697 30 E6 03         [24]  997 	jnb	acc.6,00104$
      00069A 43 06 02         [24]  998 	orl	ar6,#0x02
      00069D                        999 00104$:
                                   1000 ;	nrf24.c:84: if (a & 0x20) v |= 0x04;
      00069D EF               [12] 1001 	mov	a,r7
      00069E 30 E5 03         [24] 1002 	jnb	acc.5,00106$
      0006A1 43 06 04         [24] 1003 	orl	ar6,#0x04
      0006A4                       1004 00106$:
                                   1005 ;	nrf24.c:85: if (a & 0x10) v |= 0x08;
      0006A4 EF               [12] 1006 	mov	a,r7
      0006A5 30 E4 03         [24] 1007 	jnb	acc.4,00108$
      0006A8 43 06 08         [24] 1008 	orl	ar6,#0x08
      0006AB                       1009 00108$:
                                   1010 ;	nrf24.c:86: if (a & 0x08) v |= 0x10;
      0006AB EF               [12] 1011 	mov	a,r7
      0006AC 30 E3 03         [24] 1012 	jnb	acc.3,00110$
      0006AF 43 06 10         [24] 1013 	orl	ar6,#0x10
      0006B2                       1014 00110$:
                                   1015 ;	nrf24.c:87: if (a & 0x04) v |= 0x20;
      0006B2 EF               [12] 1016 	mov	a,r7
      0006B3 30 E2 03         [24] 1017 	jnb	acc.2,00112$
      0006B6 43 06 20         [24] 1018 	orl	ar6,#0x20
      0006B9                       1019 00112$:
                                   1020 ;	nrf24.c:88: if (a & 0x02) v |= 0x40;
      0006B9 EF               [12] 1021 	mov	a,r7
      0006BA 30 E1 03         [24] 1022 	jnb	acc.1,00114$
      0006BD 43 06 40         [24] 1023 	orl	ar6,#0x40
      0006C0                       1024 00114$:
                                   1025 ;	nrf24.c:89: if (a & 0x01) v |= 0x80;
      0006C0 EF               [12] 1026 	mov	a,r7
      0006C1 30 E0 03         [24] 1027 	jnb	acc.0,00116$
      0006C4 43 06 80         [24] 1028 	orl	ar6,#0x80
      0006C7                       1029 00116$:
                                   1030 ;	nrf24.c:90: return v;
      0006C7 8E 82            [24] 1031 	mov	dpl,r6
      0006C9 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'btLeWhiten'
                                   1035 ;------------------------------------------------------------
                                   1036 ;len                       Allocated with name '_btLeWhiten_PARM_2'
                                   1037 ;whitenCoeff               Allocated with name '_btLeWhiten_PARM_3'
                                   1038 ;data                      Allocated to registers 
                                   1039 ;m                         Allocated to registers r3 
                                   1040 ;------------------------------------------------------------
                                   1041 ;	nrf24.c:93: void btLeWhiten(uint8_t* data, uint8_t len, uint8_t whitenCoeff) {
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function btLeWhiten
                                   1044 ;	-----------------------------------------
      0006CA                       1045 _btLeWhiten:
      0006CA AD 82            [24] 1046 	mov	r5,dpl
      0006CC AE 83            [24] 1047 	mov	r6,dph
      0006CE AF F0            [24] 1048 	mov	r7,b
                                   1049 ;	nrf24.c:96: while (len--) {
      0006D0 AC 54            [24] 1050 	mov	r4,_btLeWhiten_PARM_2
      0006D2                       1051 00104$:
      0006D2 8C 03            [24] 1052 	mov	ar3,r4
      0006D4 1C               [12] 1053 	dec	r4
      0006D5 EB               [12] 1054 	mov	a,r3
      0006D6 60 33            [24] 1055 	jz	00109$
                                   1056 ;	nrf24.c:97: for (m = 1; m; m <<= 1) {
      0006D8 7B 01            [12] 1057 	mov	r3,#0x01
      0006DA                       1058 00107$:
                                   1059 ;	nrf24.c:98: if (whitenCoeff & 0x80) {
      0006DA E5 55            [12] 1060 	mov	a,_btLeWhiten_PARM_3
      0006DC 30 E7 1A         [24] 1061 	jnb	acc.7,00102$
                                   1062 ;	nrf24.c:99: whitenCoeff ^= 0x11;
      0006DF 63 55 11         [24] 1063 	xrl	_btLeWhiten_PARM_3,#0x11
                                   1064 ;	nrf24.c:100: (*data) ^= m;
      0006E2 8D 82            [24] 1065 	mov	dpl,r5
      0006E4 8E 83            [24] 1066 	mov	dph,r6
      0006E6 8F F0            [24] 1067 	mov	b,r7
      0006E8 12 0C E1         [24] 1068 	lcall	__gptrget
      0006EB FA               [12] 1069 	mov	r2,a
      0006EC EB               [12] 1070 	mov	a,r3
      0006ED 62 02            [12] 1071 	xrl	ar2,a
      0006EF 8D 82            [24] 1072 	mov	dpl,r5
      0006F1 8E 83            [24] 1073 	mov	dph,r6
      0006F3 8F F0            [24] 1074 	mov	b,r7
      0006F5 EA               [12] 1075 	mov	a,r2
      0006F6 12 0B 31         [24] 1076 	lcall	__gptrput
      0006F9                       1077 00102$:
                                   1078 ;	nrf24.c:102: whitenCoeff <<= 1;
      0006F9 E5 55            [12] 1079 	mov	a,_btLeWhiten_PARM_3
      0006FB 25 55            [12] 1080 	add	a,_btLeWhiten_PARM_3
      0006FD F5 55            [12] 1081 	mov	_btLeWhiten_PARM_3,a
                                   1082 ;	nrf24.c:97: for (m = 1; m; m <<= 1) {
      0006FF EB               [12] 1083 	mov	a,r3
      000700 2B               [12] 1084 	add	a,r3
      000701 FB               [12] 1085 	mov	r3,a
      000702 70 D6            [24] 1086 	jnz	00107$
                                   1087 ;	nrf24.c:104: data++;
      000704 0D               [12] 1088 	inc	r5
      000705 BD 00 CA         [24] 1089 	cjne	r5,#0x00,00104$
      000708 0E               [12] 1090 	inc	r6
      000709 80 C7            [24] 1091 	sjmp	00104$
      00070B                       1092 00109$:
      00070B 22               [24] 1093 	ret
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'btLeWhitenStart'
                                   1096 ;------------------------------------------------------------
                                   1097 ;chan                      Allocated to registers 
                                   1098 ;------------------------------------------------------------
                                   1099 ;	nrf24.c:108: static inline uint8_t btLeWhitenStart(uint8_t chan) {
                                   1100 ;	-----------------------------------------
                                   1101 ;	 function btLeWhitenStart
                                   1102 ;	-----------------------------------------
      00070C                       1103 _btLeWhitenStart:
                                   1104 ;	nrf24.c:110: return swapbits(chan) | 2;
      00070C 12 06 8C         [24] 1105 	lcall	_swapbits
      00070F E5 82            [12] 1106 	mov	a,dpl
      000711 44 02            [12] 1107 	orl	a,#0x02
      000713 F5 82            [12] 1108 	mov	dpl,a
      000715 22               [24] 1109 	ret
                                   1110 ;------------------------------------------------------------
                                   1111 ;Allocation info for local variables in function 'btLePacketEncode'
                                   1112 ;------------------------------------------------------------
                                   1113 ;len                       Allocated with name '_btLePacketEncode_PARM_2'
                                   1114 ;chan                      Allocated with name '_btLePacketEncode_PARM_3'
                                   1115 ;packet                    Allocated to registers r5 r6 r7 
                                   1116 ;__00010001                Allocated to registers r4 r3 
                                   1117 ;i                         Allocated with name '_btLePacketEncode_i_1_42'
                                   1118 ;dataLen                   Allocated to registers r4 
                                   1119 ;__00020002                Allocated to registers 
                                   1120 ;chan                      Allocated to registers 
                                   1121 ;------------------------------------------------------------
                                   1122 ;	nrf24.c:114: void btLePacketEncode(uint8_t* packet, uint8_t len, uint8_t chan) {
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function btLePacketEncode
                                   1125 ;	-----------------------------------------
      000716                       1126 _btLePacketEncode:
      000716 AD 82            [24] 1127 	mov	r5,dpl
      000718 AE 83            [24] 1128 	mov	r6,dph
      00071A AF F0            [24] 1129 	mov	r7,b
                                   1130 ;	nrf24.c:117: uint8_t i, dataLen = len - 3;
      00071C E5 4C            [12] 1131 	mov	a,_btLePacketEncode_PARM_2
      00071E 24 FD            [12] 1132 	add	a,#0xFD
                                   1133 ;	nrf24.c:118: btLeCrc(packet, dataLen, packet + dataLen);
      000720 FC               [12] 1134 	mov	r4,a
      000721 2D               [12] 1135 	add	a,r5
      000722 F5 55            [12] 1136 	mov	_btLeCrc_PARM_3,a
      000724 E4               [12] 1137 	clr	a
      000725 3E               [12] 1138 	addc	a,r6
      000726 F5 56            [12] 1139 	mov	(_btLeCrc_PARM_3 + 1),a
      000728 8F 57            [24] 1140 	mov	(_btLeCrc_PARM_3 + 2),r7
      00072A 8C 54            [24] 1141 	mov	_btLeCrc_PARM_2,r4
      00072C 8D 82            [24] 1142 	mov	dpl,r5
      00072E 8E 83            [24] 1143 	mov	dph,r6
      000730 8F F0            [24] 1144 	mov	b,r7
      000732 C0 07            [24] 1145 	push	ar7
      000734 C0 06            [24] 1146 	push	ar6
      000736 C0 05            [24] 1147 	push	ar5
      000738 C0 04            [24] 1148 	push	ar4
      00073A 12 05 49         [24] 1149 	lcall	_btLeCrc
      00073D D0 04            [24] 1150 	pop	ar4
      00073F D0 05            [24] 1151 	pop	ar5
      000741 D0 06            [24] 1152 	pop	ar6
      000743 D0 07            [24] 1153 	pop	ar7
                                   1154 ;	nrf24.c:119: for (i = 0; i < 3; i++, dataLen++)
      000745 75 4E 00         [24] 1155 	mov	_btLePacketEncode_i_1_42,#0x00
      000748                       1156 00104$:
                                   1157 ;	nrf24.c:120: packet[dataLen] = swapbits(packet[dataLen]);
      000748 EC               [12] 1158 	mov	a,r4
      000749 2D               [12] 1159 	add	a,r5
      00074A F8               [12] 1160 	mov	r0,a
      00074B E4               [12] 1161 	clr	a
      00074C 3E               [12] 1162 	addc	a,r6
      00074D F9               [12] 1163 	mov	r1,a
      00074E 8F 02            [24] 1164 	mov	ar2,r7
      000750 88 82            [24] 1165 	mov	dpl,r0
      000752 89 83            [24] 1166 	mov	dph,r1
      000754 8A F0            [24] 1167 	mov	b,r2
      000756 12 0C E1         [24] 1168 	lcall	__gptrget
      000759 F5 82            [12] 1169 	mov	dpl,a
      00075B C0 07            [24] 1170 	push	ar7
      00075D C0 06            [24] 1171 	push	ar6
      00075F C0 05            [24] 1172 	push	ar5
      000761 C0 04            [24] 1173 	push	ar4
      000763 C0 02            [24] 1174 	push	ar2
      000765 C0 01            [24] 1175 	push	ar1
      000767 C0 00            [24] 1176 	push	ar0
      000769 12 06 8C         [24] 1177 	lcall	_swapbits
      00076C AB 82            [24] 1178 	mov	r3,dpl
      00076E D0 00            [24] 1179 	pop	ar0
      000770 D0 01            [24] 1180 	pop	ar1
      000772 D0 02            [24] 1181 	pop	ar2
      000774 D0 04            [24] 1182 	pop	ar4
      000776 D0 05            [24] 1183 	pop	ar5
      000778 D0 06            [24] 1184 	pop	ar6
      00077A D0 07            [24] 1185 	pop	ar7
      00077C 88 82            [24] 1186 	mov	dpl,r0
      00077E 89 83            [24] 1187 	mov	dph,r1
      000780 8A F0            [24] 1188 	mov	b,r2
      000782 EB               [12] 1189 	mov	a,r3
      000783 12 0B 31         [24] 1190 	lcall	__gptrput
                                   1191 ;	nrf24.c:119: for (i = 0; i < 3; i++, dataLen++)
      000786 05 4E            [12] 1192 	inc	_btLePacketEncode_i_1_42
      000788 0C               [12] 1193 	inc	r4
      000789 74 FD            [12] 1194 	mov	a,#0x100 - 0x03
      00078B 25 4E            [12] 1195 	add	a,_btLePacketEncode_i_1_42
      00078D 50 B9            [24] 1196 	jnc	00104$
                                   1197 ;	nrf24.c:121: btLeWhiten(packet, len, btLeWhitenStart(chan));
      00078F 85 4D 82         [24] 1198 	mov	dpl,_btLePacketEncode_PARM_3
                                   1199 ;	nrf24.c:110: return swapbits(chan) | 2;
      000792 C0 07            [24] 1200 	push	ar7
      000794 C0 06            [24] 1201 	push	ar6
      000796 C0 05            [24] 1202 	push	ar5
      000798 12 06 8C         [24] 1203 	lcall	_swapbits
      00079B E5 82            [12] 1204 	mov	a,dpl
      00079D D0 05            [24] 1205 	pop	ar5
      00079F D0 06            [24] 1206 	pop	ar6
      0007A1 D0 07            [24] 1207 	pop	ar7
      0007A3 44 02            [12] 1208 	orl	a,#0x02
      0007A5 FC               [12] 1209 	mov	r4,a
                                   1210 ;	nrf24.c:121: btLeWhiten(packet, len, btLeWhitenStart(chan));
      0007A6 85 4C 54         [24] 1211 	mov	_btLeWhiten_PARM_2,_btLePacketEncode_PARM_2
      0007A9 8C 55            [24] 1212 	mov	_btLeWhiten_PARM_3,r4
      0007AB 8D 82            [24] 1213 	mov	dpl,r5
      0007AD 8E 83            [24] 1214 	mov	dph,r6
      0007AF 8F F0            [24] 1215 	mov	b,r7
      0007B1 C0 07            [24] 1216 	push	ar7
      0007B3 C0 06            [24] 1217 	push	ar6
      0007B5 C0 05            [24] 1218 	push	ar5
      0007B7 12 06 CA         [24] 1219 	lcall	_btLeWhiten
      0007BA D0 05            [24] 1220 	pop	ar5
      0007BC D0 06            [24] 1221 	pop	ar6
      0007BE D0 07            [24] 1222 	pop	ar7
                                   1223 ;	nrf24.c:122: for (i = 0; i < len; i++)
      0007C0 7C 00            [12] 1224 	mov	r4,#0x00
      0007C2                       1225 00107$:
      0007C2 C3               [12] 1226 	clr	c
      0007C3 EC               [12] 1227 	mov	a,r4
      0007C4 95 4C            [12] 1228 	subb	a,_btLePacketEncode_PARM_2
      0007C6 50 41            [24] 1229 	jnc	00109$
                                   1230 ;	nrf24.c:123: packet[i] = swapbits(packet[i]); // the byte order of the packet should be reversed as well
      0007C8 EC               [12] 1231 	mov	a,r4
      0007C9 2D               [12] 1232 	add	a,r5
      0007CA F9               [12] 1233 	mov	r1,a
      0007CB E4               [12] 1234 	clr	a
      0007CC 3E               [12] 1235 	addc	a,r6
      0007CD FA               [12] 1236 	mov	r2,a
      0007CE 8F 03            [24] 1237 	mov	ar3,r7
      0007D0 89 82            [24] 1238 	mov	dpl,r1
      0007D2 8A 83            [24] 1239 	mov	dph,r2
      0007D4 8B F0            [24] 1240 	mov	b,r3
      0007D6 12 0C E1         [24] 1241 	lcall	__gptrget
      0007D9 F5 82            [12] 1242 	mov	dpl,a
      0007DB C0 07            [24] 1243 	push	ar7
      0007DD C0 06            [24] 1244 	push	ar6
      0007DF C0 05            [24] 1245 	push	ar5
      0007E1 C0 04            [24] 1246 	push	ar4
      0007E3 C0 03            [24] 1247 	push	ar3
      0007E5 C0 02            [24] 1248 	push	ar2
      0007E7 C0 01            [24] 1249 	push	ar1
      0007E9 12 06 8C         [24] 1250 	lcall	_swapbits
      0007EC A8 82            [24] 1251 	mov	r0,dpl
      0007EE D0 01            [24] 1252 	pop	ar1
      0007F0 D0 02            [24] 1253 	pop	ar2
      0007F2 D0 03            [24] 1254 	pop	ar3
      0007F4 D0 04            [24] 1255 	pop	ar4
      0007F6 D0 05            [24] 1256 	pop	ar5
      0007F8 D0 06            [24] 1257 	pop	ar6
      0007FA D0 07            [24] 1258 	pop	ar7
      0007FC 89 82            [24] 1259 	mov	dpl,r1
      0007FE 8A 83            [24] 1260 	mov	dph,r2
      000800 8B F0            [24] 1261 	mov	b,r3
      000802 E8               [12] 1262 	mov	a,r0
      000803 12 0B 31         [24] 1263 	lcall	__gptrput
                                   1264 ;	nrf24.c:122: for (i = 0; i < len; i++)
      000806 0C               [12] 1265 	inc	r4
      000807 80 B9            [24] 1266 	sjmp	00107$
      000809                       1267 00109$:
      000809 22               [24] 1268 	ret
                                   1269 ;------------------------------------------------------------
                                   1270 ;Allocation info for local variables in function 'ble_init'
                                   1271 ;------------------------------------------------------------
                                   1272 ;	nrf24.c:126: void ble_init(void){
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function ble_init
                                   1275 ;	-----------------------------------------
      00080A                       1276 _ble_init:
                                   1277 ;	nrf24.c:128: nrf_cmd(W_REGISTER|CONFIG, 0x12);  //on, no crc, int on RX/TX done
      00080A 75 46 12         [24] 1278 	mov	_nrf_cmd_PARM_2,#0x12
      00080D 75 82 20         [24] 1279 	mov	dpl,#0x20
      000810 12 04 D1         [24] 1280 	lcall	_nrf_cmd
                                   1281 ;	nrf24.c:129: nrf_cmd(W_REGISTER|EN_AA, 0x00);  //no auto-acknowledge
      000813 75 46 00         [24] 1282 	mov	_nrf_cmd_PARM_2,#0x00
      000816 75 82 21         [24] 1283 	mov	dpl,#0x21
      000819 12 04 D1         [24] 1284 	lcall	_nrf_cmd
                                   1285 ;	nrf24.c:130: nrf_cmd(W_REGISTER|EN_RXADDR, 0x00);  //no RX
      00081C 75 46 00         [24] 1286 	mov	_nrf_cmd_PARM_2,#0x00
      00081F 75 82 22         [24] 1287 	mov	dpl,#0x22
      000822 12 04 D1         [24] 1288 	lcall	_nrf_cmd
                                   1289 ;	nrf24.c:131: nrf_cmd(W_REGISTER|SETUP_AW, 0x02);  //4-byte address
      000825 75 46 02         [24] 1290 	mov	_nrf_cmd_PARM_2,#0x02
      000828 75 82 23         [24] 1291 	mov	dpl,#0x23
      00082B 12 04 D1         [24] 1292 	lcall	_nrf_cmd
                                   1293 ;	nrf24.c:132: nrf_cmd(W_REGISTER|SETUP_RETR, 0x00);  //no auto-retransmit
      00082E 75 46 00         [24] 1294 	mov	_nrf_cmd_PARM_2,#0x00
      000831 75 82 24         [24] 1295 	mov	dpl,#0x24
      000834 12 04 D1         [24] 1296 	lcall	_nrf_cmd
                                   1297 ;	nrf24.c:133: nrf_cmd(W_REGISTER|RF_SETUP, 0x06);  //1MBps at 0dBm
      000837 75 46 06         [24] 1298 	mov	_nrf_cmd_PARM_2,#0x06
      00083A 75 82 26         [24] 1299 	mov	dpl,#0x26
      00083D 12 04 D1         [24] 1300 	lcall	_nrf_cmd
                                   1301 ;	nrf24.c:135: nrf_cmd(W_REGISTER|STATUS, 0x3E);  //clear various flags
      000840 75 46 3E         [24] 1302 	mov	_nrf_cmd_PARM_2,#0x3E
      000843 75 82 27         [24] 1303 	mov	dpl,#0x27
      000846 12 04 D1         [24] 1304 	lcall	_nrf_cmd
                                   1305 ;	nrf24.c:136: nrf_cmd(W_REGISTER|DYNPD, 0x00);  //no dynamic payloads
      000849 75 46 00         [24] 1306 	mov	_nrf_cmd_PARM_2,#0x00
      00084C 75 82 3C         [24] 1307 	mov	dpl,#0x3C
      00084F 12 04 D1         [24] 1308 	lcall	_nrf_cmd
                                   1309 ;	nrf24.c:137: nrf_cmd(W_REGISTER|FEATURE, 0x00);  //no features
      000852 75 46 00         [24] 1310 	mov	_nrf_cmd_PARM_2,#0x00
      000855 75 82 3D         [24] 1311 	mov	dpl,#0x3D
      000858 12 04 D1         [24] 1312 	lcall	_nrf_cmd
                                   1313 ;	nrf24.c:138: nrf_cmd(W_REGISTER|RX_PW_P0, 32);    //always RX 32 bytes
      00085B 75 46 20         [24] 1314 	mov	_nrf_cmd_PARM_2,#0x20
      00085E 75 82 31         [24] 1315 	mov	dpl,#0x31
      000861 12 04 D1         [24] 1316 	lcall	_nrf_cmd
                                   1317 ;	nrf24.c:139: nrf_cmd(W_REGISTER|EN_RXADDR, 0x01);  //RX on pipe 0
      000864 75 46 01         [24] 1318 	mov	_nrf_cmd_PARM_2,#0x01
      000867 75 82 22         [24] 1319 	mov	dpl,#0x22
      00086A 02 04 D1         [24] 1320 	ljmp	_nrf_cmd
                                   1321 	.area CSEG    (CODE)
                                   1322 	.area CONST   (CODE)
                                   1323 	.area XINIT   (CODE)
                                   1324 	.area CABS    (ABS,CODE)
