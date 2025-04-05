                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Apr  3 17:08:02 2025
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _WKT_ISR
                                     14 	.globl _UART0_Init
                                     15 	.globl _ble_init
                                     16 	.globl _btLePacketEncode
                                     17 	.globl _swapbits
                                     18 	.globl _nrf_wbuf
                                     19 	.globl _nrf_manybytes
                                     20 	.globl _nrf_simplebyte
                                     21 	.globl _nrf_cmd
                                     22 	.globl _OneWireReadByte
                                     23 	.globl _OneWireWriteByte
                                     24 	.globl _OneWireReset
                                     25 	.globl _DelayT0
                                     26 	.globl _DelayT0_Init
                                     27 	.globl _MOSI
                                     28 	.globl _P00
                                     29 	.globl _MISO
                                     30 	.globl _P01
                                     31 	.globl _RXD_1
                                     32 	.globl _P02
                                     33 	.globl _P03
                                     34 	.globl _STADC
                                     35 	.globl _P04
                                     36 	.globl _P05
                                     37 	.globl _TXD
                                     38 	.globl _P06
                                     39 	.globl _RXD
                                     40 	.globl _P07
                                     41 	.globl _IT0
                                     42 	.globl _IE0
                                     43 	.globl _IT1
                                     44 	.globl _IE1
                                     45 	.globl _TR0
                                     46 	.globl _TF0
                                     47 	.globl _TR1
                                     48 	.globl _TF1
                                     49 	.globl _P10
                                     50 	.globl _P11
                                     51 	.globl _P12
                                     52 	.globl _SCL
                                     53 	.globl _P13
                                     54 	.globl _SDA
                                     55 	.globl _P14
                                     56 	.globl _P15
                                     57 	.globl _TXD_1
                                     58 	.globl _P16
                                     59 	.globl _P17
                                     60 	.globl _RI
                                     61 	.globl _TI
                                     62 	.globl _RB8
                                     63 	.globl _TB8
                                     64 	.globl _REN
                                     65 	.globl _SM2
                                     66 	.globl _SM1
                                     67 	.globl _FE
                                     68 	.globl _SM0
                                     69 	.globl _P20
                                     70 	.globl _EX0
                                     71 	.globl _ET0
                                     72 	.globl _EX1
                                     73 	.globl _ET1
                                     74 	.globl _ES
                                     75 	.globl _EBOD
                                     76 	.globl _EADC
                                     77 	.globl _EA
                                     78 	.globl _P30
                                     79 	.globl _PX0
                                     80 	.globl _PT0
                                     81 	.globl _PX1
                                     82 	.globl _PT1
                                     83 	.globl _PS
                                     84 	.globl _PBOD
                                     85 	.globl _PADC
                                     86 	.globl _I2CPX
                                     87 	.globl _AA
                                     88 	.globl _SI
                                     89 	.globl _STO
                                     90 	.globl _STA
                                     91 	.globl _I2CEN
                                     92 	.globl _CM_RL2
                                     93 	.globl _TR2
                                     94 	.globl _TF2
                                     95 	.globl _P
                                     96 	.globl _OV
                                     97 	.globl _RS0
                                     98 	.globl _RS1
                                     99 	.globl _F0
                                    100 	.globl _AC
                                    101 	.globl _CY
                                    102 	.globl _CLRPWM
                                    103 	.globl _PWMF
                                    104 	.globl _LOAD
                                    105 	.globl _PWMRUN
                                    106 	.globl _ADCHS0
                                    107 	.globl _ADCHS1
                                    108 	.globl _ADCHS2
                                    109 	.globl _ADCHS3
                                    110 	.globl _ETGSEL0
                                    111 	.globl _ETGSEL1
                                    112 	.globl _ADCS
                                    113 	.globl _ADCF
                                    114 	.globl _RI_1
                                    115 	.globl _TI_1
                                    116 	.globl _RB8_1
                                    117 	.globl _TB8_1
                                    118 	.globl _REN_1
                                    119 	.globl _SM2_1
                                    120 	.globl _SM1_1
                                    121 	.globl _FE_1
                                    122 	.globl _SM0_1
                                    123 	.globl _EIPH1
                                    124 	.globl _EIP1
                                    125 	.globl _PMD
                                    126 	.globl _PMEN
                                    127 	.globl _PDTCNT
                                    128 	.globl _PDTEN
                                    129 	.globl _SCON_1
                                    130 	.globl _EIPH
                                    131 	.globl _AINDIDS
                                    132 	.globl _SPDR
                                    133 	.globl _SPSR
                                    134 	.globl _SPCR2
                                    135 	.globl _SPCR
                                    136 	.globl _CAPCON4
                                    137 	.globl _CAPCON3
                                    138 	.globl _B
                                    139 	.globl _EIP
                                    140 	.globl _C2H
                                    141 	.globl _C2L
                                    142 	.globl _PIF
                                    143 	.globl _PIPEN
                                    144 	.globl _PINEN
                                    145 	.globl _PICON
                                    146 	.globl _ADCCON0
                                    147 	.globl _C1H
                                    148 	.globl _C1L
                                    149 	.globl _C0H
                                    150 	.globl _C0L
                                    151 	.globl _ADCDLY
                                    152 	.globl _ADCCON2
                                    153 	.globl _ADCCON1
                                    154 	.globl _ACC
                                    155 	.globl _PWMCON1
                                    156 	.globl _PIOCON0
                                    157 	.globl _PWM3L
                                    158 	.globl _PWM2L
                                    159 	.globl _PWM1L
                                    160 	.globl _PWM0L
                                    161 	.globl _PWMPL
                                    162 	.globl _PWMCON0
                                    163 	.globl _FBD
                                    164 	.globl _PNP
                                    165 	.globl _PWM3H
                                    166 	.globl _PWM2H
                                    167 	.globl _PWM1H
                                    168 	.globl _PWM0H
                                    169 	.globl _PWMPH
                                    170 	.globl _PSW
                                    171 	.globl _ADCMPH
                                    172 	.globl _ADCMPL
                                    173 	.globl _PWM5L
                                    174 	.globl _TH2
                                    175 	.globl _PWM4L
                                    176 	.globl _TL2
                                    177 	.globl _RCMP2H
                                    178 	.globl _RCMP2L
                                    179 	.globl _T2MOD
                                    180 	.globl _T2CON
                                    181 	.globl _TA
                                    182 	.globl _PIOCON1
                                    183 	.globl _RH3
                                    184 	.globl _PWM5H
                                    185 	.globl _RL3
                                    186 	.globl _PWM4H
                                    187 	.globl _T3CON
                                    188 	.globl _ADCRH
                                    189 	.globl _ADCRL
                                    190 	.globl _I2ADDR
                                    191 	.globl _I2CON
                                    192 	.globl _I2TOC
                                    193 	.globl _I2CLK
                                    194 	.globl _I2STAT
                                    195 	.globl _I2DAT
                                    196 	.globl _SADDR_1
                                    197 	.globl _SADEN_1
                                    198 	.globl _SADEN
                                    199 	.globl _IP
                                    200 	.globl _PWMINTC
                                    201 	.globl _IPH
                                    202 	.globl _P2S
                                    203 	.globl _P1SR
                                    204 	.globl _P1M2
                                    205 	.globl _P1S
                                    206 	.globl _P1M1
                                    207 	.globl _P0SR
                                    208 	.globl _P0M2
                                    209 	.globl _P0S
                                    210 	.globl _P0M1
                                    211 	.globl _P3
                                    212 	.globl _IAPCN
                                    213 	.globl _IAPFD
                                    214 	.globl _P3SR
                                    215 	.globl _P3M2
                                    216 	.globl _P3S
                                    217 	.globl _P3M1
                                    218 	.globl _BODCON1
                                    219 	.globl _WDCON
                                    220 	.globl _SADDR
                                    221 	.globl _IE
                                    222 	.globl _IAPAH
                                    223 	.globl _IAPAL
                                    224 	.globl _IAPUEN
                                    225 	.globl _IAPTRG
                                    226 	.globl _BODCON0
                                    227 	.globl _AUXR1
                                    228 	.globl _P2
                                    229 	.globl _CHPCON
                                    230 	.globl _EIE1
                                    231 	.globl _EIE
                                    232 	.globl _SBUF_1
                                    233 	.globl _SBUF
                                    234 	.globl _SCON
                                    235 	.globl _CKEN
                                    236 	.globl _CKSWT
                                    237 	.globl _CKDIV
                                    238 	.globl _CAPCON2
                                    239 	.globl _CAPCON1
                                    240 	.globl _CAPCON0
                                    241 	.globl _SFRS
                                    242 	.globl _P1
                                    243 	.globl _WKCON
                                    244 	.globl _CKCON
                                    245 	.globl _TH1
                                    246 	.globl _TH0
                                    247 	.globl _TL1
                                    248 	.globl _TL0
                                    249 	.globl _TMOD
                                    250 	.globl _TCON
                                    251 	.globl _PCON
                                    252 	.globl _RWK
                                    253 	.globl _RCTRIM1
                                    254 	.globl _RCTRIM0
                                    255 	.globl _DPH
                                    256 	.globl _DPL
                                    257 	.globl _SP
                                    258 	.globl _P0
                                    259 	.globl _mode
                                    260 	.globl _s
                                    261 	.globl _ms
                                    262 	.globl _temp
                                    263 	.globl _debug2
                                    264 	.globl _debug
                                    265 	.globl _conf
                                    266 	.globl _Th
                                    267 	.globl _Tl
                                    268 	.globl _MSB
                                    269 	.globl _LSB
                                    270 	.globl _exponent
                                    271 	.globl _ret
                                    272 	.globl _z
                                    273 	.globl _i
                                    274 	.globl _ch
                                    275 	.globl _buf
                                    276 	.globl _DS18x20_ReadTemp
                                    277 ;--------------------------------------------------------
                                    278 ; special function registers
                                    279 ;--------------------------------------------------------
                                    280 	.area RSEG    (ABS,DATA)
      000000                        281 	.org 0x0000
                           000080   282 _P0	=	0x0080
                           000081   283 _SP	=	0x0081
                           000082   284 _DPL	=	0x0082
                           000083   285 _DPH	=	0x0083
                           000084   286 _RCTRIM0	=	0x0084
                           000085   287 _RCTRIM1	=	0x0085
                           000086   288 _RWK	=	0x0086
                           000087   289 _PCON	=	0x0087
                           000088   290 _TCON	=	0x0088
                           000089   291 _TMOD	=	0x0089
                           00008A   292 _TL0	=	0x008a
                           00008B   293 _TL1	=	0x008b
                           00008C   294 _TH0	=	0x008c
                           00008D   295 _TH1	=	0x008d
                           00008E   296 _CKCON	=	0x008e
                           00008F   297 _WKCON	=	0x008f
                           000090   298 _P1	=	0x0090
                           000091   299 _SFRS	=	0x0091
                           000092   300 _CAPCON0	=	0x0092
                           000093   301 _CAPCON1	=	0x0093
                           000094   302 _CAPCON2	=	0x0094
                           000095   303 _CKDIV	=	0x0095
                           000096   304 _CKSWT	=	0x0096
                           000097   305 _CKEN	=	0x0097
                           000098   306 _SCON	=	0x0098
                           000099   307 _SBUF	=	0x0099
                           00009A   308 _SBUF_1	=	0x009a
                           00009B   309 _EIE	=	0x009b
                           00009C   310 _EIE1	=	0x009c
                           00009F   311 _CHPCON	=	0x009f
                           0000A0   312 _P2	=	0x00a0
                           0000A2   313 _AUXR1	=	0x00a2
                           0000A3   314 _BODCON0	=	0x00a3
                           0000A4   315 _IAPTRG	=	0x00a4
                           0000A5   316 _IAPUEN	=	0x00a5
                           0000A6   317 _IAPAL	=	0x00a6
                           0000A7   318 _IAPAH	=	0x00a7
                           0000A8   319 _IE	=	0x00a8
                           0000A9   320 _SADDR	=	0x00a9
                           0000AA   321 _WDCON	=	0x00aa
                           0000AB   322 _BODCON1	=	0x00ab
                           0000AC   323 _P3M1	=	0x00ac
                           0000AC   324 _P3S	=	0x00ac
                           0000AD   325 _P3M2	=	0x00ad
                           0000AD   326 _P3SR	=	0x00ad
                           0000AE   327 _IAPFD	=	0x00ae
                           0000AF   328 _IAPCN	=	0x00af
                           0000B0   329 _P3	=	0x00b0
                           0000B1   330 _P0M1	=	0x00b1
                           0000B1   331 _P0S	=	0x00b1
                           0000B2   332 _P0M2	=	0x00b2
                           0000B2   333 _P0SR	=	0x00b2
                           0000B3   334 _P1M1	=	0x00b3
                           0000B3   335 _P1S	=	0x00b3
                           0000B4   336 _P1M2	=	0x00b4
                           0000B4   337 _P1SR	=	0x00b4
                           0000B5   338 _P2S	=	0x00b5
                           0000B7   339 _IPH	=	0x00b7
                           0000B7   340 _PWMINTC	=	0x00b7
                           0000B8   341 _IP	=	0x00b8
                           0000B9   342 _SADEN	=	0x00b9
                           0000BA   343 _SADEN_1	=	0x00ba
                           0000BB   344 _SADDR_1	=	0x00bb
                           0000BC   345 _I2DAT	=	0x00bc
                           0000BD   346 _I2STAT	=	0x00bd
                           0000BE   347 _I2CLK	=	0x00be
                           0000BF   348 _I2TOC	=	0x00bf
                           0000C0   349 _I2CON	=	0x00c0
                           0000C1   350 _I2ADDR	=	0x00c1
                           0000C2   351 _ADCRL	=	0x00c2
                           0000C3   352 _ADCRH	=	0x00c3
                           0000C4   353 _T3CON	=	0x00c4
                           0000C4   354 _PWM4H	=	0x00c4
                           0000C5   355 _RL3	=	0x00c5
                           0000C5   356 _PWM5H	=	0x00c5
                           0000C6   357 _RH3	=	0x00c6
                           0000C6   358 _PIOCON1	=	0x00c6
                           0000C7   359 _TA	=	0x00c7
                           0000C8   360 _T2CON	=	0x00c8
                           0000C9   361 _T2MOD	=	0x00c9
                           0000CA   362 _RCMP2L	=	0x00ca
                           0000CB   363 _RCMP2H	=	0x00cb
                           0000CC   364 _TL2	=	0x00cc
                           0000CC   365 _PWM4L	=	0x00cc
                           0000CD   366 _TH2	=	0x00cd
                           0000CD   367 _PWM5L	=	0x00cd
                           0000CE   368 _ADCMPL	=	0x00ce
                           0000CF   369 _ADCMPH	=	0x00cf
                           0000D0   370 _PSW	=	0x00d0
                           0000D1   371 _PWMPH	=	0x00d1
                           0000D2   372 _PWM0H	=	0x00d2
                           0000D3   373 _PWM1H	=	0x00d3
                           0000D4   374 _PWM2H	=	0x00d4
                           0000D5   375 _PWM3H	=	0x00d5
                           0000D6   376 _PNP	=	0x00d6
                           0000D7   377 _FBD	=	0x00d7
                           0000D8   378 _PWMCON0	=	0x00d8
                           0000D9   379 _PWMPL	=	0x00d9
                           0000DA   380 _PWM0L	=	0x00da
                           0000DB   381 _PWM1L	=	0x00db
                           0000DC   382 _PWM2L	=	0x00dc
                           0000DD   383 _PWM3L	=	0x00dd
                           0000DE   384 _PIOCON0	=	0x00de
                           0000DF   385 _PWMCON1	=	0x00df
                           0000E0   386 _ACC	=	0x00e0
                           0000E1   387 _ADCCON1	=	0x00e1
                           0000E2   388 _ADCCON2	=	0x00e2
                           0000E3   389 _ADCDLY	=	0x00e3
                           0000E4   390 _C0L	=	0x00e4
                           0000E5   391 _C0H	=	0x00e5
                           0000E6   392 _C1L	=	0x00e6
                           0000E7   393 _C1H	=	0x00e7
                           0000E8   394 _ADCCON0	=	0x00e8
                           0000E9   395 _PICON	=	0x00e9
                           0000EA   396 _PINEN	=	0x00ea
                           0000EB   397 _PIPEN	=	0x00eb
                           0000EC   398 _PIF	=	0x00ec
                           0000ED   399 _C2L	=	0x00ed
                           0000EE   400 _C2H	=	0x00ee
                           0000EF   401 _EIP	=	0x00ef
                           0000F0   402 _B	=	0x00f0
                           0000F1   403 _CAPCON3	=	0x00f1
                           0000F2   404 _CAPCON4	=	0x00f2
                           0000F3   405 _SPCR	=	0x00f3
                           0000F3   406 _SPCR2	=	0x00f3
                           0000F4   407 _SPSR	=	0x00f4
                           0000F5   408 _SPDR	=	0x00f5
                           0000F6   409 _AINDIDS	=	0x00f6
                           0000F7   410 _EIPH	=	0x00f7
                           0000F8   411 _SCON_1	=	0x00f8
                           0000F9   412 _PDTEN	=	0x00f9
                           0000FA   413 _PDTCNT	=	0x00fa
                           0000FB   414 _PMEN	=	0x00fb
                           0000FC   415 _PMD	=	0x00fc
                           0000FE   416 _EIP1	=	0x00fe
                           0000FF   417 _EIPH1	=	0x00ff
                                    418 ;--------------------------------------------------------
                                    419 ; special function bits
                                    420 ;--------------------------------------------------------
                                    421 	.area RSEG    (ABS,DATA)
      000000                        422 	.org 0x0000
                           0000FF   423 _SM0_1	=	0x00ff
                           0000FF   424 _FE_1	=	0x00ff
                           0000FE   425 _SM1_1	=	0x00fe
                           0000FD   426 _SM2_1	=	0x00fd
                           0000FC   427 _REN_1	=	0x00fc
                           0000FB   428 _TB8_1	=	0x00fb
                           0000FA   429 _RB8_1	=	0x00fa
                           0000F9   430 _TI_1	=	0x00f9
                           0000F8   431 _RI_1	=	0x00f8
                           0000EF   432 _ADCF	=	0x00ef
                           0000EE   433 _ADCS	=	0x00ee
                           0000ED   434 _ETGSEL1	=	0x00ed
                           0000EC   435 _ETGSEL0	=	0x00ec
                           0000EB   436 _ADCHS3	=	0x00eb
                           0000EA   437 _ADCHS2	=	0x00ea
                           0000E9   438 _ADCHS1	=	0x00e9
                           0000E8   439 _ADCHS0	=	0x00e8
                           0000DF   440 _PWMRUN	=	0x00df
                           0000DE   441 _LOAD	=	0x00de
                           0000DD   442 _PWMF	=	0x00dd
                           0000DC   443 _CLRPWM	=	0x00dc
                           0000D7   444 _CY	=	0x00d7
                           0000D6   445 _AC	=	0x00d6
                           0000D5   446 _F0	=	0x00d5
                           0000D4   447 _RS1	=	0x00d4
                           0000D3   448 _RS0	=	0x00d3
                           0000D2   449 _OV	=	0x00d2
                           0000D0   450 _P	=	0x00d0
                           0000CF   451 _TF2	=	0x00cf
                           0000CA   452 _TR2	=	0x00ca
                           0000C8   453 _CM_RL2	=	0x00c8
                           0000C6   454 _I2CEN	=	0x00c6
                           0000C5   455 _STA	=	0x00c5
                           0000C4   456 _STO	=	0x00c4
                           0000C3   457 _SI	=	0x00c3
                           0000C2   458 _AA	=	0x00c2
                           0000C0   459 _I2CPX	=	0x00c0
                           0000BE   460 _PADC	=	0x00be
                           0000BD   461 _PBOD	=	0x00bd
                           0000BC   462 _PS	=	0x00bc
                           0000BB   463 _PT1	=	0x00bb
                           0000BA   464 _PX1	=	0x00ba
                           0000B9   465 _PT0	=	0x00b9
                           0000B8   466 _PX0	=	0x00b8
                           0000B0   467 _P30	=	0x00b0
                           0000AF   468 _EA	=	0x00af
                           0000AE   469 _EADC	=	0x00ae
                           0000AD   470 _EBOD	=	0x00ad
                           0000AC   471 _ES	=	0x00ac
                           0000AB   472 _ET1	=	0x00ab
                           0000AA   473 _EX1	=	0x00aa
                           0000A9   474 _ET0	=	0x00a9
                           0000A8   475 _EX0	=	0x00a8
                           0000A0   476 _P20	=	0x00a0
                           00009F   477 _SM0	=	0x009f
                           00009F   478 _FE	=	0x009f
                           00009E   479 _SM1	=	0x009e
                           00009D   480 _SM2	=	0x009d
                           00009C   481 _REN	=	0x009c
                           00009B   482 _TB8	=	0x009b
                           00009A   483 _RB8	=	0x009a
                           000099   484 _TI	=	0x0099
                           000098   485 _RI	=	0x0098
                           000097   486 _P17	=	0x0097
                           000096   487 _P16	=	0x0096
                           000096   488 _TXD_1	=	0x0096
                           000095   489 _P15	=	0x0095
                           000094   490 _P14	=	0x0094
                           000094   491 _SDA	=	0x0094
                           000093   492 _P13	=	0x0093
                           000093   493 _SCL	=	0x0093
                           000092   494 _P12	=	0x0092
                           000091   495 _P11	=	0x0091
                           000090   496 _P10	=	0x0090
                           00008F   497 _TF1	=	0x008f
                           00008E   498 _TR1	=	0x008e
                           00008D   499 _TF0	=	0x008d
                           00008C   500 _TR0	=	0x008c
                           00008B   501 _IE1	=	0x008b
                           00008A   502 _IT1	=	0x008a
                           000089   503 _IE0	=	0x0089
                           000088   504 _IT0	=	0x0088
                           000087   505 _P07	=	0x0087
                           000087   506 _RXD	=	0x0087
                           000086   507 _P06	=	0x0086
                           000086   508 _TXD	=	0x0086
                           000085   509 _P05	=	0x0085
                           000084   510 _P04	=	0x0084
                           000084   511 _STADC	=	0x0084
                           000083   512 _P03	=	0x0083
                           000082   513 _P02	=	0x0082
                           000082   514 _RXD_1	=	0x0082
                           000081   515 _P01	=	0x0081
                           000081   516 _MISO	=	0x0081
                           000080   517 _P00	=	0x0080
                           000080   518 _MOSI	=	0x0080
                                    519 ;--------------------------------------------------------
                                    520 ; overlayable register banks
                                    521 ;--------------------------------------------------------
                                    522 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        523 	.ds 8
                                    524 ;--------------------------------------------------------
                                    525 ; internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area DSEG    (DATA)
      000008                        528 _buf::
      000008                        529 	.ds 32
      000028                        530 _ch::
      000028                        531 	.ds 1
      000029                        532 _i::
      000029                        533 	.ds 1
      00002A                        534 _z::
      00002A                        535 	.ds 1
      00002B                        536 _ret::
      00002B                        537 	.ds 4
      00002F                        538 _exponent::
      00002F                        539 	.ds 4
      000033                        540 _LSB::
      000033                        541 	.ds 1
      000034                        542 _MSB::
      000034                        543 	.ds 1
      000035                        544 _Tl::
      000035                        545 	.ds 1
      000036                        546 _Th::
      000036                        547 	.ds 1
      000037                        548 _conf::
      000037                        549 	.ds 1
      000038                        550 _debug::
      000038                        551 	.ds 1
      000039                        552 _debug2::
      000039                        553 	.ds 1
      00003A                        554 _temp::
      00003A                        555 	.ds 4
      00003E                        556 _ms::
      00003E                        557 	.ds 2
      000040                        558 _s::
      000040                        559 	.ds 1
      000041                        560 _mode::
      000041                        561 	.ds 1
      000042                        562 _main_sloc0_1_0:
      000042                        563 	.ds 4
                                    564 ;--------------------------------------------------------
                                    565 ; overlayable items in internal ram 
                                    566 ;--------------------------------------------------------
                                    567 ;--------------------------------------------------------
                                    568 ; Stack segment in internal ram 
                                    569 ;--------------------------------------------------------
                                    570 	.area	SSEG
      00005E                        571 __start__stack:
      00005E                        572 	.ds	1
                                    573 
                                    574 ;--------------------------------------------------------
                                    575 ; indirectly addressable internal ram data
                                    576 ;--------------------------------------------------------
                                    577 	.area ISEG    (DATA)
                                    578 ;--------------------------------------------------------
                                    579 ; absolute internal ram data
                                    580 ;--------------------------------------------------------
                                    581 	.area IABS    (ABS,DATA)
                                    582 	.area IABS    (ABS,DATA)
                                    583 ;--------------------------------------------------------
                                    584 ; bit data
                                    585 ;--------------------------------------------------------
                                    586 	.area BSEG    (BIT)
                                    587 ;--------------------------------------------------------
                                    588 ; paged external ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area PSEG    (PAG,XDATA)
                                    591 ;--------------------------------------------------------
                                    592 ; external ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area XSEG    (XDATA)
                                    595 ;--------------------------------------------------------
                                    596 ; absolute external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area XABS    (ABS,XDATA)
                                    599 ;--------------------------------------------------------
                                    600 ; external initialized ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XISEG   (XDATA)
                                    603 	.area HOME    (CODE)
                                    604 	.area GSINIT0 (CODE)
                                    605 	.area GSINIT1 (CODE)
                                    606 	.area GSINIT2 (CODE)
                                    607 	.area GSINIT3 (CODE)
                                    608 	.area GSINIT4 (CODE)
                                    609 	.area GSINIT5 (CODE)
                                    610 	.area GSINIT  (CODE)
                                    611 	.area GSFINAL (CODE)
                                    612 	.area CSEG    (CODE)
                                    613 ;--------------------------------------------------------
                                    614 ; interrupt vector 
                                    615 ;--------------------------------------------------------
                                    616 	.area HOME    (CODE)
      000000                        617 __interrupt_vect:
      000000 02 00 91         [24]  618 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  619 	reti
      000004                        620 	.ds	7
      00000B 32               [24]  621 	reti
      00000C                        622 	.ds	7
      000013 32               [24]  623 	reti
      000014                        624 	.ds	7
      00001B 32               [24]  625 	reti
      00001C                        626 	.ds	7
      000023 32               [24]  627 	reti
      000024                        628 	.ds	7
      00002B 32               [24]  629 	reti
      00002C                        630 	.ds	7
      000033 32               [24]  631 	reti
      000034                        632 	.ds	7
      00003B 32               [24]  633 	reti
      00003C                        634 	.ds	7
      000043 32               [24]  635 	reti
      000044                        636 	.ds	7
      00004B 32               [24]  637 	reti
      00004C                        638 	.ds	7
      000053 32               [24]  639 	reti
      000054                        640 	.ds	7
      00005B 32               [24]  641 	reti
      00005C                        642 	.ds	7
      000063 32               [24]  643 	reti
      000064                        644 	.ds	7
      00006B 32               [24]  645 	reti
      00006C                        646 	.ds	7
      000073 32               [24]  647 	reti
      000074                        648 	.ds	7
      00007B 32               [24]  649 	reti
      00007C                        650 	.ds	7
      000083 32               [24]  651 	reti
      000084                        652 	.ds	7
      00008B 02 01 08         [24]  653 	ljmp	_WKT_ISR
                                    654 ;--------------------------------------------------------
                                    655 ; global & static initialisations
                                    656 ;--------------------------------------------------------
                                    657 	.area HOME    (CODE)
                                    658 	.area GSINIT  (CODE)
                                    659 	.area GSFINAL (CODE)
                                    660 	.area GSINIT  (CODE)
                                    661 	.globl __sdcc_gsinit_startup
                                    662 	.globl __sdcc_program_startup
                                    663 	.globl __start__stack
                                    664 	.globl __mcs51_genXINIT
                                    665 	.globl __mcs51_genXRAMCLEAR
                                    666 	.globl __mcs51_genRAMCLEAR
                                    667 ;	main.c:22: uint8_t ch = 0;  // RF channel for frequency hopping
      0000EA 75 28 00         [24]  668 	mov	_ch,#0x00
                                    669 ;	main.c:24: uint8_t z = 0;
      0000ED 75 2A 00         [24]  670 	mov	_z,#0x00
                                    671 ;	main.c:26: int32_t exponent = -2;
      0000F0 75 2F FE         [24]  672 	mov	_exponent,#0xFE
      0000F3 74 FF            [12]  673 	mov	a,#0xFF
      0000F5 F5 30            [12]  674 	mov	(_exponent + 1),a
      0000F7 F5 31            [12]  675 	mov	(_exponent + 2),a
      0000F9 F5 32            [12]  676 	mov	(_exponent + 3),a
                                    677 ;	main.c:37: uint16_t ms = 0;
      0000FB E4               [12]  678 	clr	a
      0000FC F5 3E            [12]  679 	mov	_ms,a
      0000FE F5 3F            [12]  680 	mov	(_ms + 1),a
                                    681 ;	main.c:38: uint8_t s = 0;
                                    682 ;	1-genFromRTrack replaced	mov	_s,#0x00
      000100 F5 40            [12]  683 	mov	_s,a
                                    684 ;	main.c:40: uint8_t mode = 2;
      000102 75 41 02         [24]  685 	mov	_mode,#0x02
                                    686 	.area GSFINAL (CODE)
      000105 02 00 8E         [24]  687 	ljmp	__sdcc_program_startup
                                    688 ;--------------------------------------------------------
                                    689 ; Home
                                    690 ;--------------------------------------------------------
                                    691 	.area HOME    (CODE)
                                    692 	.area HOME    (CODE)
      00008E                        693 __sdcc_program_startup:
      00008E 02 01 0F         [24]  694 	ljmp	_main
                                    695 ;	return from main will return to caller
                                    696 ;--------------------------------------------------------
                                    697 ; code
                                    698 ;--------------------------------------------------------
                                    699 	.area CSEG    (CODE)
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'WKT_ISR'
                                    702 ;------------------------------------------------------------
                                    703 ;	main.c:42: void WKT_ISR(void) __interrupt (17)            // Vector @  0x8B
                                    704 ;	-----------------------------------------
                                    705 ;	 function WKT_ISR
                                    706 ;	-----------------------------------------
      000108                        707 _WKT_ISR:
                           000007   708 	ar7 = 0x07
                           000006   709 	ar6 = 0x06
                           000005   710 	ar5 = 0x05
                           000004   711 	ar4 = 0x04
                           000003   712 	ar3 = 0x03
                           000002   713 	ar2 = 0x02
                           000001   714 	ar1 = 0x01
                           000000   715 	ar0 = 0x00
                                    716 ;	main.c:44: clr_WKCON_WKTF;
      000108 53 8F EF         [24]  717 	anl	_WKCON,#0xEF
                                    718 ;	main.c:45: clr_WKCON_WKTR;
      00010B 53 8F F7         [24]  719 	anl	_WKCON,#0xF7
      00010E 32               [24]  720 	reti
                                    721 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    722 ;	eliminated unneeded push/pop psw
                                    723 ;	eliminated unneeded push/pop dpl
                                    724 ;	eliminated unneeded push/pop dph
                                    725 ;	eliminated unneeded push/pop b
                                    726 ;	eliminated unneeded push/pop acc
                                    727 ;------------------------------------------------------------
                                    728 ;Allocation info for local variables in function 'main'
                                    729 ;------------------------------------------------------------
                                    730 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    731 ;------------------------------------------------------------
                                    732 ;	main.c:59: void main(void)
                                    733 ;	-----------------------------------------
                                    734 ;	 function main
                                    735 ;	-----------------------------------------
      00010F                        736 _main:
                                    737 ;	main.c:61: P00_PUSHPULL_MODE;  //MOSI
      00010F 53 B1 FE         [24]  738 	anl	_P0M1,#0xFE
      000112 43 B2 01         [24]  739 	orl	_P0M2,#0x01
                                    740 ;	main.c:62: P10_PUSHPULL_MODE;  //CLK
      000115 53 B3 FE         [24]  741 	anl	_P1M1,#0xFE
      000118 43 B4 01         [24]  742 	orl	_P1M2,#0x01
                                    743 ;	main.c:63: P01_QUASI_MODE;     //MISO
      00011B 53 B1 FD         [24]  744 	anl	_P0M1,#0xFD
      00011E 53 B2 FD         [24]  745 	anl	_P0M2,#0xFD
                                    746 ;	main.c:65: P11_PUSHPULL_MODE;  //CSN
      000121 53 B3 FD         [24]  747 	anl	_P1M1,#0xFD
      000124 43 B4 02         [24]  748 	orl	_P1M2,#0x02
                                    749 ;	main.c:66: P12_PUSHPULL_MODE;  //CE
      000127 53 B3 FB         [24]  750 	anl	_P1M1,#0xFB
      00012A 43 B4 04         [24]  751 	orl	_P1M2,#0x04
                                    752 ;	main.c:71: P14_OPENDRAIN_MODE;	//pin ds18b20
      00012D 43 B3 10         [24]  753 	orl	_P1M1,#0x10
      000130 43 B4 10         [24]  754 	orl	_P1M2,#0x10
                                    755 ;	main.c:84: DelayT0_Init();
      000133 12 03 5A         [24]  756 	lcall	_DelayT0_Init
                                    757 ;	main.c:85: OneWireReset();
      000136 12 03 C1         [24]  758 	lcall	_OneWireReset
                                    759 ;	main.c:86: DelayT0(100, CONFIG_1MS);
      000139 75 54 E8         [24]  760 	mov	_DelayT0_PARM_2,#0xE8
      00013C 75 55 03         [24]  761 	mov	(_DelayT0_PARM_2 + 1),#0x03
      00013F 90 00 64         [24]  762 	mov	dptr,#0x0064
      000142 12 03 64         [24]  763 	lcall	_DelayT0
                                    764 ;	main.c:89: UART0_Init(); //9600
      000145 12 08 6D         [24]  765 	lcall	_UART0_Init
                                    766 ;	main.c:91: CE_PIN = 0;
      000148 C2 92            [12]  767 	clr	_P12
                                    768 ;	main.c:92: CSN_PIN = 1;
      00014A D2 91            [12]  769 	setb	_P11
                                    770 ;	main.c:93: SCK=0;              //SPI clock line init high 
      00014C C2 90            [12]  771 	clr	_P10
                                    772 ;	main.c:96: ble_init();
      00014E 12 08 0A         [24]  773 	lcall	_ble_init
                                    774 ;	main.c:99: buf[0] = 0x30;
      000151 75 08 30         [24]  775 	mov	_buf,#0x30
                                    776 ;	main.c:100: buf[1] = swapbits(0x8E);
      000154 75 82 8E         [24]  777 	mov	dpl,#0x8E
      000157 12 06 8C         [24]  778 	lcall	_swapbits
      00015A E5 82            [12]  779 	mov	a,dpl
      00015C F5 09            [12]  780 	mov	(_buf + 0x0001),a
                                    781 ;	main.c:101: buf[2] = swapbits(0x89);
      00015E 75 82 89         [24]  782 	mov	dpl,#0x89
      000161 12 06 8C         [24]  783 	lcall	_swapbits
      000164 E5 82            [12]  784 	mov	a,dpl
      000166 F5 0A            [12]  785 	mov	(_buf + 0x0002),a
                                    786 ;	main.c:102: buf[3] = swapbits(0xBE);
      000168 75 82 BE         [24]  787 	mov	dpl,#0xBE
      00016B 12 06 8C         [24]  788 	lcall	_swapbits
      00016E E5 82            [12]  789 	mov	a,dpl
      000170 F5 0B            [12]  790 	mov	(_buf + 0x0003),a
                                    791 ;	main.c:103: buf[4] = swapbits(0xD6);
      000172 75 82 D6         [24]  792 	mov	dpl,#0xD6
      000175 12 06 8C         [24]  793 	lcall	_swapbits
      000178 E5 82            [12]  794 	mov	a,dpl
      00017A F5 0C            [12]  795 	mov	(_buf + 0x0004),a
                                    796 ;	main.c:104: nrf_manybytes(buf, 5);
      00017C 75 47 05         [24]  797 	mov	_nrf_manybytes_PARM_2,#0x05
      00017F 90 00 08         [24]  798 	mov	dptr,#_buf
      000182 75 F0 40         [24]  799 	mov	b,#0x40
      000185 12 04 E7         [24]  800 	lcall	_nrf_manybytes
                                    801 ;	main.c:105: buf[0] = 0x2A;    // set RX address in nRF24L01, doesn't matter because RX is ignored in this case
      000188 75 08 2A         [24]  802 	mov	_buf,#0x2A
                                    803 ;	main.c:106: nrf_manybytes(buf, 5); 
      00018B 75 47 05         [24]  804 	mov	_nrf_manybytes_PARM_2,#0x05
      00018E 90 00 08         [24]  805 	mov	dptr,#_buf
      000191 75 F0 40         [24]  806 	mov	b,#0x40
      000194 12 04 E7         [24]  807 	lcall	_nrf_manybytes
                                    808 ;	main.c:115: while (1) 
      000197                        809 00106$:
                                    810 ;	main.c:129: if (mode == 2)
      000197 74 02            [12]  811 	mov	a,#0x02
      000199 B5 41 FB         [24]  812 	cjne	a,_mode,00106$
                                    813 ;	main.c:132: DS18x20_ReadTemp();
      00019C 12 02 C4         [24]  814 	lcall	_DS18x20_ReadTemp
                                    815 ;	main.c:137: ret = ((exponent & 0xff) << 24) | (((int32_t)((temp) * 100)) & 0xffffff);
      00019F AC 2F            [24]  816 	mov	r4,_exponent
      0001A1 7F 00            [12]  817 	mov	r7,#0x00
      0001A3 8C 45            [24]  818 	mov	(_main_sloc0_1_0 + 3),r4
                                    819 ;	1-genFromRTrack replaced	mov	_main_sloc0_1_0,#0x00
      0001A5 8F 42            [24]  820 	mov	_main_sloc0_1_0,r7
                                    821 ;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
      0001A7 8F 43            [24]  822 	mov	(_main_sloc0_1_0 + 1),r7
                                    823 ;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 2),#0x00
      0001A9 8F 44            [24]  824 	mov	(_main_sloc0_1_0 + 2),r7
      0001AB C0 3A            [24]  825 	push	_temp
      0001AD C0 3B            [24]  826 	push	(_temp + 1)
      0001AF C0 3C            [24]  827 	push	(_temp + 2)
      0001B1 C0 3D            [24]  828 	push	(_temp + 3)
      0001B3 90 00 00         [24]  829 	mov	dptr,#0x0000
      0001B6 75 F0 C8         [24]  830 	mov	b,#0xC8
      0001B9 74 42            [12]  831 	mov	a,#0x42
      0001BB 12 09 C0         [24]  832 	lcall	___fsmul
      0001BE AA 82            [24]  833 	mov	r2,dpl
      0001C0 AB 83            [24]  834 	mov	r3,dph
      0001C2 AE F0            [24]  835 	mov	r6,b
      0001C4 FF               [12]  836 	mov	r7,a
      0001C5 E5 81            [12]  837 	mov	a,sp
      0001C7 24 FC            [12]  838 	add	a,#0xfc
      0001C9 F5 81            [12]  839 	mov	sp,a
      0001CB 8A 82            [24]  840 	mov	dpl,r2
      0001CD 8B 83            [24]  841 	mov	dph,r3
      0001CF 8E F0            [24]  842 	mov	b,r6
      0001D1 EF               [12]  843 	mov	a,r7
      0001D2 12 0A C4         [24]  844 	lcall	___fs2slong
      0001D5 AC 82            [24]  845 	mov	r4,dpl
      0001D7 AD 83            [24]  846 	mov	r5,dph
      0001D9 AE F0            [24]  847 	mov	r6,b
      0001DB 7F 00            [12]  848 	mov	r7,#0x00
      0001DD EC               [12]  849 	mov	a,r4
      0001DE 45 42            [12]  850 	orl	a,_main_sloc0_1_0
      0001E0 F5 2B            [12]  851 	mov	_ret,a
      0001E2 ED               [12]  852 	mov	a,r5
      0001E3 45 43            [12]  853 	orl	a,(_main_sloc0_1_0 + 1)
      0001E5 F5 2C            [12]  854 	mov	(_ret + 1),a
      0001E7 EE               [12]  855 	mov	a,r6
      0001E8 45 44            [12]  856 	orl	a,(_main_sloc0_1_0 + 2)
      0001EA F5 2D            [12]  857 	mov	(_ret + 2),a
      0001EC EF               [12]  858 	mov	a,r7
      0001ED 45 45            [12]  859 	orl	a,(_main_sloc0_1_0 + 3)
      0001EF F5 2E            [12]  860 	mov	(_ret + 3),a
                                    861 ;	main.c:139: buf[0] = 0x42;  //PDU type, given address is random
      0001F1 75 08 42         [24]  862 	mov	_buf,#0x42
                                    863 ;	main.c:140: buf[1] = 0x11  + 10; //17 bytes of payload
      0001F4 75 09 1B         [24]  864 	mov	(_buf + 0x0001),#0x1B
                                    865 ;	main.c:142: buf[2] = MY_MAC_0;
      0001F7 75 0A EF         [24]  866 	mov	(_buf + 0x0002),#0xEF
                                    867 ;	main.c:143: buf[3] = MY_MAC_1;
      0001FA 75 0B FF         [24]  868 	mov	(_buf + 0x0003),#0xFF
                                    869 ;	main.c:144: buf[4] = MY_MAC_2;
      0001FD 75 0C 02         [24]  870 	mov	(_buf + 0x0004),#0x02
                                    871 ;	main.c:145: buf[5] = MY_MAC_3;
      000200 75 0D 20         [24]  872 	mov	(_buf + 0x0005),#0x20
                                    873 ;	main.c:146: buf[6] = MY_MAC_4;
      000203 75 0E 11         [24]  874 	mov	(_buf + 0x0006),#0x11
                                    875 ;	main.c:147: buf[7] = MY_MAC_5;
      000206 75 0F 01         [24]  876 	mov	(_buf + 0x0007),#0x01
                                    877 ;	main.c:149: buf[8] = 2;   //flags (LE-only, limited discovery mode)
      000209 75 10 02         [24]  878 	mov	(_buf + 0x0008),#0x02
                                    879 ;	main.c:150: buf[9] = 0x01;
      00020C 75 11 01         [24]  880 	mov	(_buf + 0x0009),#0x01
                                    881 ;	main.c:151: buf[10] = 0x05;
      00020F 75 12 05         [24]  882 	mov	(_buf + 0x000a),#0x05
                                    883 ;	main.c:153: buf[11] = 7;// + 8;
      000212 75 13 07         [24]  884 	mov	(_buf + 0x000b),#0x07
                                    885 ;	main.c:154: buf[12] = 0x08;
      000215 75 14 08         [24]  886 	mov	(_buf + 0x000c),#0x08
                                    887 ;	main.c:156: buf[13] = 'B';
      000218 75 15 42         [24]  888 	mov	(_buf + 0x000d),#0x42
                                    889 ;	main.c:157: buf[14] = 'L';
      00021B 75 16 4C         [24]  890 	mov	(_buf + 0x000e),#0x4C
                                    891 ;	main.c:158: buf[15] = 'E';
      00021E 75 17 45         [24]  892 	mov	(_buf + 0x000f),#0x45
                                    893 ;	main.c:159: buf[16] = '-';
      000221 75 18 2D         [24]  894 	mov	(_buf + 0x0010),#0x2D
                                    895 ;	main.c:160: buf[17] = '0';
      000224 75 19 30         [24]  896 	mov	(_buf + 0x0011),#0x30
                                    897 ;	main.c:161: buf[18] = '9';
      000227 75 1A 39         [24]  898 	mov	(_buf + 0x0012),#0x39
                                    899 ;	main.c:164: buf[19] = 7;
      00022A 75 1B 07         [24]  900 	mov	(_buf + 0x0013),#0x07
                                    901 ;	main.c:165: buf[20] = 0x16;
      00022D 75 1C 16         [24]  902 	mov	(_buf + 0x0014),#0x16
                                    903 ;	main.c:167: buf[21] = 0x09;
      000230 75 1D 09         [24]  904 	mov	(_buf + 0x0015),#0x09
                                    905 ;	main.c:168: buf[22] = 0x18;
      000233 75 1E 18         [24]  906 	mov	(_buf + 0x0016),#0x18
                                    907 ;	main.c:171: buf[23] = (unsigned char)(ret);
      000236 AF 2B            [24]  908 	mov	r7,_ret
      000238 8F 1F            [24]  909 	mov	(_buf + 0x0017),r7
                                    910 ;	main.c:172: buf[24] = (unsigned char)(ret >> 8);
      00023A AF 2C            [24]  911 	mov	r7,(_ret + 1)
      00023C 8F 20            [24]  912 	mov	(_buf + 0x0018),r7
                                    913 ;	main.c:173: buf[25] = (unsigned char)(ret >> 16);
      00023E AF 2D            [24]  914 	mov	r7,(_ret + 2)
      000240 8F 21            [24]  915 	mov	(_buf + 0x0019),r7
                                    916 ;	main.c:174: buf[26] = (unsigned char)(ret >> 24);
      000242 AF 2E            [24]  917 	mov	r7,(_ret + 3)
      000244 8F 22            [24]  918 	mov	(_buf + 0x001a),r7
                                    919 ;	main.c:176: buf[27] = 0x00;
      000246 75 23 00         [24]  920 	mov	(_buf + 0x001b),#0x00
                                    921 ;	main.c:177: buf[28] = 0x00;    
      000249 75 24 00         [24]  922 	mov	(_buf + 0x001c),#0x00
                                    923 ;	main.c:179: buf[29] = 0x55;  //CRC start value: 0x555555
      00024C 75 25 55         [24]  924 	mov	(_buf + 0x001d),#0x55
                                    925 ;	main.c:180: buf[30] = 0x55;
      00024F 75 26 55         [24]  926 	mov	(_buf + 0x001e),#0x55
                                    927 ;	main.c:181: buf[31] = 0x55;
      000252 75 27 55         [24]  928 	mov	(_buf + 0x001f),#0x55
                                    929 ;	main.c:183: if(++ch == sizeof(chRf)) ch = 0;
      000255 05 28            [12]  930 	inc	_ch
      000257 74 03            [12]  931 	mov	a,#0x03
      000259 B5 28 03         [24]  932 	cjne	a,_ch,00102$
      00025C 75 28 00         [24]  933 	mov	_ch,#0x00
      00025F                        934 00102$:
                                    935 ;	main.c:185: nrf_cmd(W_REGISTER|RF_CH, chRf[ch]);
      00025F E5 28            [12]  936 	mov	a,_ch
      000261 90 0D DF         [24]  937 	mov	dptr,#_chRf
      000264 93               [24]  938 	movc	a,@a+dptr
      000265 F5 46            [12]  939 	mov	_nrf_cmd_PARM_2,a
      000267 75 82 25         [24]  940 	mov	dpl,#0x25
      00026A 12 04 D1         [24]  941 	lcall	_nrf_cmd
                                    942 ;	main.c:187: nrf_cmd(W_REGISTER|STATUS, 0x6E); //clear flags
      00026D 75 46 6E         [24]  943 	mov	_nrf_cmd_PARM_2,#0x6E
      000270 75 82 27         [24]  944 	mov	dpl,#0x27
      000273 12 04 D1         [24]  945 	lcall	_nrf_cmd
                                    946 ;	main.c:189: btLePacketEncode(buf, 32, chLe[ch]);
      000276 E5 28            [12]  947 	mov	a,_ch
      000278 90 0D E2         [24]  948 	mov	dptr,#_chLe
      00027B 93               [24]  949 	movc	a,@a+dptr
      00027C F5 4D            [12]  950 	mov	_btLePacketEncode_PARM_3,a
      00027E 75 4C 20         [24]  951 	mov	_btLePacketEncode_PARM_2,#0x20
      000281 90 00 08         [24]  952 	mov	dptr,#_buf
      000284 75 F0 40         [24]  953 	mov	b,#0x40
      000287 12 07 16         [24]  954 	lcall	_btLePacketEncode
                                    955 ;	main.c:192: nrf_simplebyte(FLUSH_RX); //Clear RX Fifo
      00028A 75 82 E2         [24]  956 	mov	dpl,#0xE2
      00028D 12 04 DF         [24]  957 	lcall	_nrf_simplebyte
                                    958 ;	main.c:193: nrf_simplebyte(FLUSH_TX); //Clear TX Fifo
      000290 75 82 E1         [24]  959 	mov	dpl,#0xE1
      000293 12 04 DF         [24]  960 	lcall	_nrf_simplebyte
                                    961 ;	main.c:199: nrf_wbuf(W_TX_PAYLOAD, buf, 32);
      000296 75 48 08         [24]  962 	mov	_nrf_wbuf_PARM_2,#_buf
      000299 75 49 00         [24]  963 	mov	(_nrf_wbuf_PARM_2 + 1),#0x00
      00029C 75 4A 40         [24]  964 	mov	(_nrf_wbuf_PARM_2 + 2),#0x40
      00029F 75 4B 20         [24]  965 	mov	_nrf_wbuf_PARM_3,#0x20
      0002A2 75 82 A0         [24]  966 	mov	dpl,#0xA0
      0002A5 12 05 1A         [24]  967 	lcall	_nrf_wbuf
                                    968 ;	main.c:201: nrf_cmd(W_REGISTER, 0x12);  //tx on
      0002A8 75 46 12         [24]  969 	mov	_nrf_cmd_PARM_2,#0x12
      0002AB 75 82 20         [24]  970 	mov	dpl,#0x20
      0002AE 12 04 D1         [24]  971 	lcall	_nrf_cmd
                                    972 ;	main.c:202: CE_PIN = 1;    //do tx
      0002B1 D2 92            [12]  973 	setb	_P12
                                    974 ;	main.c:203: DelayT0(10, CONFIG_1MS); //delay_ms(10);
      0002B3 75 54 E8         [24]  975 	mov	_DelayT0_PARM_2,#0xE8
      0002B6 75 55 03         [24]  976 	mov	(_DelayT0_PARM_2 + 1),#0x03
      0002B9 90 00 0A         [24]  977 	mov	dptr,#0x000A
      0002BC 12 03 64         [24]  978 	lcall	_DelayT0
                                    979 ;	main.c:204: CE_PIN = 0; // (in preparation of switching to RX quickly)
      0002BF C2 92            [12]  980 	clr	_P12
      0002C1 02 01 97         [24]  981 	ljmp	00106$
                                    982 ;------------------------------------------------------------
                                    983 ;Allocation info for local variables in function 'DS18x20_ReadTemp'
                                    984 ;------------------------------------------------------------
                                    985 ;	main.c:218: void DS18x20_ReadTemp(void) {
                                    986 ;	-----------------------------------------
                                    987 ;	 function DS18x20_ReadTemp
                                    988 ;	-----------------------------------------
      0002C4                        989 _DS18x20_ReadTemp:
                                    990 ;	main.c:219: debug = OneWireReset();             // Reset Pulse
      0002C4 12 03 C1         [24]  991 	lcall	_OneWireReset
      0002C7 AE 82            [24]  992 	mov	r6,dpl
      0002C9 8E 38            [24]  993 	mov	_debug,r6
                                    994 ;	main.c:220: OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command (CCh)
      0002CB 75 82 CC         [24]  995 	mov	dpl,#0xCC
      0002CE 12 04 4F         [24]  996 	lcall	_OneWireWriteByte
                                    997 ;	main.c:221: OneWireWriteByte(CONVERT_T);        // Convert T command (44h)
      0002D1 75 82 44         [24]  998 	mov	dpl,#0x44
      0002D4 12 04 4F         [24]  999 	lcall	_OneWireWriteByte
                                   1000 ;	main.c:223: while( !OneWireRead() );              // DQ will hold line low while making measurement
      0002D7                       1001 00101$:
      0002D7 12 03 BA         [24] 1002 	lcall	_OneWireRead
      0002DA E5 82            [12] 1003 	mov	a,dpl
      0002DC 85 83 F0         [24] 1004 	mov	b,dph
      0002DF 45 F0            [12] 1005 	orl	a,b
      0002E1 60 F4            [24] 1006 	jz	00101$
                                   1007 ;	main.c:224: debug2 = OneWireReset();             // Start new command sequence
      0002E3 12 03 C1         [24] 1008 	lcall	_OneWireReset
      0002E6 AE 82            [24] 1009 	mov	r6,dpl
      0002E8 8E 39            [24] 1010 	mov	_debug2,r6
                                   1011 ;	main.c:225: OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command
      0002EA 75 82 CC         [24] 1012 	mov	dpl,#0xCC
      0002ED 12 04 4F         [24] 1013 	lcall	_OneWireWriteByte
                                   1014 ;	main.c:226: OneWireWriteByte(READ_SCRATCHPAD);  // Read Scratchpad (BEh) - 15 bits
      0002F0 75 82 BE         [24] 1015 	mov	dpl,#0xBE
      0002F3 12 04 4F         [24] 1016 	lcall	_OneWireWriteByte
                                   1017 ;	main.c:227: LSB = OneWireReadByte();
      0002F6 12 04 6E         [24] 1018 	lcall	_OneWireReadByte
      0002F9 85 82 33         [24] 1019 	mov	_LSB,dpl
                                   1020 ;	main.c:228: MSB = OneWireReadByte();
      0002FC 12 04 6E         [24] 1021 	lcall	_OneWireReadByte
      0002FF 85 82 34         [24] 1022 	mov	_MSB,dpl
                                   1023 ;	main.c:229: Tl = OneWireReadByte();
      000302 12 04 6E         [24] 1024 	lcall	_OneWireReadByte
      000305 85 82 35         [24] 1025 	mov	_Tl,dpl
                                   1026 ;	main.c:230: Th = OneWireReadByte();
      000308 12 04 6E         [24] 1027 	lcall	_OneWireReadByte
      00030B 85 82 36         [24] 1028 	mov	_Th,dpl
                                   1029 ;	main.c:231: conf = OneWireReadByte();
      00030E 12 04 6E         [24] 1030 	lcall	_OneWireReadByte
      000311 85 82 37         [24] 1031 	mov	_conf,dpl
                                   1032 ;	main.c:233: OneWireReset();                       // Stop Reading
      000314 12 03 C1         [24] 1033 	lcall	_OneWireReset
                                   1034 ;	main.c:234: temp = ((MSB << 8) | LSB) / 16.0;
      000317 AF 34            [24] 1035 	mov	r7,_MSB
      000319 7E 00            [12] 1036 	mov	r6,#0x00
      00031B AC 33            [24] 1037 	mov	r4,_LSB
      00031D 7D 00            [12] 1038 	mov	r5,#0x00
      00031F EC               [12] 1039 	mov	a,r4
      000320 4E               [12] 1040 	orl	a,r6
      000321 F5 82            [12] 1041 	mov	dpl,a
      000323 ED               [12] 1042 	mov	a,r5
      000324 4F               [12] 1043 	orl	a,r7
      000325 F5 83            [12] 1044 	mov	dph,a
      000327 12 0B C2         [24] 1045 	lcall	___sint2fs
      00032A AC 82            [24] 1046 	mov	r4,dpl
      00032C AD 83            [24] 1047 	mov	r5,dph
      00032E AE F0            [24] 1048 	mov	r6,b
      000330 FF               [12] 1049 	mov	r7,a
      000331 E4               [12] 1050 	clr	a
      000332 C0 E0            [24] 1051 	push	acc
      000334 C0 E0            [24] 1052 	push	acc
      000336 74 80            [12] 1053 	mov	a,#0x80
      000338 C0 E0            [24] 1054 	push	acc
      00033A 74 41            [12] 1055 	mov	a,#0x41
      00033C C0 E0            [24] 1056 	push	acc
      00033E 8C 82            [24] 1057 	mov	dpl,r4
      000340 8D 83            [24] 1058 	mov	dph,r5
      000342 8E F0            [24] 1059 	mov	b,r6
      000344 EF               [12] 1060 	mov	a,r7
      000345 12 0C 1E         [24] 1061 	lcall	___fsdiv
      000348 85 82 3A         [24] 1062 	mov	_temp,dpl
      00034B 85 83 3B         [24] 1063 	mov	(_temp + 1),dph
      00034E 85 F0 3C         [24] 1064 	mov	(_temp + 2),b
      000351 F5 3D            [12] 1065 	mov	(_temp + 3),a
      000353 E5 81            [12] 1066 	mov	a,sp
      000355 24 FC            [12] 1067 	add	a,#0xfc
      000357 F5 81            [12] 1068 	mov	sp,a
      000359 22               [24] 1069 	ret
                                   1070 	.area CSEG    (CODE)
                                   1071 	.area CONST   (CODE)
      000DDF                       1072 _chRf:
      000DDF 02                    1073 	.db #0x02	; 2
      000DE0 1A                    1074 	.db #0x1A	; 26
      000DE1 50                    1075 	.db #0x50	; 80	'P'
      000DE2                       1076 _chLe:
      000DE2 25                    1077 	.db #0x25	; 37
      000DE3 26                    1078 	.db #0x26	; 38
      000DE4 27                    1079 	.db #0x27	; 39
                                   1080 	.area XINIT   (CODE)
                                   1081 	.area CABS    (ABS,CODE)
