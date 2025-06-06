;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _I2C_Write_nByte_PARM_2
	.globl _I2C_Address_PARM_2
	.globl _I2C_Init
	.globl _send_stop
	.globl _I2C_start
	.globl _I2C_RepeatedStart
	.globl _I2C_Address
	.globl _I2C_Write
	.globl _I2C_Write_nByte
	.globl _I2C_Read
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
_I2C_Address_PARM_2:
	.ds 1
_I2C_Write_nByte_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_send_stop_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
;Allocation info for local variables in function 'I2C_Init'
;------------------------------------------------------------
;	lib/src/i2c.c:7: void I2C_Init(void)
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
_I2C_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lib/src/i2c.c:9: I2CLK = 39;
	mov	_I2CLK,#0x27
;	lib/src/i2c.c:12: P1M1 &= ~(1 << 3);
	anl	_P1M1,#0xf7
;	lib/src/i2c.c:13: P1M2 &= ~(1 << 3);
	anl	_P1M2,#0xf7
;	lib/src/i2c.c:16: P1M1 &= ~(1 << 4);
	anl	_P1M1,#0xef
;	lib/src/i2c.c:17: P1M2 &= ~(1 << 4);
	anl	_P1M2,#0xef
;	lib/src/i2c.c:19: P13=1;
;	assignBit
	setb	_P13
;	lib/src/i2c.c:20: P14=1;
;	assignBit
	setb	_P14
;	lib/src/i2c.c:22: I2CEN=1;
;	assignBit
	setb	_I2CEN
;	lib/src/i2c.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_stop'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 
;u8TimeOut                 Allocated to registers r7 
;------------------------------------------------------------
;	lib/src/i2c.c:24: uint8_t send_stop(void)
;	-----------------------------------------
;	 function send_stop
;	-----------------------------------------
_send_stop:
;	lib/src/i2c.c:29: STA = 0;
;	assignBit
	clr	_STA
;	lib/src/i2c.c:30: STO = 1;
;	assignBit
	setb	_STO
;	lib/src/i2c.c:31: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:33: u8TimeOut = 0;
	mov	r7,#0x00
