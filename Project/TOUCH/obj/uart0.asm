;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module uart0
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
	.globl _UART0_Init
	.globl _UART0_SendData
	.globl _UART0_GetData
	.globl _UART0_EnableInterrupt
	.globl _UART0_DisableInterrupt
	.globl _UART0_ClearFlag
	.globl _UART0_GetFlag
	.globl _UART0_STRING
	.globl _UART0_NUMBER
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
_UART0_NUMBER_digit_65536_31:
	.ds 5
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'UART0_Init'
;------------------------------------------------------------
;	lib/src/uart0.c:5: void UART0_Init(void)
;	-----------------------------------------
;	 function UART0_Init
;	-----------------------------------------
_UART0_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lib/src/uart0.c:8: T3CON |= (1 << 5);
	orl	_T3CON,#0x20
;	lib/src/uart0.c:10: T3CON &= 0xF8;
	anl	_T3CON,#0xf8
;	lib/src/uart0.c:13: EIE1 &= ~(1 << 1);
	anl	_EIE1,#0xfd
;	lib/src/uart0.c:15: RH3 = 0xff;
	mov	_RH3,#0xff
;	lib/src/uart0.c:16: RL3 = 0xe6;
	mov	_RL3,#0xe6
;	lib/src/uart0.c:18: T3CON |= (1 << 3);
	orl	_T3CON,#0x08
;	lib/src/uart0.c:20: PCON &= ~(1 << 7);
	anl	_PCON,#0x7f
;	lib/src/uart0.c:22: P06 = 1;
;	assignBit
	setb	_P06
;	lib/src/uart0.c:23: P0M1 &= ~(1 << 6);
	anl	_P0M1,#0xbf
;	lib/src/uart0.c:24: P0M2 |= (1 << 6);
	orl	_P0M2,#0x40
;	lib/src/uart0.c:25: P07 = 1;
;	assignBit
	setb	_P07
;	lib/src/uart0.c:26: P0M1 &= ~(1 << 7);
	anl	_P0M1,#0x7f
;	lib/src/uart0.c:27: P0M2 &= ~(1 << 7);
	anl	_P0M2,#0x7f
;	lib/src/uart0.c:29: PCON &= ~(1 << 6);
	anl	_PCON,#0xbf
;	lib/src/uart0.c:30: SM0 = 0;
;	assignBit
	clr	_SM0
;	lib/src/uart0.c:31: SM1 = 1;
;	assignBit
	setb	_SM1
;	lib/src/uart0.c:33: REN = 1;
;	assignBit
	setb	_REN
;	lib/src/uart0.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_SendData'
;------------------------------------------------------------
;u8Data                    Allocated to registers 
;------------------------------------------------------------
;	lib/src/uart0.c:36: void UART0_SendData(uint8_t u8Data)
;	-----------------------------------------
;	 function UART0_SendData
;	-----------------------------------------
_UART0_SendData:
	mov	_SBUF,dpl
;	lib/src/uart0.c:38: SBUF = u8Data;
;	lib/src/uart0.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_GetData'
;------------------------------------------------------------
;	lib/src/uart0.c:41: uint8_t UART0_GetData(void)
;	-----------------------------------------
;	 function UART0_GetData
;	-----------------------------------------
_UART0_GetData:
;	lib/src/uart0.c:43: return SBUF;
	mov	dpl,_SBUF
;	lib/src/uart0.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_EnableInterrupt'
;------------------------------------------------------------
;	lib/src/uart0.c:46: void UART0_EnableInterrupt(void)
;	-----------------------------------------
;	 function UART0_EnableInterrupt
;	-----------------------------------------
_UART0_EnableInterrupt:
;	lib/src/uart0.c:48: ES = 1;
;	assignBit
	setb	_ES
;	lib/src/uart0.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_DisableInterrupt'
;------------------------------------------------------------
;	lib/src/uart0.c:51: void UART0_DisableInterrupt(void)
;	-----------------------------------------
;	 function UART0_DisableInterrupt
;	-----------------------------------------
_UART0_DisableInterrupt:
;	lib/src/uart0.c:53: ES = 0;
;	assignBit
	clr	_ES
;	lib/src/uart0.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_ClearFlag'
;------------------------------------------------------------
;u8Flag                    Allocated to registers r7 
;------------------------------------------------------------
;	lib/src/uart0.c:56: void UART0_ClearFlag(uint8_t u8Flag)
;	-----------------------------------------
;	 function UART0_ClearFlag
;	-----------------------------------------
_UART0_ClearFlag:
;	lib/src/uart0.c:58: SCON &= ~(u8Flag);
	mov	a,dpl
	cpl	a
	anl	_SCON,a
