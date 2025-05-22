;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Sat Apr 26 09:36:18 2025
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DelayT0
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _EIPH1
	.globl _EIP1
	.globl _PMD
	.globl _PMEN
	.globl _PDTCNT
	.globl _PDTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR2
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWMCON1
	.globl _PIOCON0
	.globl _PWM3L
	.globl _PWM2L
	.globl _PWM1L
	.globl _PWM0L
	.globl _PWMPL
	.globl _PWMCON0
	.globl _FBD
	.globl _PNP
	.globl _PWM3H
	.globl _PWM2H
	.globl _PWM1H
	.globl _PWM0H
	.globl _PWMPH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _PWM5L
	.globl _TH2
	.globl _PWM4L
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _PIOCON1
	.globl _RH3
	.globl _PWM5H
	.globl _RL3
	.globl _PWM4H
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _PWMINTC
	.globl _IPH
	.globl _P2S
	.globl _P1SR
	.globl _P1M2
	.globl _P1S
	.globl _P1M1
	.globl _P0SR
	.globl _P0M2
	.globl _P0S
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3SR
	.globl _P3M2
	.globl _P3S
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _RWK
	.globl _RCTRIM1
	.globl _RCTRIM0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _data_read_PARM_4
	.globl _data_read_PARM_3
	.globl _data_read_PARM_2
	.globl _data_write_PARM_4
	.globl _data_write_PARM_3
	.globl _data_write_PARM_2
	.globl _i2c_init
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_write
	.globl _i2c_read
	.globl _data_write
	.globl _data_read
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_RCTRIM0	=	0x0084
_RCTRIM1	=	0x0085
_RWK	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_WKCON	=	0x008f
_P1	=	0x0090
_SFRS	=	0x0091
_CAPCON0	=	0x0092
_CAPCON1	=	0x0093
_CAPCON2	=	0x0094
_CKDIV	=	0x0095
_CKSWT	=	0x0096
_CKEN	=	0x0097
_SCON	=	0x0098
_SBUF	=	0x0099
_SBUF_1	=	0x009a
_EIE	=	0x009b
_EIE1	=	0x009c
_CHPCON	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_BODCON0	=	0x00a3
_IAPTRG	=	0x00a4
_IAPUEN	=	0x00a5
_IAPAL	=	0x00a6
_IAPAH	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_WDCON	=	0x00aa
_BODCON1	=	0x00ab
_P3M1	=	0x00ac
_P3S	=	0x00ac
_P3M2	=	0x00ad
_P3SR	=	0x00ad
_IAPFD	=	0x00ae
_IAPCN	=	0x00af
_P3	=	0x00b0
_P0M1	=	0x00b1
_P0S	=	0x00b1
_P0M2	=	0x00b2
_P0SR	=	0x00b2
_P1M1	=	0x00b3
_P1S	=	0x00b3
_P1M2	=	0x00b4
_P1SR	=	0x00b4
_P2S	=	0x00b5
_IPH	=	0x00b7
_PWMINTC	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_SADEN_1	=	0x00ba
_SADDR_1	=	0x00bb
_I2DAT	=	0x00bc
_I2STAT	=	0x00bd
_I2CLK	=	0x00be
_I2TOC	=	0x00bf
_I2CON	=	0x00c0
_I2ADDR	=	0x00c1
_ADCRL	=	0x00c2
_ADCRH	=	0x00c3
_T3CON	=	0x00c4
_PWM4H	=	0x00c4
_RL3	=	0x00c5
_PWM5H	=	0x00c5
_RH3	=	0x00c6
_PIOCON1	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCMP2L	=	0x00ca
_RCMP2H	=	0x00cb
_TL2	=	0x00cc
_PWM4L	=	0x00cc
_TH2	=	0x00cd
_PWM5L	=	0x00cd
_ADCMPL	=	0x00ce
_ADCMPH	=	0x00cf
_PSW	=	0x00d0
_PWMPH	=	0x00d1
_PWM0H	=	0x00d2
_PWM1H	=	0x00d3
_PWM2H	=	0x00d4
_PWM3H	=	0x00d5
_PNP	=	0x00d6
_FBD	=	0x00d7
_PWMCON0	=	0x00d8
_PWMPL	=	0x00d9
_PWM0L	=	0x00da
_PWM1L	=	0x00db
_PWM2L	=	0x00dc
_PWM3L	=	0x00dd
_PIOCON0	=	0x00de
_PWMCON1	=	0x00df
_ACC	=	0x00e0
_ADCCON1	=	0x00e1
_ADCCON2	=	0x00e2
_ADCDLY	=	0x00e3
_C0L	=	0x00e4
_C0H	=	0x00e5
_C1L	=	0x00e6
_C1H	=	0x00e7
_ADCCON0	=	0x00e8
_PICON	=	0x00e9
_PINEN	=	0x00ea
_PIPEN	=	0x00eb
_PIF	=	0x00ec
_C2L	=	0x00ed
_C2H	=	0x00ee
_EIP	=	0x00ef
_B	=	0x00f0
_CAPCON3	=	0x00f1
_CAPCON4	=	0x00f2
_SPCR	=	0x00f3
_SPCR2	=	0x00f3
_SPSR	=	0x00f4
_SPDR	=	0x00f5
_AINDIDS	=	0x00f6
_EIPH	=	0x00f7
_SCON_1	=	0x00f8
_PDTEN	=	0x00f9
_PDTCNT	=	0x00fa
_PMEN	=	0x00fb
_PMD	=	0x00fc
_EIP1	=	0x00fe
_EIPH1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SM0_1	=	0x00ff
_FE_1	=	0x00ff
_SM1_1	=	0x00fe
_SM2_1	=	0x00fd
_REN_1	=	0x00fc
_TB8_1	=	0x00fb
_RB8_1	=	0x00fa
_TI_1	=	0x00f9
_RI_1	=	0x00f8
_ADCF	=	0x00ef
_ADCS	=	0x00ee
_ETGSEL1	=	0x00ed
_ETGSEL0	=	0x00ec
_ADCHS3	=	0x00eb
_ADCHS2	=	0x00ea
_ADCHS1	=	0x00e9
_ADCHS0	=	0x00e8
_PWMRUN	=	0x00df
_LOAD	=	0x00de
_PWMF	=	0x00dd
_CLRPWM	=	0x00dc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF2	=	0x00cf
_TR2	=	0x00ca
_CM_RL2	=	0x00c8
_I2CEN	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_SI	=	0x00c3
_AA	=	0x00c2
_I2CPX	=	0x00c0
_PADC	=	0x00be
_PBOD	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P30	=	0x00b0
_EA	=	0x00af
_EADC	=	0x00ae
_EBOD	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P20	=	0x00a0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P17	=	0x0097
_P16	=	0x0096
_TXD_1	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_SDA	=	0x0094
_P13	=	0x0093
_SCL	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P07	=	0x0087
_RXD	=	0x0087
_P06	=	0x0086
_TXD	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_STADC	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_RXD_1	=	0x0082
_P01	=	0x0081
_MISO	=	0x0081
_P00	=	0x0080
_MOSI	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_data_write_PARM_2:
	.ds 1
