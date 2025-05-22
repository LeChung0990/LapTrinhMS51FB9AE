;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Sat Apr 26 09:29:46 2025
;--------------------------------------------------------
	.module tm1628
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TM1628_SEND_CONFIG
	.globl _TM1628_SEND_COMMAND
	.globl _SEND_WRITE
	.globl _SEND_START
	.globl _SEND_STOP
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
	.globl _TM1628_display_segments_PARM_3
	.globl _TM1628_display_segments_PARM_2
	.globl _TM1628_INIT_PARM_2
	.globl _TM1628_SEND_CONFIG_PARM_2
	.globl _delay_nop
	.globl _TM1628_INIT
	.globl _TM1628_display_segments
	.globl _TM1628_clear
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
__config:
	.ds 1
__segments:
	.ds 1
_TM1628_SEND_CONFIG_PARM_2:
	.ds 1
_TM1628_INIT_PARM_2:
	.ds 1
_TM1628_display_segments_PARM_2:
	.ds 1
_TM1628_display_segments_PARM_3:
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
;	tm1628.c:5: static uint8_t _config = TM1628_SET_DISPLAY_ON | TM1628_BRIGHTNESS_MAX;
	mov	__config,#0x0F
;	tm1628.c:6: static uint8_t _segments = 0xff;
	mov	__segments,#0xFF
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
;Allocation info for local variables in function 'delay_nop'
;------------------------------------------------------------
;us                        Allocated to registers 
;------------------------------------------------------------
;	tm1628.c:22: void delay_nop(unsigned long int  us) {
;	-----------------------------------------
;	 function delay_nop
;	-----------------------------------------
_delay_nop:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
00103$:
;	tm1628.c:23: for(;us > 0; us--) {
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00105$
;	tm1628.c:26: __endasm; 
	nop;
;	tm1628.c:23: for(;us > 0; us--) {
	dec	r4
	cjne	r4,#0xFF,00117$
	dec	r5
	cjne	r5,#0xFF,00117$
	dec	r6
	cjne	r6,#0xFF,00117$
	dec	r7
00117$:
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SEND_STOP'
;------------------------------------------------------------
;	tm1628.c:31: void SEND_STOP(void)
;	-----------------------------------------
;	 function SEND_STOP
;	-----------------------------------------
_SEND_STOP:
;	tm1628.c:33: STB_1;
	setb	_P00
;	tm1628.c:34: DIO_0; I2C_DELAY;  
	clr	_P11
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_nop
;	tm1628.c:35: CLK_1; I2C_DELAY;
	setb	_P10
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_nop
;	tm1628.c:36: DIO_1; I2C_DELAY;
	setb	_P11
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	ljmp	_delay_nop
;------------------------------------------------------------
;Allocation info for local variables in function 'SEND_START'
;------------------------------------------------------------
;	tm1628.c:38: void SEND_START(void)
;	-----------------------------------------
;	 function SEND_START
;	-----------------------------------------
_SEND_START:
;	tm1628.c:40: CLK_1; I2C_DELAY;
	setb	_P10
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_nop
;	tm1628.c:41: DIO_1; I2C_DELAY;
	setb	_P11
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_nop
;	tm1628.c:42: STB_0;
	clr	_P00
;	tm1628.c:43: DIO_0; I2C_DELAY;
	clr	_P11
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_nop
;	tm1628.c:44: CLK_0; I2C_DELAY;
	clr	_P10
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	ljmp	_delay_nop
;------------------------------------------------------------
;Allocation info for local variables in function 'SEND_WRITE'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	tm1628.c:46: void SEND_WRITE(uint8_t data)
;	-----------------------------------------
;	 function SEND_WRITE
;	-----------------------------------------
_SEND_WRITE:
	mov	r7,dpl
;	tm1628.c:49: for (i = 0; i < 8; ++i)
	mov	r6,#0x00
00105$:
;	tm1628.c:51: if (data & 0x01) {DIO_1;}
	mov	a,r7
	jnb	acc.0,00102$
	setb	_P11
	sjmp	00103$
00102$:
;	tm1628.c:52: else {DIO_0;}
	clr	_P11
00103$:
;	tm1628.c:53: I2C_DELAY;	
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_delay_nop
;	tm1628.c:54: CLK_1;
	setb	_P10
;	tm1628.c:55: I2C_DELAY;
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_nop
	pop	ar6
	pop	ar7
;	tm1628.c:56: CLK_0;
	clr	_P10
;	tm1628.c:57: data >>= 1;	//1.37u
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	tm1628.c:49: for (i = 0; i < 8; ++i)
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TM1628_SEND_COMMAND'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	tm1628.c:61: void TM1628_SEND_COMMAND(const unsigned char value)
;	-----------------------------------------
;	 function TM1628_SEND_COMMAND
;	-----------------------------------------
_TM1628_SEND_COMMAND:
	mov	r7,dpl
;	tm1628.c:63: SEND_START();
	push	ar7
	lcall	_SEND_START
	pop	ar7
;	tm1628.c:64: SEND_WRITE(value);
	mov	dpl,r7
	lcall	_SEND_WRITE
;	tm1628.c:65: SEND_STOP();
	lcall	_SEND_STOP
;	tm1628.c:66: I2C_DELAY;
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	ljmp	_delay_nop
;------------------------------------------------------------
;Allocation info for local variables in function 'TM1628_SEND_CONFIG'
;------------------------------------------------------------
;brightness                Allocated with name '_TM1628_SEND_CONFIG_PARM_2'
;enable                    Allocated to registers r7 
;------------------------------------------------------------
;	tm1628.c:68: void TM1628_SEND_CONFIG(const unsigned char enable, const unsigned char brightness)
;	-----------------------------------------
;	 function TM1628_SEND_CONFIG
;	-----------------------------------------
_TM1628_SEND_CONFIG:
	mov	r7,dpl
;	tm1628.c:70: TM1628_SEND_COMMAND(TM1628_CMD_MODE_DIS_2);
	mov	dpl,#0x03
	push	ar7
	lcall	_TM1628_SEND_COMMAND
	pop	ar7
;	tm1628.c:71: _config = (enable ? TM1628_SET_DISPLAY_ON : TM1628_SET_DISPLAY_OFF) |
	mov	a,r7
	jz	00103$
	mov	r7,#0x08
	sjmp	00104$
00103$:
	mov	r7,#0x00
00104$:
;	tm1628.c:72: (brightness > TM1628_BRIGHTNESS_MAX ? TM1628_BRIGHTNESS_MAX : brightness);
	mov	a,_TM1628_SEND_CONFIG_PARM_2
	add	a,#0xff - 0x07
	jnc	00105$
	mov	r6,#0x07
	sjmp	00106$
00105$:
	mov	r6,_TM1628_SEND_CONFIG_PARM_2
00106$:
	mov	a,r6
	orl	a,r7
	mov	__config,a
;	tm1628.c:74: TM1628_SEND_COMMAND(TM1628_CMD_SET_DSIPLAY | _config);
	mov	a,#0x80
	orl	a,__config
	mov	dpl,a
	ljmp	_TM1628_SEND_COMMAND
;------------------------------------------------------------
;Allocation info for local variables in function 'TM1628_INIT'
;------------------------------------------------------------
;brightness                Allocated with name '_TM1628_INIT_PARM_2'
;enable                    Allocated to registers 
;------------------------------------------------------------
;	tm1628.c:77: void TM1628_INIT(unsigned char enable, const unsigned char brightness)
;	-----------------------------------------
;	 function TM1628_INIT
;	-----------------------------------------
_TM1628_INIT:
;	tm1628.c:80: P11_PUSHPULL_MODE;
	anl	_P1M1,#0xFD
	orl	_P1M2,#0x02
;	tm1628.c:82: P10_PUSHPULL_MODE;
	anl	_P1M1,#0xFE
	orl	_P1M2,#0x01
;	tm1628.c:83: P00_PUSHPULL_MODE;
	anl	_P0M1,#0xFE
	orl	_P0M2,#0x01
;	tm1628.c:85: PIN_CLK = 1;
	setb	_P10
;	tm1628.c:86: PIN_DIO = 1;	
	setb	_P11
;	tm1628.c:87: PIN_STB = 1;
	setb	_P00
;	tm1628.c:90: TM1628_SEND_CONFIG(enable, brightness);
	mov	_TM1628_SEND_CONFIG_PARM_2,_TM1628_INIT_PARM_2
	ljmp	_TM1628_SEND_CONFIG
;------------------------------------------------------------
;Allocation info for local variables in function 'TM1628_display_segments'
;------------------------------------------------------------
;digit                     Allocated with name '_TM1628_display_segments_PARM_2'
;dot                       Allocated with name '_TM1628_display_segments_PARM_3'
;position                  Allocated to registers r7 
;segments                  Allocated to registers r6 
;------------------------------------------------------------
;	tm1628.c:92: void TM1628_display_segments(const unsigned char position, const unsigned char digit, unsigned char dot)
;	-----------------------------------------
;	 function TM1628_display_segments
;	-----------------------------------------
_TM1628_display_segments:
	mov	r7,dpl
;	tm1628.c:95: if (digit < 10)
	mov	a,#0x100 - 0x0A
	add	a,_TM1628_display_segments_PARM_2
	jc	00102$
;	tm1628.c:97: segments = _digit2segments[digit];
	mov	a,_TM1628_display_segments_PARM_2
	mov	dptr,#__digit2segments
	movc	a,@a+dptr
	mov	r6,a
	sjmp	00103$
00102$:
;	tm1628.c:100: segments = 0x00;	
	mov	r6,#0x00
00103$:
;	tm1628.c:102: if ( (dot == 1 & (position == 2 )) | (dot == 2 & (position == 0 )) ) {
	mov	a,#0x01
	cjne	a,_TM1628_display_segments_PARM_3,00115$
	mov	a,#0x01
	sjmp	00116$
00115$:
	clr	a
00116$:
	mov	r5,a
	clr	a
	cjne	r7,#0x02,00117$
	inc	a
00117$:
	anl	ar5,a
	mov	a,#0x02
	cjne	a,_TM1628_display_segments_PARM_3,00119$
	mov	a,#0x01
	sjmp	00120$
00119$:
	clr	a
00120$:
	mov	r4,a
	mov	a,r7
	cjne	a,#0x01,00121$
00121$:
	clr	a
	rlc	a
	mov	r3,a
	anl	a,r4
	orl	a,r5
	jz	00105$
;	tm1628.c:103: segments = segments | 0x80;
	orl	ar6,#0x80
00105$:
;	tm1628.c:105: TM1628_SEND_COMMAND(TM1628_CMD_SET_DATA | TM1628_SET_DATA_F_ADDR);
	mov	dpl,#0x44
	push	ar7
	push	ar6
	lcall	_TM1628_SEND_COMMAND
;	tm1628.c:106: SEND_START();
	lcall	_SEND_START
	pop	ar6
	pop	ar7
;	tm1628.c:107: SEND_WRITE(TM1628_CMD_SET_ADDR | position );
	mov	a,#0xC0
	orl	a,r7
	mov	dpl,a
	push	ar6
	lcall	_SEND_WRITE
	pop	ar6
;	tm1628.c:108: SEND_WRITE(segments);
	mov	dpl,r6
	lcall	_SEND_WRITE
;	tm1628.c:109: SEND_STOP();
	lcall	_SEND_STOP
;	tm1628.c:110: I2C_DELAY;
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	ljmp	_delay_nop
;------------------------------------------------------------
;Allocation info for local variables in function 'TM1628_clear'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	tm1628.c:112: void TM1628_clear(void)
;	-----------------------------------------
;	 function TM1628_clear
;	-----------------------------------------
_TM1628_clear:
;	tm1628.c:116: for (i = 0; i < TM1628_POSITION_MAX; ++i) {
	mov	r7,#0x00
00102$:
;	tm1628.c:117: TM1628_display_segments(i, 0x00, 0);
	mov	_TM1628_display_segments_PARM_2,#0x00
	mov	_TM1628_display_segments_PARM_3,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_TM1628_display_segments
	pop	ar7
;	tm1628.c:116: for (i = 0; i < TM1628_POSITION_MAX; ++i) {
	inc	r7
	cjne	r7,#0x04,00110$
00110$:
	jc	00102$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__digit2segments:
	.db #0x3F	; 63
	.db #0x06	; 6
	.db #0x5B	; 91
	.db #0x4F	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6D	; 109	'm'
	.db #0x7D	; 125
	.db #0x07	; 7
	.db #0x7F	; 127
	.db #0x6F	; 111	'o'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