;	lib/src/uart0.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_GetFlag'
;------------------------------------------------------------
;u8Flag                    Allocated to registers r7 
;------------------------------------------------------------
;	lib/src/uart0.c:61: uint8_t UART0_GetFlag(uint8_t u8Flag)
;	-----------------------------------------
;	 function UART0_GetFlag
;	-----------------------------------------
_UART0_GetFlag:
;	lib/src/uart0.c:63: if (SCON & (u8Flag)) {
	mov	a,dpl
	anl	a,_SCON
	jz	00102$
;	lib/src/uart0.c:64: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	lib/src/uart0.c:66: return 0;
	mov	dpl,#0x00
;	lib/src/uart0.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_STRING'
;------------------------------------------------------------
;cy                        Allocated to registers 
;------------------------------------------------------------
;	lib/src/uart0.c:69: void UART0_STRING(const char *cy)
;	-----------------------------------------
;	 function UART0_STRING
;	-----------------------------------------
_UART0_STRING:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lib/src/uart0.c:71: while(*cy)
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00107$
;	lib/src/uart0.c:73: SBUF = (*cy);
	mov	_SBUF,r4
;	lib/src/uart0.c:74: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
00101$:
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	lcall	_UART0_GetFlag
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00101$
;	lib/src/uart0.c:75: UART0_ClearFlag(UART0_TX_FLAG);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	lcall	_UART0_ClearFlag
	pop	ar5
	pop	ar6
	pop	ar7
;	lib/src/uart0.c:76: cy++;
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00107$:
;	lib/src/uart0.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_NUMBER'
;------------------------------------------------------------
;number                    Allocated to registers r6 r7 
;count                     Allocated to registers r5 
;digit                     Allocated with name '_UART0_NUMBER_digit_65536_31'
;------------------------------------------------------------
;	lib/src/uart0.c:79: void UART0_NUMBER(int number)
;	-----------------------------------------
;	 function UART0_NUMBER
;	-----------------------------------------
_UART0_NUMBER:
	mov	r6,dpl
	mov	r7,dph
;	lib/src/uart0.c:81: char count = 0;
	mov	r5,#0x00
;	lib/src/uart0.c:82: char digit[5] = "";
	mov	_UART0_NUMBER_digit_65536_31,r5
	mov	(_UART0_NUMBER_digit_65536_31 + 0x0001),r5
	mov	(_UART0_NUMBER_digit_65536_31 + 0x0002),r5
	mov	(_UART0_NUMBER_digit_65536_31 + 0x0003),r5
	mov	(_UART0_NUMBER_digit_65536_31 + 0x0004),r5
;	lib/src/uart0.c:83: if (number == 0)
	mov	a,r6
	orl	a,r7
;	lib/src/uart0.c:85: digit[0] = 0;
	jnz	00116$
	mov	_UART0_NUMBER_digit_65536_31,a
;	lib/src/uart0.c:86: count = 1;
	mov	r5,#0x01
;	lib/src/uart0.c:88: while(number != 0)
00116$:
00103$:
	mov	a,r6
	orl	a,r7
	jz	00120$
;	lib/src/uart0.c:90: digit[count] = number%10;   //lay chu so ngoai cung xxxx8;
	mov	a,r5
	add	a,#_UART0_NUMBER_digit_65536_31
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	__modsint
	mov	r3,dpl
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	@r1,ar3
;	lib/src/uart0.c:91: ++count;
	inc	r5
;	lib/src/uart0.c:92: number = number/10;         //chia so number cho 10 de bo so ngoai cung xxxx
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
;	lib/src/uart0.c:94: while (count!=0)
	sjmp	00103$
00120$:
	mov	ar7,r5
00109$:
	mov	a,r7
	jz	00112$
;	lib/src/uart0.c:96: SBUF = (digit[count - 1] + 0x30); // 0x30 = 48 ;
	mov	ar6,r7
	mov	a,r6
	dec	a
	add	a,#_UART0_NUMBER_digit_65536_31
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x30
	add	a,r6
	mov	_SBUF,a
;	lib/src/uart0.c:97: while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
00106$:
	mov	dpl,#0x02
	push	ar7
	lcall	_UART0_GetFlag
	mov	a,dpl
	pop	ar7
	jz	00106$
;	lib/src/uart0.c:98: UART0_ClearFlag(UART0_TX_FLAG);
	mov	dpl,#0x02
	push	ar7
	lcall	_UART0_ClearFlag
	pop	ar7
;	lib/src/uart0.c:99: --count;
	dec	r7
	sjmp	00109$
00112$:
;	lib/src/uart0.c:101: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