_data_write_PARM_3:
	.ds 1
_data_write_PARM_4:
	.ds 3
_data_read_PARM_2:
	.ds 1
_data_read_PARM_3:
	.ds 1
_data_read_PARM_4:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_init'
;------------------------------------------------------------
;	i2c.c:4: void i2c_init(void)
;	-----------------------------------------
;	 function i2c_init
;	-----------------------------------------
_i2c_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:9: P14_OPENDRAIN_MODE;
	orl	_P1M1,#0x10
	orl	_P1M2,#0x10
;	i2c.c:10: P13_OPENDRAIN_MODE;
	orl	_P1M1,#0x08
	orl	_P1M2,#0x08
;	i2c.c:12: SDA_1;
	setb	_P14
;	i2c.c:13: SCL_1;
	setb	_P13
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c.c:15: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2c.c:24: SCL_1;
	setb	_P13
;	i2c.c:25: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:26: SDA_1;
	setb	_P14
;	i2c.c:27: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:28: SDA_0;
	clr	_P14
;	i2c.c:29: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:30: SCL_0;
	clr	_P13
;	i2c.c:31: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	ljmp	_DelayT0
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c.c:34: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c.c:38: SDA_0;
	clr	_P14
;	i2c.c:39: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:40: SCL_1;
	setb	_P13