;	lib/src/i2c.c:34: while (1) {
	mov	r5,#0x01
	mov	r6,#0x00
00106$:
;	lib/src/i2c.c:35: if (I2STAT == 0xF8) {
	mov	a,#0xf8
	cjne	a,_I2STAT,00122$
	sjmp	00107$
00122$:
;	lib/src/i2c.c:38: if (!t) {
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	lib/src/i2c.c:39: u8TimeOut = 1;
	mov	r7,#0x01
;	lib/src/i2c.c:40: break;
	sjmp	00107$
00104$:
;	lib/src/i2c.c:42: ++t;
	inc	r5
	cjne	r5,#0x00,00106$
	inc	r6
	sjmp	00106$
00107$:
;	lib/src/i2c.c:44: return (!u8TimeOut);
	mov	a,r7
	cjne	a,#0x01,00125$
00125$:
	mov  _send_stop_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	lib/src/i2c.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_start'
;------------------------------------------------------------
;	lib/src/i2c.c:46: uint8_t I2C_start(void)
;	-----------------------------------------
;	 function I2C_start
;	-----------------------------------------
_I2C_start:
;	lib/src/i2c.c:49: if (I2STAT != 0xF8) {
	mov	a,#0xf8
	cjne	a,_I2STAT,00126$
	sjmp	00102$
00126$:
;	lib/src/i2c.c:50: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	lib/src/i2c.c:53: STO = 0;
;	assignBit
	clr	_STO
;	lib/src/i2c.c:54: STA = 1;
;	assignBit
	setb	_STA
;	lib/src/i2c.c:55: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:56: while (!SI);
00103$:
	jnb	_SI,00103$
;	lib/src/i2c.c:57: if (I2STAT != 0x08) {
	mov	a,#0x08
	cjne	a,_I2STAT,00128$
	ret
00128$:
;	lib/src/i2c.c:59: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:60: return 0;
	mov	dpl,#0x00
;	lib/src/i2c.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_RepeatedStart'
;------------------------------------------------------------
;	lib/src/i2c.c:63: uint8_t I2C_RepeatedStart(void)
;	-----------------------------------------
;	 function I2C_RepeatedStart
;	-----------------------------------------
_I2C_RepeatedStart:
;	lib/src/i2c.c:65: STO = 0;
;	assignBit
	clr	_STO
;	lib/src/i2c.c:66: STA = 1;
;	assignBit
	setb	_STA
;	lib/src/i2c.c:67: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:68: while (!SI);
00101$:
	jnb	_SI,00101$
;	lib/src/i2c.c:70: if (I2STAT != 0x10) { 
	mov	a,#0x10
	cjne	a,_I2STAT,00121$
	ret
00121$:
;	lib/src/i2c.c:72: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:73: return 0;
	mov	dpl,#0x00
;	lib/src/i2c.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Address'
;------------------------------------------------------------
;WriteRead                 Allocated with name '_I2C_Address_PARM_2'
;Address                   Allocated to registers r7 
;------------------------------------------------------------
;	lib/src/i2c.c:77: uint8_t I2C_Address(uint8_t Address, uint8_t WriteRead){ 
;	-----------------------------------------
;	 function I2C_Address
;	-----------------------------------------
_I2C_Address:
	mov	r7,dpl
;	lib/src/i2c.c:80: STA = 0;
;	assignBit
	clr	_STA
;	lib/src/i2c.c:81: STO = 0;
;	assignBit
	clr	_STO
;	lib/src/i2c.c:82: I2DAT = Address;
	mov	_I2DAT,r7
;	lib/src/i2c.c:83: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:84: while (!SI);
00101$:
	jnb	_SI,00101$
;	lib/src/i2c.c:85: if(WriteRead)	/*Read*/
	mov	a,_I2C_Address_PARM_2
	jz	00109$
;	lib/src/i2c.c:88: if (I2STAT != 0x40) {
	mov	a,#0x40
	cjne	a,_I2STAT,00135$
	sjmp	00105$
00135$:
;	lib/src/i2c.c:90: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:91: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	lib/src/i2c.c:93: return 1;
	mov	dpl,#0x01
	ret
00109$:
;	lib/src/i2c.c:99: if (I2STAT != 0x18) {
	mov	a,#0x18
	cjne	a,_I2STAT,00136$
	sjmp	00107$
00136$:
;	lib/src/i2c.c:101: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:102: return 0;
	mov	dpl,#0x00
	ret
00107$:
;	lib/src/i2c.c:104: return 1;
	mov	dpl,#0x01
;	lib/src/i2c.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Write'
;------------------------------------------------------------
;u8Data                    Allocated to registers 
;------------------------------------------------------------
;	lib/src/i2c.c:107: uint8_t I2C_Write(uint8_t u8Data)
;	-----------------------------------------
;	 function I2C_Write
;	-----------------------------------------
_I2C_Write:
	mov	_I2DAT,dpl
;	lib/src/i2c.c:111: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:112: while (!SI);
00101$:
	jnb	_SI,00101$
;	lib/src/i2c.c:114: if (I2STAT != 0x28) {
	mov	a,#0x28
	cjne	a,_I2STAT,00121$
	ret
00121$:
;	lib/src/i2c.c:116: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:117: return 0;
	mov	dpl,#0x00
;	lib/src/i2c.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Write_nByte'
;------------------------------------------------------------
;length                    Allocated with name '_I2C_Write_nByte_PARM_2'
;pData                     Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	lib/src/i2c.c:120: uint8_t I2C_Write_nByte(uint8_t *pData, uint8_t length)
;	-----------------------------------------
;	 function I2C_Write_nByte
;	-----------------------------------------
_I2C_Write_nByte:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lib/src/i2c.c:124: for (i = 0; i < length; ++i) {
	mov	r4,#0x00
00108$:
	clr	c
	mov	a,r4
	subb	a,_I2C_Write_nByte_PARM_2
	jnc	00110$
;	lib/src/i2c.c:125: I2DAT = pData[i];
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_I2DAT,a
;	lib/src/i2c.c:126: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:127: while (!SI);
00101$:
	jnb	_SI,00101$
;	lib/src/i2c.c:128: if (I2STAT != 0x28) {
	mov	a,#0x28
	cjne	a,_I2STAT,00134$
	sjmp	00109$
00134$:
;	lib/src/i2c.c:130: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:131: return 0;
	mov	dpl,#0x00
	ret
00109$:
;	lib/src/i2c.c:124: for (i = 0; i < length; ++i) {
	inc	r4
	sjmp	00108$
00110$:
;	lib/src/i2c.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Read'
;------------------------------------------------------------
;AckNack                   Allocated to registers r7 
;u8Data                    Allocated to registers 
;------------------------------------------------------------
;	lib/src/i2c.c:136: uint8_t I2C_Read(uint8_t AckNack) 
;	-----------------------------------------
;	 function I2C_Read
;	-----------------------------------------
_I2C_Read:
;	lib/src/i2c.c:139: if(AckNack)
	mov	a,dpl
	mov	r7,a
	jz	00112$
;	lib/src/i2c.c:141: AA = 1;
;	assignBit
	setb	_AA
;	lib/src/i2c.c:142: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:143: while (!SI);
00101$:
	jnb	_SI,00101$
;	lib/src/i2c.c:144: if (I2STAT != 0x50) { /*Master Receive Data ACK*/
	mov	a,#0x50
	cjne	a,_I2STAT,00153$
	sjmp	00105$
00153$:
;	lib/src/i2c.c:146: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:147: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	lib/src/i2c.c:149: u8Data = I2DAT;
	mov	dpl,_I2DAT
;	lib/src/i2c.c:150: return u8Data;
	ret
00112$:
;	lib/src/i2c.c:154: AA = 0;
;	assignBit
	clr	_AA
;	lib/src/i2c.c:155: SI = 0;
;	assignBit
	clr	_SI
;	lib/src/i2c.c:156: while (!SI);
00106$:
	jnb	_SI,00106$
;	lib/src/i2c.c:157: if (I2STAT != 0x58) { /*Master Receive Data NACK*/
	mov	a,#0x58
	cjne	a,_I2STAT,00155$
	sjmp	00110$
00155$:
;	lib/src/i2c.c:159: send_stop();
	lcall	_send_stop
;	lib/src/i2c.c:160: return 0;
	mov	dpl,#0x00
	ret
00110$:
;	lib/src/i2c.c:162: u8Data = I2DAT;
	mov	dpl,_I2DAT
;	lib/src/i2c.c:163: return u8Data;
;	lib/src/i2c.c:165: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
