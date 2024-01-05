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
                                     11 	.globl __digit2segments
                                     12 	.globl _main
                                     13 	.globl _TM1637_clear
                                     14 	.globl _TM1637_display_digit
                                     15 	.globl _TM1637_display_segments
                                     16 	.globl _TM1637_send_config
                                     17 	.globl _TM1637_send_command
                                     18 	.globl _I2C_Write
                                     19 	.globl _I2C_start
                                     20 	.globl _send_stop
                                     21 	.globl _I2C_Init
                                     22 	.globl _DelayT0
                                     23 	.globl _DelayT0_Init
                                     24 	.globl _MOSI
                                     25 	.globl _P00
                                     26 	.globl _MISO
                                     27 	.globl _P01
                                     28 	.globl _RXD_1
                                     29 	.globl _P02
                                     30 	.globl _P03
                                     31 	.globl _STADC
                                     32 	.globl _P04
                                     33 	.globl _P05
                                     34 	.globl _TXD
                                     35 	.globl _P06
                                     36 	.globl _RXD
                                     37 	.globl _P07
                                     38 	.globl _IT0
                                     39 	.globl _IE0
                                     40 	.globl _IT1
                                     41 	.globl _IE1
                                     42 	.globl _TR0
                                     43 	.globl _TF0
                                     44 	.globl _TR1
                                     45 	.globl _TF1
                                     46 	.globl _P10
                                     47 	.globl _P11
                                     48 	.globl _P12
                                     49 	.globl _SCL
                                     50 	.globl _P13
                                     51 	.globl _SDA
                                     52 	.globl _P14
                                     53 	.globl _P15
                                     54 	.globl _TXD_1
                                     55 	.globl _P16
                                     56 	.globl _P17
                                     57 	.globl _RI
                                     58 	.globl _TI
                                     59 	.globl _RB8
                                     60 	.globl _TB8
                                     61 	.globl _REN
                                     62 	.globl _SM2
                                     63 	.globl _SM1
                                     64 	.globl _FE
                                     65 	.globl _SM0
                                     66 	.globl _P20
                                     67 	.globl _EX0
                                     68 	.globl _ET0
                                     69 	.globl _EX1
                                     70 	.globl _ET1
                                     71 	.globl _ES
                                     72 	.globl _EBOD
                                     73 	.globl _EADC
                                     74 	.globl _EA
                                     75 	.globl _P30
                                     76 	.globl _PX0
                                     77 	.globl _PT0
                                     78 	.globl _PX1
                                     79 	.globl _PT1
                                     80 	.globl _PS
                                     81 	.globl _PBOD
                                     82 	.globl _PADC
                                     83 	.globl _I2CPX
                                     84 	.globl _AA
                                     85 	.globl _SI
                                     86 	.globl _STO
                                     87 	.globl _STA
                                     88 	.globl _I2CEN
                                     89 	.globl _CM_RL2
                                     90 	.globl _TR2
                                     91 	.globl _TF2
                                     92 	.globl _P
                                     93 	.globl _OV
                                     94 	.globl _RS0
                                     95 	.globl _RS1
                                     96 	.globl _F0
                                     97 	.globl _AC
                                     98 	.globl _CY
                                     99 	.globl _CLRPWM
                                    100 	.globl _PWMF
                                    101 	.globl _LOAD
                                    102 	.globl _PWMRUN
                                    103 	.globl _ADCHS0
                                    104 	.globl _ADCHS1
                                    105 	.globl _ADCHS2
                                    106 	.globl _ADCHS3
                                    107 	.globl _ETGSEL0
                                    108 	.globl _ETGSEL1
                                    109 	.globl _ADCS
                                    110 	.globl _ADCF
                                    111 	.globl _RI_1
                                    112 	.globl _TI_1
                                    113 	.globl _RB8_1
                                    114 	.globl _TB8_1
                                    115 	.globl _REN_1
                                    116 	.globl _SM2_1
                                    117 	.globl _SM1_1
                                    118 	.globl _FE_1
                                    119 	.globl _SM0_1
                                    120 	.globl _EIPH1
                                    121 	.globl _EIP1
                                    122 	.globl _PMD
                                    123 	.globl _PMEN
                                    124 	.globl _PDTCNT
                                    125 	.globl _PDTEN
                                    126 	.globl _SCON_1
                                    127 	.globl _EIPH
                                    128 	.globl _AINDIDS
                                    129 	.globl _SPDR
                                    130 	.globl _SPSR
                                    131 	.globl _SPCR2
                                    132 	.globl _SPCR
                                    133 	.globl _CAPCON4
                                    134 	.globl _CAPCON3
                                    135 	.globl _B
                                    136 	.globl _EIP
                                    137 	.globl _C2H
                                    138 	.globl _C2L
                                    139 	.globl _PIF
                                    140 	.globl _PIPEN
                                    141 	.globl _PINEN
                                    142 	.globl _PICON
                                    143 	.globl _ADCCON0
                                    144 	.globl _C1H
                                    145 	.globl _C1L
                                    146 	.globl _C0H
                                    147 	.globl _C0L
                                    148 	.globl _ADCDLY
                                    149 	.globl _ADCCON2
                                    150 	.globl _ADCCON1
                                    151 	.globl _ACC
                                    152 	.globl _PWMCON1
                                    153 	.globl _PIOCON0
                                    154 	.globl _PWM3L
                                    155 	.globl _PWM2L
                                    156 	.globl _PWM1L
                                    157 	.globl _PWM0L
                                    158 	.globl _PWMPL
                                    159 	.globl _PWMCON0
                                    160 	.globl _FBD
                                    161 	.globl _PNP
                                    162 	.globl _PWM3H
                                    163 	.globl _PWM2H
                                    164 	.globl _PWM1H
                                    165 	.globl _PWM0H
                                    166 	.globl _PWMPH
                                    167 	.globl _PSW
                                    168 	.globl _ADCMPH
                                    169 	.globl _ADCMPL
                                    170 	.globl _PWM5L
                                    171 	.globl _TH2
                                    172 	.globl _PWM4L
                                    173 	.globl _TL2
                                    174 	.globl _RCMP2H
                                    175 	.globl _RCMP2L
                                    176 	.globl _T2MOD
                                    177 	.globl _T2CON
                                    178 	.globl _TA
                                    179 	.globl _PIOCON1
                                    180 	.globl _RH3
                                    181 	.globl _PWM5H
                                    182 	.globl _RL3
                                    183 	.globl _PWM4H
                                    184 	.globl _T3CON
                                    185 	.globl _ADCRH
                                    186 	.globl _ADCRL
                                    187 	.globl _I2ADDR
                                    188 	.globl _I2CON
                                    189 	.globl _I2TOC
                                    190 	.globl _I2CLK
                                    191 	.globl _I2STAT
                                    192 	.globl _I2DAT
                                    193 	.globl _SADDR_1
                                    194 	.globl _SADEN_1
                                    195 	.globl _SADEN
                                    196 	.globl _IP
                                    197 	.globl _PWMINTC
                                    198 	.globl _IPH
                                    199 	.globl _P2S
                                    200 	.globl _P1SR
                                    201 	.globl _P1M2
                                    202 	.globl _P1S
                                    203 	.globl _P1M1
                                    204 	.globl _P0SR
                                    205 	.globl _P0M2
                                    206 	.globl _P0S
                                    207 	.globl _P0M1
                                    208 	.globl _P3
                                    209 	.globl _IAPCN
                                    210 	.globl _IAPFD
                                    211 	.globl _P3SR
                                    212 	.globl _P3M2
                                    213 	.globl _P3S
                                    214 	.globl _P3M1
                                    215 	.globl _BODCON1
                                    216 	.globl _WDCON
                                    217 	.globl _SADDR
                                    218 	.globl _IE
                                    219 	.globl _IAPAH
                                    220 	.globl _IAPAL
                                    221 	.globl _IAPUEN
                                    222 	.globl _IAPTRG
                                    223 	.globl _BODCON0
                                    224 	.globl _AUXR1
                                    225 	.globl _P2
                                    226 	.globl _CHPCON
                                    227 	.globl _EIE1
                                    228 	.globl _EIE
                                    229 	.globl _SBUF_1
                                    230 	.globl _SBUF
                                    231 	.globl _SCON
                                    232 	.globl _CKEN
                                    233 	.globl _CKSWT
                                    234 	.globl _CKDIV
                                    235 	.globl _CAPCON2
                                    236 	.globl _CAPCON1
                                    237 	.globl _CAPCON0
                                    238 	.globl _SFRS
                                    239 	.globl _P1
                                    240 	.globl _WKCON
                                    241 	.globl _CKCON
                                    242 	.globl _TH1
                                    243 	.globl _TH0
                                    244 	.globl _TL1
                                    245 	.globl _TL0
                                    246 	.globl _TMOD
                                    247 	.globl _TCON
                                    248 	.globl _PCON
                                    249 	.globl _RWK
                                    250 	.globl _RCTRIM1
                                    251 	.globl _RCTRIM0
                                    252 	.globl _DPH
                                    253 	.globl _DPL
                                    254 	.globl _SP
                                    255 	.globl _P0
                                    256 	.globl _dem
                                    257 	.globl _TM1637_display_digit_PARM_2
                                    258 	.globl _TM1637_display_segments_PARM_2
                                    259 	.globl _TM1637_send_config_PARM_2
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
      000008                        511 __config:
      000008                        512 	.ds 1
      000009                        513 __segments:
      000009                        514 	.ds 1
      00000A                        515 _TM1637_send_config_PARM_2:
      00000A                        516 	.ds 1
      00000B                        517 _TM1637_init_PARM_2:
      00000B                        518 	.ds 1
      00000C                        519 _TM1637_display_segments_PARM_2:
      00000C                        520 	.ds 1
      00000D                        521 _TM1637_display_digit_PARM_2:
      00000D                        522 	.ds 1
      00000E                        523 _dem::
      00000E                        524 	.ds 2
                                    525 ;--------------------------------------------------------
                                    526 ; overlayable items in internal ram
                                    527 ;--------------------------------------------------------
                                    528 ;--------------------------------------------------------
                                    529 ; Stack segment in internal ram
                                    530 ;--------------------------------------------------------
                                    531 	.area SSEG
      000014                        532 __start__stack:
      000014                        533 	.ds	1
                                    534 
                                    535 ;--------------------------------------------------------
                                    536 ; indirectly addressable internal ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area ISEG    (DATA)
                                    539 ;--------------------------------------------------------
                                    540 ; absolute internal ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area IABS    (ABS,DATA)
                                    543 	.area IABS    (ABS,DATA)
                                    544 ;--------------------------------------------------------
                                    545 ; bit data
                                    546 ;--------------------------------------------------------
                                    547 	.area BSEG    (BIT)
                                    548 ;--------------------------------------------------------
                                    549 ; paged external ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area PSEG    (PAG,XDATA)
                                    552 ;--------------------------------------------------------
                                    553 ; uninitialized external ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area XSEG    (XDATA)
                                    556 ;--------------------------------------------------------
                                    557 ; absolute external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area XABS    (ABS,XDATA)
                                    560 ;--------------------------------------------------------
                                    561 ; initialized external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area XISEG   (XDATA)
                                    564 	.area HOME    (CODE)
                                    565 	.area GSINIT0 (CODE)
                                    566 	.area GSINIT1 (CODE)
                                    567 	.area GSINIT2 (CODE)
                                    568 	.area GSINIT3 (CODE)
                                    569 	.area GSINIT4 (CODE)
                                    570 	.area GSINIT5 (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.area GSFINAL (CODE)
                                    573 	.area CSEG    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; interrupt vector
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
      000000                        578 __interrupt_vect:
      000000 02 00 06         [24]  579 	ljmp	__sdcc_gsinit_startup
                                    580 ;--------------------------------------------------------
                                    581 ; global & static initialisations
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 	.area GSFINAL (CODE)
                                    586 	.area GSINIT  (CODE)
                                    587 	.globl __sdcc_gsinit_startup
                                    588 	.globl __sdcc_program_startup
                                    589 	.globl __start__stack
                                    590 	.globl __mcs51_genXINIT
                                    591 	.globl __mcs51_genXRAMCLEAR
                                    592 	.globl __mcs51_genRAMCLEAR
                                    593 ;	main.c:32: static uint8_t _config = TM1637_SET_DISPLAY_ON | TM1637_BRIGHTNESS_MAX;
      00005F 75 08 0F         [24]  594 	mov	__config,#0x0f
                                    595 ;	main.c:33: static uint8_t _segments = 0xff;
      000062 75 09 FF         [24]  596 	mov	__segments,#0xff
                                    597 	.area GSFINAL (CODE)
      000065 02 00 03         [24]  598 	ljmp	__sdcc_program_startup
                                    599 ;--------------------------------------------------------
                                    600 ; Home
                                    601 ;--------------------------------------------------------
                                    602 	.area HOME    (CODE)
                                    603 	.area HOME    (CODE)
      000003                        604 __sdcc_program_startup:
      000003 02 01 0E         [24]  605 	ljmp	_main
                                    606 ;	return from main will return to caller
                                    607 ;--------------------------------------------------------
                                    608 ; code
                                    609 ;--------------------------------------------------------
                                    610 	.area CSEG    (CODE)
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'TM1637_send_command'
                                    613 ;------------------------------------------------------------
                                    614 ;value                     Allocated to registers r7 
                                    615 ;------------------------------------------------------------
                                    616 ;	main.c:48: void TM1637_send_command(const uint8_t value)
                                    617 ;	-----------------------------------------
                                    618 ;	 function TM1637_send_command
                                    619 ;	-----------------------------------------
      000068                        620 _TM1637_send_command:
                           000007   621 	ar7 = 0x07
                           000006   622 	ar6 = 0x06
                           000005   623 	ar5 = 0x05
                           000004   624 	ar4 = 0x04
                           000003   625 	ar3 = 0x03
                           000002   626 	ar2 = 0x02
                           000001   627 	ar1 = 0x01
                           000000   628 	ar0 = 0x00
      000068 AF 82            [24]  629 	mov	r7,dpl
                                    630 ;	main.c:50: I2C_Init();
      00006A C0 07            [24]  631 	push	ar7
      00006C 12 02 29         [24]  632 	lcall	_I2C_Init
                                    633 ;	main.c:51: I2C_start();
      00006F 12 02 64         [24]  634 	lcall	_I2C_start
      000072 D0 07            [24]  635 	pop	ar7
                                    636 ;	main.c:52: I2C_Write(value);
      000074 8F 82            [24]  637 	mov	dpl,r7
      000076 12 02 E7         [24]  638 	lcall	_I2C_Write
                                    639 ;	main.c:53: send_stop();
                                    640 ;	main.c:54: }
      000079 02 02 3A         [24]  641 	ljmp	_send_stop
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'TM1637_send_config'
                                    644 ;------------------------------------------------------------
                                    645 ;brightness                Allocated with name '_TM1637_send_config_PARM_2'
                                    646 ;enable                    Allocated to registers r7 
                                    647 ;------------------------------------------------------------
                                    648 ;	main.c:56: void TM1637_send_config(const uint8_t enable, const uint8_t brightness)
                                    649 ;	-----------------------------------------
                                    650 ;	 function TM1637_send_config
                                    651 ;	-----------------------------------------
      00007C                        652 _TM1637_send_config:
                                    653 ;	main.c:59: _config = (enable ? TM1637_SET_DISPLAY_ON : TM1637_SET_DISPLAY_OFF) |
      00007C E5 82            [12]  654 	mov	a,dpl
      00007E 60 06            [24]  655 	jz	00103$
      000080 7E 08            [12]  656 	mov	r6,#0x08
      000082 7F 00            [12]  657 	mov	r7,#0x00
      000084 80 04            [24]  658 	sjmp	00104$
      000086                        659 00103$:
      000086 7E 00            [12]  660 	mov	r6,#0x00
      000088 7F 00            [12]  661 	mov	r7,#0x00
      00008A                        662 00104$:
                                    663 ;	main.c:60: (brightness > TM1637_BRIGHTNESS_MAX ? TM1637_BRIGHTNESS_MAX : brightness);
      00008A E5 0A            [12]  664 	mov	a,_TM1637_send_config_PARM_2
      00008C 24 F8            [12]  665 	add	a,#0xff - 0x07
      00008E 50 06            [24]  666 	jnc	00105$
      000090 7C 07            [12]  667 	mov	r4,#0x07
      000092 7D 00            [12]  668 	mov	r5,#0x00
      000094 80 04            [24]  669 	sjmp	00106$
      000096                        670 00105$:
      000096 AC 0A            [24]  671 	mov	r4,_TM1637_send_config_PARM_2
      000098 7D 00            [12]  672 	mov	r5,#0x00
      00009A                        673 00106$:
      00009A EC               [12]  674 	mov	a,r4
      00009B 4E               [12]  675 	orl	a,r6
      00009C F5 08            [12]  676 	mov	__config,a
                                    677 ;	main.c:62: TM1637_send_command(TM1637_CMD_SET_DSIPLAY | _config);
      00009E 74 80            [12]  678 	mov	a,#0x80
      0000A0 45 08            [12]  679 	orl	a,__config
      0000A2 F5 82            [12]  680 	mov	dpl,a
                                    681 ;	main.c:63: }
      0000A4 02 00 68         [24]  682 	ljmp	_TM1637_send_command
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'TM1637_init'
                                    685 ;------------------------------------------------------------
                                    686 ;brightness                Allocated with name '_TM1637_init_PARM_2'
                                    687 ;enable                    Allocated to registers r7 
                                    688 ;------------------------------------------------------------
                                    689 ;	main.c:65: static void TM1637_init(const uint8_t enable, const uint8_t brightness)
                                    690 ;	-----------------------------------------
                                    691 ;	 function TM1637_init
                                    692 ;	-----------------------------------------
      0000A7                        693 _TM1637_init:
      0000A7 AF 82            [24]  694 	mov	r7,dpl
                                    695 ;	main.c:67: I2C_Init();
      0000A9 C0 07            [24]  696 	push	ar7
      0000AB 12 02 29         [24]  697 	lcall	_I2C_Init
      0000AE D0 07            [24]  698 	pop	ar7
                                    699 ;	main.c:70: TM1637_send_config(enable, brightness);
      0000B0 85 0B 0A         [24]  700 	mov	_TM1637_send_config_PARM_2,_TM1637_init_PARM_2
      0000B3 8F 82            [24]  701 	mov	dpl,r7
                                    702 ;	main.c:71: }
      0000B5 02 00 7C         [24]  703 	ljmp	_TM1637_send_config
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'TM1637_display_segments'
                                    706 ;------------------------------------------------------------
                                    707 ;segments                  Allocated with name '_TM1637_display_segments_PARM_2'
                                    708 ;position                  Allocated to registers r7 
                                    709 ;------------------------------------------------------------
                                    710 ;	main.c:73: void TM1637_display_segments(const uint8_t position, const uint8_t segments)
                                    711 ;	-----------------------------------------
                                    712 ;	 function TM1637_display_segments
                                    713 ;	-----------------------------------------
      0000B8                        714 _TM1637_display_segments:
      0000B8 AF 82            [24]  715 	mov	r7,dpl
                                    716 ;	main.c:75: TM1637_send_command(TM1637_CMD_SET_DATA | TM1637_SET_DATA_F_ADDR);
      0000BA 75 82 44         [24]  717 	mov	dpl,#0x44
      0000BD C0 07            [24]  718 	push	ar7
      0000BF 12 00 68         [24]  719 	lcall	_TM1637_send_command
                                    720 ;	main.c:76: I2C_start();
      0000C2 12 02 64         [24]  721 	lcall	_I2C_start
      0000C5 D0 07            [24]  722 	pop	ar7
                                    723 ;	main.c:77: I2C_Write(TM1637_CMD_SET_ADDR | (position & (TM1637_POSITION_MAX - 1)));
      0000C7 74 03            [12]  724 	mov	a,#0x03
      0000C9 5F               [12]  725 	anl	a,r7
      0000CA 44 C0            [12]  726 	orl	a,#0xc0
      0000CC F5 82            [12]  727 	mov	dpl,a
      0000CE 12 02 E7         [24]  728 	lcall	_I2C_Write
                                    729 ;	main.c:78: I2C_Write(segments);
      0000D1 85 0C 82         [24]  730 	mov	dpl,_TM1637_display_segments_PARM_2
      0000D4 12 02 E7         [24]  731 	lcall	_I2C_Write
                                    732 ;	main.c:79: send_stop();
                                    733 ;	main.c:80: }
      0000D7 02 02 3A         [24]  734 	ljmp	_send_stop
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'TM1637_display_digit'
                                    737 ;------------------------------------------------------------
                                    738 ;digit                     Allocated with name '_TM1637_display_digit_PARM_2'
                                    739 ;position                  Allocated to registers r7 
                                    740 ;segments                  Allocated to registers r6 
                                    741 ;------------------------------------------------------------
                                    742 ;	main.c:82: void TM1637_display_digit(const uint8_t position, const uint8_t digit)
                                    743 ;	-----------------------------------------
                                    744 ;	 function TM1637_display_digit
                                    745 ;	-----------------------------------------
      0000DA                        746 _TM1637_display_digit:
      0000DA AF 82            [24]  747 	mov	r7,dpl
                                    748 ;	main.c:85: if (digit < 10)
      0000DC 74 F6            [12]  749 	mov	a,#0x100 - 0x0a
      0000DE 25 0D            [12]  750 	add	a,_TM1637_display_digit_PARM_2
      0000E0 40 09            [24]  751 	jc	00102$
                                    752 ;	main.c:87: segments = _digit2segments[digit];
      0000E2 E5 0D            [12]  753 	mov	a,_TM1637_display_digit_PARM_2
      0000E4 90 04 A4         [24]  754 	mov	dptr,#__digit2segments
      0000E7 93               [24]  755 	movc	a,@a+dptr
      0000E8 FE               [12]  756 	mov	r6,a
      0000E9 80 02            [24]  757 	sjmp	00103$
      0000EB                        758 00102$:
                                    759 ;	main.c:90: segments = 0x00;	
      0000EB 7E 00            [12]  760 	mov	r6,#0x00
      0000ED                        761 00103$:
                                    762 ;	main.c:92: if (position == 0x01) {
      0000ED BF 01 02         [24]  763 	cjne	r7,#0x01,00105$
                                    764 ;	main.c:94: _segments = segments;
      0000F0 8E 09            [24]  765 	mov	__segments,r6
      0000F2                        766 00105$:
                                    767 ;	main.c:97: TM1637_display_segments(position, segments);
      0000F2 8E 0C            [24]  768 	mov	_TM1637_display_segments_PARM_2,r6
      0000F4 8F 82            [24]  769 	mov	dpl,r7
                                    770 ;	main.c:98: }
      0000F6 02 00 B8         [24]  771 	ljmp	_TM1637_display_segments
                                    772 ;------------------------------------------------------------
                                    773 ;Allocation info for local variables in function 'TM1637_clear'
                                    774 ;------------------------------------------------------------
                                    775 ;i                         Allocated to registers r7 
                                    776 ;------------------------------------------------------------
                                    777 ;	main.c:100: void TM1637_clear(void)
                                    778 ;	-----------------------------------------
                                    779 ;	 function TM1637_clear
                                    780 ;	-----------------------------------------
      0000F9                        781 _TM1637_clear:
                                    782 ;	main.c:104: for (i = 0; i < TM1637_POSITION_MAX; ++i) {
      0000F9 7F 00            [12]  783 	mov	r7,#0x00
      0000FB                        784 00102$:
                                    785 ;	main.c:105: TM1637_display_segments(i, 0x00);
      0000FB 75 0C 00         [24]  786 	mov	_TM1637_display_segments_PARM_2,#0x00
      0000FE 8F 82            [24]  787 	mov	dpl,r7
      000100 C0 07            [24]  788 	push	ar7
      000102 12 00 B8         [24]  789 	lcall	_TM1637_display_segments
      000105 D0 07            [24]  790 	pop	ar7
                                    791 ;	main.c:104: for (i = 0; i < TM1637_POSITION_MAX; ++i) {
      000107 0F               [12]  792 	inc	r7
      000108 BF 04 00         [24]  793 	cjne	r7,#0x04,00111$
      00010B                        794 00111$:
      00010B 40 EE            [24]  795 	jc	00102$
                                    796 ;	main.c:107: }
      00010D 22               [24]  797 	ret
                                    798 ;------------------------------------------------------------
                                    799 ;Allocation info for local variables in function 'main'
                                    800 ;------------------------------------------------------------
                                    801 ;	main.c:109: void main(void)
                                    802 ;	-----------------------------------------
                                    803 ;	 function main
                                    804 ;	-----------------------------------------
      00010E                        805 _main:
                                    806 ;	main.c:112: P15_PUSHPULL_MODE;
      00010E 53 B3 DF         [24]  807 	anl	_P1M1,#0xdf
      000111 43 B4 20         [24]  808 	orl	_P1M2,#0x20
                                    809 ;	main.c:113: DelayT0_Init();
      000114 12 01 D1         [24]  810 	lcall	_DelayT0_Init
                                    811 ;	main.c:114: TM1637_clear();
      000117 12 00 F9         [24]  812 	lcall	_TM1637_clear
                                    813 ;	main.c:115: TM1637_init(1/*enable*/, 1/*brightness*/);
      00011A 75 0B 01         [24]  814 	mov	_TM1637_init_PARM_2,#0x01
      00011D 75 82 01         [24]  815 	mov	dpl,#0x01
      000120 12 00 A7         [24]  816 	lcall	_TM1637_init
                                    817 ;	main.c:118: P15=1;
                                    818 ;	assignBit
      000123 D2 95            [12]  819 	setb	_P15
                                    820 ;	main.c:120: while (1)
      000125                        821 00102$:
                                    822 ;	main.c:123: TM1637_display_digit(0x00, (uint8_t)(dem/1000)%10);
      000125 85 0E 82         [24]  823 	mov	dpl,_dem
      000128 85 0F 83         [24]  824 	mov	dph,(_dem + 1)
      00012B 75 12 E8         [24]  825 	mov	__divuint_PARM_2,#0xe8
      00012E 75 13 03         [24]  826 	mov	(__divuint_PARM_2 + 1),#0x03
      000131 12 03 D8         [24]  827 	lcall	__divuint
      000134 AE 82            [24]  828 	mov	r6,dpl
      000136 7F 00            [12]  829 	mov	r7,#0x00
      000138 75 12 0A         [24]  830 	mov	__modsint_PARM_2,#0x0a
      00013B 8F 13            [24]  831 	mov	(__modsint_PARM_2 + 1),r7
      00013D 8E 82            [24]  832 	mov	dpl,r6
      00013F 8F 83            [24]  833 	mov	dph,r7
      000141 12 04 6A         [24]  834 	lcall	__modsint
      000144 AE 82            [24]  835 	mov	r6,dpl
      000146 8E 0D            [24]  836 	mov	_TM1637_display_digit_PARM_2,r6
      000148 75 82 00         [24]  837 	mov	dpl,#0x00
      00014B 12 00 DA         [24]  838 	lcall	_TM1637_display_digit
                                    839 ;	main.c:124: TM1637_display_digit(0x01, (uint8_t)(dem/100)%10);
      00014E 85 0E 82         [24]  840 	mov	dpl,_dem
      000151 85 0F 83         [24]  841 	mov	dph,(_dem + 1)
      000154 75 12 64         [24]  842 	mov	__divuint_PARM_2,#0x64
      000157 75 13 00         [24]  843 	mov	(__divuint_PARM_2 + 1),#0x00
      00015A 12 03 D8         [24]  844 	lcall	__divuint
      00015D AE 82            [24]  845 	mov	r6,dpl
      00015F 7F 00            [12]  846 	mov	r7,#0x00
      000161 75 12 0A         [24]  847 	mov	__modsint_PARM_2,#0x0a
      000164 8F 13            [24]  848 	mov	(__modsint_PARM_2 + 1),r7
      000166 8E 82            [24]  849 	mov	dpl,r6
      000168 8F 83            [24]  850 	mov	dph,r7
      00016A 12 04 6A         [24]  851 	lcall	__modsint
      00016D AE 82            [24]  852 	mov	r6,dpl
      00016F 8E 0D            [24]  853 	mov	_TM1637_display_digit_PARM_2,r6
      000171 75 82 01         [24]  854 	mov	dpl,#0x01
      000174 12 00 DA         [24]  855 	lcall	_TM1637_display_digit
                                    856 ;	main.c:125: TM1637_display_digit(0x02, (uint8_t)(dem/10)%10);
      000177 85 0E 82         [24]  857 	mov	dpl,_dem
      00017A 85 0F 83         [24]  858 	mov	dph,(_dem + 1)
      00017D 75 12 0A         [24]  859 	mov	__divuint_PARM_2,#0x0a
      000180 75 13 00         [24]  860 	mov	(__divuint_PARM_2 + 1),#0x00
      000183 12 03 D8         [24]  861 	lcall	__divuint
      000186 AE 82            [24]  862 	mov	r6,dpl
      000188 7F 00            [12]  863 	mov	r7,#0x00
      00018A 75 12 0A         [24]  864 	mov	__modsint_PARM_2,#0x0a
      00018D 8F 13            [24]  865 	mov	(__modsint_PARM_2 + 1),r7
      00018F 8E 82            [24]  866 	mov	dpl,r6
      000191 8F 83            [24]  867 	mov	dph,r7
      000193 12 04 6A         [24]  868 	lcall	__modsint
      000196 AE 82            [24]  869 	mov	r6,dpl
      000198 8E 0D            [24]  870 	mov	_TM1637_display_digit_PARM_2,r6
      00019A 75 82 02         [24]  871 	mov	dpl,#0x02
      00019D 12 00 DA         [24]  872 	lcall	_TM1637_display_digit
                                    873 ;	main.c:126: TM1637_display_digit(0x03, (uint8_t)(dem/1)%10);
      0001A0 AF 0E            [24]  874 	mov	r7,_dem
      0001A2 7E 00            [12]  875 	mov	r6,#0x00
      0001A4 75 12 0A         [24]  876 	mov	__modsint_PARM_2,#0x0a
      0001A7 8E 13            [24]  877 	mov	(__modsint_PARM_2 + 1),r6
      0001A9 8F 82            [24]  878 	mov	dpl,r7
      0001AB 8E 83            [24]  879 	mov	dph,r6
      0001AD 12 04 6A         [24]  880 	lcall	__modsint
      0001B0 AE 82            [24]  881 	mov	r6,dpl
      0001B2 8E 0D            [24]  882 	mov	_TM1637_display_digit_PARM_2,r6
      0001B4 75 82 03         [24]  883 	mov	dpl,#0x03
      0001B7 12 00 DA         [24]  884 	lcall	_TM1637_display_digit
                                    885 ;	main.c:127: DelayT0(1000,CONFIG_1MS);
      0001BA 75 12 E8         [24]  886 	mov	_DelayT0_PARM_2,#0xe8
      0001BD 75 13 03         [24]  887 	mov	(_DelayT0_PARM_2 + 1),#0x03
      0001C0 90 03 E8         [24]  888 	mov	dptr,#0x03e8
      0001C3 12 01 DB         [24]  889 	lcall	_DelayT0
                                    890 ;	main.c:128: ++dem;
      0001C6 05 0E            [12]  891 	inc	_dem
      0001C8 E4               [12]  892 	clr	a
      0001C9 B5 0E 02         [24]  893 	cjne	a,_dem,00110$
      0001CC 05 0F            [12]  894 	inc	(_dem + 1)
      0001CE                        895 00110$:
                                    896 ;	main.c:133: }
      0001CE 02 01 25         [24]  897 	ljmp	00102$
                                    898 	.area CSEG    (CODE)
                                    899 	.area CONST   (CODE)
      0004A4                        900 __digit2segments:
      0004A4 3F                     901 	.db #0x3f	; 63
      0004A5 06                     902 	.db #0x06	; 6
      0004A6 5B                     903 	.db #0x5b	; 91
      0004A7 4F                     904 	.db #0x4f	; 79	'O'
      0004A8 66                     905 	.db #0x66	; 102	'f'
      0004A9 6D                     906 	.db #0x6d	; 109	'm'
      0004AA 7D                     907 	.db #0x7d	; 125
      0004AB 07                     908 	.db #0x07	; 7
      0004AC 7F                     909 	.db #0x7f	; 127
      0004AD 6F                     910 	.db #0x6f	; 111	'o'
                                    911 	.area XINIT   (CODE)
                                    912 	.area CABS    (ABS,CODE)