;	i2c.c:41: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:42: SDA_1;
	setb	_P14
;	i2c.c:43: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	ljmp	_DelayT0
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;u8Data                    Allocated to registers r7 
;i                         Allocated to registers r6 
;u8Ret                     Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:45: uint8_t i2c_write(uint8_t u8Data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7,dpl
;	i2c.c:53: for (i = 0; i < 8; ++i) {
	mov	r6,#0x00
00108$:
;	i2c.c:54: if (u8Data & 0x80) {
	mov	a,r7
	jnb	acc.7,00102$
;	i2c.c:55: SDA_1;
	setb	_P14
	sjmp	00103$
00102$:
;	i2c.c:57: SDA_0;
	clr	_P14
00103$:
;	i2c.c:59: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_DelayT0
;	i2c.c:60: SCL_1;
	setb	_P13
;	i2c.c:61: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
	pop	ar6
	pop	ar7
;	i2c.c:62: SCL_0;
	clr	_P13
;	i2c.c:64: u8Data <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	i2c.c:53: for (i = 0; i < 8; ++i) {
	inc	r6
	cjne	r6,#0x08,00126$
00126$:
	jc	00108$
;	i2c.c:67: SDA_0;
	clr	_P14
;	i2c.c:68: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:70: SCL_1;
	setb	_P13
;	i2c.c:71: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:72: SCL_0;
	clr	_P13
;	i2c.c:73: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:74: SDA_1;
	setb	_P14
;	i2c.c:75: if (SDA_VAL) {
	jnb	_P14,00106$
;	i2c.c:76: u8Ret = 0;
	mov	r7,#0x00
	sjmp	00107$
00106$:
;	i2c.c:78: u8Ret = 1;
	mov	r7,#0x01
00107$:
;	i2c.c:80: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar7
	lcall	_DelayT0
	pop	ar7
;	i2c.c:81: return u8Ret;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;Ack                       Allocated to registers r7 
;u8DataRead                Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	i2c.c:83: uint8_t i2c_read(uint8_t Ack)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7,dpl
;	i2c.c:85: uint8_t u8DataRead = 0;
	mov	r6,#0x00
;	i2c.c:87: SDA_1;
	setb	_P14
;	i2c.c:88: for (i = 0; i < 8; ++i)
	mov	r5,#0x00
00107$:
;	i2c.c:90: u8DataRead = u8DataRead << 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
;	i2c.c:91: SCL_1;
	setb	_P13
;	i2c.c:92: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	lcall	_DelayT0
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:93: if (SDA_VAL)
	jnb	_P14,00102$
;	i2c.c:95: u8DataRead = u8DataRead | 0x01;
	orl	ar6,#0x01
00102$:
;	i2c.c:97: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	lcall	_DelayT0
;	i2c.c:98: SCL_0;
	clr	_P13
;	i2c.c:99: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:88: for (i = 0; i < 8; ++i)
	inc	r5
	cjne	r5,#0x08,00125$
00125$:
	jc	00107$
;	i2c.c:102: if(Ack){
	mov	a,r7
	jz	00105$
;	i2c.c:103: SDA_0;
	clr	_P14
	sjmp	00106$
00105$:
;	i2c.c:105: SDA_1;
	setb	_P14
00106$:
;	i2c.c:107: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar6
	lcall	_DelayT0
;	i2c.c:109: SCL_1;
	setb	_P13
;	i2c.c:110: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
;	i2c.c:111: SCL_0;
	clr	_P13
;	i2c.c:112: DELAYI2C;
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	lcall	_DelayT0
	pop	ar6
;	i2c.c:113: return u8DataRead;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'data_write'
;------------------------------------------------------------
;addressData               Allocated with name '_data_write_PARM_2'
;num                       Allocated with name '_data_write_PARM_3'
;data                      Allocated with name '_data_write_PARM_4'
;address                   Allocated to registers r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	i2c.c:115: uint8_t data_write(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data)
;	-----------------------------------------
;	 function data_write
;	-----------------------------------------
_data_write:
	mov	r7,dpl
;	i2c.c:118: for(i=0; i< num; ++i)
	mov	r6,_data_write_PARM_2
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,_data_write_PARM_3
	jnc	00101$
;	i2c.c:120: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:121: i2c_write(address);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write
	pop	ar5
	pop	ar6
;	i2c.c:122: i2c_write(addressData++);
	mov	dpl,r6
	inc	r6
	push	ar6
	push	ar5
	lcall	_i2c_write
	pop	ar5
;	i2c.c:123: i2c_write(data[i]);
	mov	a,r5
	add	a,_data_write_PARM_4
	mov	r2,a
	clr	a
	addc	a,(_data_write_PARM_4 + 1)
	mov	r3,a
	mov	r4,(_data_write_PARM_4 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	lcall	_i2c_write
;	i2c.c:124: i2c_stop();
	lcall	_i2c_stop
;	i2c.c:125: DelayT0(1, CONFIG_1MS);
	mov	_DelayT0_PARM_2,#0xE8
	mov	(_DelayT0_PARM_2 + 1),#0x03
	mov	dptr,#0x0001
	lcall	_DelayT0
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:118: for(i=0; i< num; ++i)
	inc	r5
	sjmp	00103$
00101$:
;	i2c.c:127: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'data_read'
;------------------------------------------------------------
;addressData               Allocated with name '_data_read_PARM_2'
;num                       Allocated with name '_data_read_PARM_3'
;data                      Allocated with name '_data_read_PARM_4'
;address                   Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:129: uint8_t data_read(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data)
;	-----------------------------------------
;	 function data_read
;	-----------------------------------------
_data_read:
	mov	r7,dpl
;	i2c.c:132: i2c_start();
	push	ar7
	lcall	_i2c_start
	pop	ar7
;	i2c.c:133: i2c_write(address);
	mov	dpl,r7
	push	ar7
	lcall	_i2c_write
;	i2c.c:134: i2c_write(addressData);
	mov	dpl,_data_read_PARM_2
	lcall	_i2c_write
;	i2c.c:136: i2c_start();
	lcall	_i2c_start
	pop	ar7
;	i2c.c:137: i2c_write(address | 0x01);
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_i2c_write
;	i2c.c:138: for(i=0; i< num - 1; ++i)
	mov	r7,#0x00
00103$:
	mov	r5,_data_read_PARM_3
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xFF,00114$
	dec	r6
00114$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	i2c.c:140: data[i] = i2c_read(1);
	mov	a,r7
	add	a,_data_read_PARM_4
	mov	r4,a
	clr	a
	addc	a,(_data_read_PARM_4 + 1)
	mov	r5,a
	mov	r6,(_data_read_PARM_4 + 2)
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	i2c.c:138: for(i=0; i< num - 1; ++i)
	inc	r7
	sjmp	00103$
00101$:
;	i2c.c:142: data[i] = i2c_read(0);
	mov	a,r7
	add	a,_data_read_PARM_4
	mov	r7,a
	clr	a
	addc	a,(_data_read_PARM_4 + 1)
	mov	r6,a
	mov	r5,(_data_read_PARM_4 + 2)
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
;	i2c.c:143: i2c_stop();
	lcall	_i2c_stop
;	i2c.c:144: return 1;
	mov	dpl,#0x01
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
