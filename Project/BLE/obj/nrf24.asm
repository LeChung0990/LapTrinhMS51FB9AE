;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Thu Apr  3 10:29:26 2025
;--------------------------------------------------------
	.module nrf24
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _btLeWhiten_PARM_3
	.globl _btLeWhiten_PARM_2
	.globl _btLeCrc_PARM_3
	.globl _btLeCrc_PARM_2
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
	.globl _btLePacketEncode_PARM_3
	.globl _btLePacketEncode_PARM_2
	.globl _nrf_wbuf_PARM_3
	.globl _nrf_wbuf_PARM_2
	.globl _nrf_manybytes_PARM_2
	.globl _nrf_cmd_PARM_2
	.globl _spi_byte
	.globl _nrf_cmd
	.globl _nrf_simplebyte
	.globl _nrf_manybytes
	.globl _nrf_wbuf
	.globl _btLeCrc
	.globl _swapbits
	.globl _btLeWhiten
	.globl _btLePacketEncode
	.globl _ble_init
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
_nrf_cmd_PARM_2:
	.ds 1
_nrf_manybytes_PARM_2:
	.ds 1
_nrf_wbuf_PARM_2:
	.ds 3
_nrf_wbuf_PARM_3:
	.ds 1
_btLePacketEncode_PARM_2:
	.ds 1
_btLePacketEncode_PARM_3:
	.ds 1
_btLePacketEncode_i_1_42:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_btLeCrc_PARM_2:
	.ds 1
_btLeCrc_PARM_3:
	.ds 3
_btLeCrc_sloc0_1_0:
	.ds 3
_btLeCrc_sloc1_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_btLeWhiten_PARM_2:
	.ds 1
_btLeWhiten_PARM_3:
	.ds 1
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
;Allocation info for local variables in function 'spi_byte'
;------------------------------------------------------------
;byte                      Allocated to registers 
;buffer                    Allocated to registers r7 
;counter                   Allocated to registers r6 
;------------------------------------------------------------
;	nrf24.c:3: uint8_t spi_byte(uint8_t byte) {
;	-----------------------------------------
;	 function spi_byte
;	-----------------------------------------
_spi_byte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	nrf24.c:7: for(counter = 8; counter; counter--)
	mov	r6,#0x08
00105$:
;	nrf24.c:9: if (buffer & 0x80)   MOSI=1;
	mov	a,r7
	jnb	acc.7,00102$
	setb	_P00
	sjmp	00103$
00102$:
;	nrf24.c:10: else  MOSI=0;
	clr	_P00
00103$:
;	nrf24.c:11: buffer <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	nrf24.c:12: SCK=1;
	setb	_P10
;	nrf24.c:13: DelayT0(3, CONFIG_1US);
	mov	_DelayT0_PARM_2,#0x01
	mov	(_DelayT0_PARM_2 + 1),#0x00
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	_DelayT0
	pop	ar6
	pop	ar7
;	nrf24.c:14: buffer &= 0xfe;                //Clear 0th bit
	anl	ar7,#0xFE
;	nrf24.c:15: buffer|=MISO;
	mov	ar5,r7
	mov	c,_P01
	clr	a
	rlc	a
	mov	r4,a
	orl	a,r5
	mov	r7,a
;	nrf24.c:16: SCK=0;  
	clr	_P10
;	nrf24.c:7: for(counter = 8; counter; counter--)
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00105$
;	nrf24.c:18: return buffer;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf_cmd'
;------------------------------------------------------------
;data                      Allocated with name '_nrf_cmd_PARM_2'
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	nrf24.c:20: void nrf_cmd(uint8_t cmd, uint8_t data) {
;	-----------------------------------------
;	 function nrf_cmd
;	-----------------------------------------
_nrf_cmd:
;	nrf24.c:22: CSN_PIN = 0; 
	clr	_P11
;	nrf24.c:23: spi_byte(cmd);
	lcall	_spi_byte
;	nrf24.c:24: spi_byte(data);
	mov	dpl,_nrf_cmd_PARM_2
	lcall	_spi_byte
;	nrf24.c:25: CSN_PIN = 1; 
	setb	_P11
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf_simplebyte'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	nrf24.c:28: void nrf_simplebyte(uint8_t cmd) {
;	-----------------------------------------
;	 function nrf_simplebyte
;	-----------------------------------------
_nrf_simplebyte:
;	nrf24.c:30: CSN_PIN = 0; 
	clr	_P11
;	nrf24.c:31: spi_byte(cmd);
	lcall	_spi_byte
;	nrf24.c:32: CSN_PIN = 1; 
	setb	_P11
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf_manybytes'
;------------------------------------------------------------
;len                       Allocated with name '_nrf_manybytes_PARM_2'
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	nrf24.c:35: void nrf_manybytes(uint8_t* data, uint8_t len) {
;	-----------------------------------------
;	 function nrf_manybytes
;	-----------------------------------------
_nrf_manybytes:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	nrf24.c:37: CSN_PIN = 0; 
	clr	_P11
;	nrf24.c:38: do {
	mov	r4,_nrf_manybytes_PARM_2
00101$:
;	nrf24.c:39: spi_byte(*data++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_byte
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24.c:40: } while (--len);
	djnz	r4,00101$
;	nrf24.c:41: CSN_PIN = 1; 
	setb	_P11
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf_wbuf'
;------------------------------------------------------------
;buff                      Allocated with name '_nrf_wbuf_PARM_2'
;len                       Allocated with name '_nrf_wbuf_PARM_3'
;reg                       Allocated to registers 
;sp                        Allocated to registers r7 
;------------------------------------------------------------
;	nrf24.c:44: void nrf_wbuf(uint8_t reg,uint8_t* buff ,uint8_t len)
;	-----------------------------------------
;	 function nrf_wbuf
;	-----------------------------------------
_nrf_wbuf:
;	nrf24.c:47: CSN_PIN = 0; 
	clr	_P11
;	nrf24.c:48: spi_byte(reg);
	lcall	_spi_byte
;	nrf24.c:49: for(sp=0;sp<len;sp++)
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r7
	subb	a,_nrf_wbuf_PARM_3
	jnc	00101$
;	nrf24.c:51: spi_byte(buff[sp]);
	mov	a,r7
	add	a,_nrf_wbuf_PARM_2
	mov	r4,a
	clr	a
	addc	a,(_nrf_wbuf_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_nrf_wbuf_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_spi_byte
	pop	ar7
;	nrf24.c:49: for(sp=0;sp<len;sp++)
	inc	r7
	sjmp	00103$
00101$:
;	nrf24.c:53: CSN_PIN = 1; 
	setb	_P11
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btLeCrc'
;------------------------------------------------------------
;len                       Allocated with name '_btLeCrc_PARM_2'
;dst                       Allocated with name '_btLeCrc_PARM_3'
;data                      Allocated to registers 
;v                         Allocated to registers r2 
;t                         Allocated to registers r0 
;d                         Allocated to registers r3 
;sloc0                     Allocated with name '_btLeCrc_sloc0_1_0'
;sloc1                     Allocated with name '_btLeCrc_sloc1_1_0'
;------------------------------------------------------------
;	nrf24.c:57: void btLeCrc(const uint8_t* data, uint8_t len, uint8_t* dst) {
;	-----------------------------------------
;	 function btLeCrc
;	-----------------------------------------
_btLeCrc:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	nrf24.c:61: while (len--) {
	mov	r4,_btLeCrc_PARM_2
00108$:
	mov	ar3,r4
	dec	r4
	mov	a,r3
	jnz	00138$
	ret
00138$:
;	nrf24.c:62: d = *data++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	nrf24.c:63: for (v = 0; v < 8; v++, d >>= 1) {
	mov	r2,#0x00
00111$:
;	nrf24.c:64: t = dst[0] >> 7;
	mov	_btLeCrc_sloc0_1_0,_btLeCrc_PARM_3
	mov	(_btLeCrc_sloc0_1_0 + 1),(_btLeCrc_PARM_3 + 1)
	mov	(_btLeCrc_sloc0_1_0 + 2),(_btLeCrc_PARM_3 + 2)
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	rl	a
	anl	a,#0x01
	mov	r0,a
;	nrf24.c:65: dst[0] <<= 1;
	mov	a,r1
	add	a,r1
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrput
;	nrf24.c:66: if (dst[1] & 0x80) dst[0] |= 1;
	mov	a,#0x01
	add	a,_btLeCrc_sloc0_1_0
	mov	_btLeCrc_sloc1_1_0,a
	clr	a
	addc	a,(_btLeCrc_sloc0_1_0 + 1)
	mov	(_btLeCrc_sloc1_1_0 + 1),a
	mov	(_btLeCrc_sloc1_1_0 + 2),(_btLeCrc_sloc0_1_0 + 2)
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	jnb	acc.7,00102$
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	orl	ar1,#0x01
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
00102$:
;	nrf24.c:67: dst[1] <<= 1;
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	lcall	__gptrget
	add	a,acc
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	lcall	__gptrput
;	nrf24.c:68: if (dst[2] & 0x80) dst[1] |= 1;
	mov	a,#0x02
	add	a,_btLeCrc_sloc0_1_0
	mov	_btLeCrc_sloc0_1_0,a
	clr	a
	addc	a,(_btLeCrc_sloc0_1_0 + 1)
	mov	(_btLeCrc_sloc0_1_0 + 1),a
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	jnb	acc.7,00104$
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	orl	ar1,#0x01
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
00104$:
;	nrf24.c:69: dst[2] <<= 1;
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrget
	add	a,acc
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrput
;	nrf24.c:71: if (t != (d & 1)) {
	mov	a,#0x01
	anl	a,r3
	mov	r1,a
	mov	a,r0
	cjne	a,ar1,00141$
	sjmp	00112$
00141$:
;	nrf24.c:72: dst[2] ^= 0x5B;
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	xrl	ar1,#0x5B
	mov	dpl,_btLeCrc_sloc0_1_0
	mov	dph,(_btLeCrc_sloc0_1_0 + 1)
	mov	b,(_btLeCrc_sloc0_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	nrf24.c:73: dst[1] ^= 0x06;
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	xrl	ar1,#0x06
	mov	dpl,_btLeCrc_sloc1_1_0
	mov	dph,(_btLeCrc_sloc1_1_0 + 1)
	mov	b,(_btLeCrc_sloc1_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
00112$:
;	nrf24.c:63: for (v = 0; v < 8; v++, d >>= 1) {
	inc	r2
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
	cjne	r2,#0x08,00142$
00142$:
	jnc	00143$
	ljmp	00111$
00143$:
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'swapbits'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;v                         Allocated to registers r6 
;------------------------------------------------------------
;	nrf24.c:79: uint8_t  swapbits(uint8_t a) {
;	-----------------------------------------
;	 function swapbits
;	-----------------------------------------
_swapbits:
	mov	r7,dpl
;	nrf24.c:81: uint8_t v = 0;
	mov	r6,#0x00
;	nrf24.c:82: if (a & 0x80) v |= 0x01;
	mov	a,r7
	jnb	acc.7,00102$
	mov	r6,#0x01
00102$:
;	nrf24.c:83: if (a & 0x40) v |= 0x02;
	mov	a,r7
	jnb	acc.6,00104$
	orl	ar6,#0x02
00104$:
;	nrf24.c:84: if (a & 0x20) v |= 0x04;
	mov	a,r7
	jnb	acc.5,00106$
	orl	ar6,#0x04
00106$:
;	nrf24.c:85: if (a & 0x10) v |= 0x08;
	mov	a,r7
	jnb	acc.4,00108$
	orl	ar6,#0x08
00108$:
;	nrf24.c:86: if (a & 0x08) v |= 0x10;
	mov	a,r7
	jnb	acc.3,00110$
	orl	ar6,#0x10
00110$:
;	nrf24.c:87: if (a & 0x04) v |= 0x20;
	mov	a,r7
	jnb	acc.2,00112$
	orl	ar6,#0x20
00112$:
;	nrf24.c:88: if (a & 0x02) v |= 0x40;
	mov	a,r7
	jnb	acc.1,00114$
	orl	ar6,#0x40
00114$:
;	nrf24.c:89: if (a & 0x01) v |= 0x80;
	mov	a,r7
	jnb	acc.0,00116$
	orl	ar6,#0x80
00116$:
;	nrf24.c:90: return v;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btLeWhiten'
;------------------------------------------------------------
;len                       Allocated with name '_btLeWhiten_PARM_2'
;whitenCoeff               Allocated with name '_btLeWhiten_PARM_3'
;data                      Allocated to registers 
;m                         Allocated to registers r3 
;------------------------------------------------------------
;	nrf24.c:93: void btLeWhiten(uint8_t* data, uint8_t len, uint8_t whitenCoeff) {
;	-----------------------------------------
;	 function btLeWhiten
;	-----------------------------------------
_btLeWhiten:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	nrf24.c:96: while (len--) {
	mov	r4,_btLeWhiten_PARM_2
00104$:
	mov	ar3,r4
	dec	r4
	mov	a,r3
	jz	00109$
;	nrf24.c:97: for (m = 1; m; m <<= 1) {
	mov	r3,#0x01
00107$:
;	nrf24.c:98: if (whitenCoeff & 0x80) {
	mov	a,_btLeWhiten_PARM_3
	jnb	acc.7,00102$
;	nrf24.c:99: whitenCoeff ^= 0x11;
	xrl	_btLeWhiten_PARM_3,#0x11
;	nrf24.c:100: (*data) ^= m;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,r3
	xrl	ar2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
00102$:
;	nrf24.c:102: whitenCoeff <<= 1;
	mov	a,_btLeWhiten_PARM_3
	add	a,_btLeWhiten_PARM_3
	mov	_btLeWhiten_PARM_3,a
;	nrf24.c:97: for (m = 1; m; m <<= 1) {
	mov	a,r3
	add	a,r3
	mov	r3,a
	jnz	00107$
;	nrf24.c:104: data++;
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btLeWhitenStart'
;------------------------------------------------------------
;chan                      Allocated to registers 
;------------------------------------------------------------
;	nrf24.c:108: static inline uint8_t btLeWhitenStart(uint8_t chan) {
;	-----------------------------------------
;	 function btLeWhitenStart
;	-----------------------------------------
_btLeWhitenStart:
;	nrf24.c:110: return swapbits(chan) | 2;
	lcall	_swapbits
	mov	a,dpl
	orl	a,#0x02
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btLePacketEncode'
;------------------------------------------------------------
;len                       Allocated with name '_btLePacketEncode_PARM_2'
;chan                      Allocated with name '_btLePacketEncode_PARM_3'
;packet                    Allocated to registers r5 r6 r7 
;__00010001                Allocated to registers r4 r3 
;i                         Allocated with name '_btLePacketEncode_i_1_42'
;dataLen                   Allocated to registers r4 
;__00020002                Allocated to registers 
;chan                      Allocated to registers 
;------------------------------------------------------------
;	nrf24.c:114: void btLePacketEncode(uint8_t* packet, uint8_t len, uint8_t chan) {
;	-----------------------------------------
;	 function btLePacketEncode
;	-----------------------------------------
_btLePacketEncode:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	nrf24.c:117: uint8_t i, dataLen = len - 3;
	mov	a,_btLePacketEncode_PARM_2
	add	a,#0xFD
;	nrf24.c:118: btLeCrc(packet, dataLen, packet + dataLen);
	mov	r4,a
	add	a,r5
	mov	_btLeCrc_PARM_3,a
	clr	a
	addc	a,r6
	mov	(_btLeCrc_PARM_3 + 1),a
	mov	(_btLeCrc_PARM_3 + 2),r7
	mov	_btLeCrc_PARM_2,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_btLeCrc
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24.c:119: for (i = 0; i < 3; i++, dataLen++)
	mov	_btLePacketEncode_i_1_42,#0x00
00104$:
;	nrf24.c:120: packet[dataLen] = swapbits(packet[dataLen]);
	mov	a,r4
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	lcall	_swapbits
	mov	r3,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__gptrput
;	nrf24.c:119: for (i = 0; i < 3; i++, dataLen++)
	inc	_btLePacketEncode_i_1_42
	inc	r4
	mov	a,#0x100 - 0x03
	add	a,_btLePacketEncode_i_1_42
	jnc	00104$
;	nrf24.c:121: btLeWhiten(packet, len, btLeWhitenStart(chan));
	mov	dpl,_btLePacketEncode_PARM_3
;	nrf24.c:110: return swapbits(chan) | 2;
	push	ar7
	push	ar6
	push	ar5
	lcall	_swapbits
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,#0x02
	mov	r4,a
;	nrf24.c:121: btLeWhiten(packet, len, btLeWhitenStart(chan));
	mov	_btLeWhiten_PARM_2,_btLePacketEncode_PARM_2
	mov	_btLeWhiten_PARM_3,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_btLeWhiten
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24.c:122: for (i = 0; i < len; i++)
	mov	r4,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,_btLePacketEncode_PARM_2
	jnc	00109$
;	nrf24.c:123: packet[i] = swapbits(packet[i]); // the byte order of the packet should be reversed as well
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
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_swapbits
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	nrf24.c:122: for (i = 0; i < len; i++)
	inc	r4
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ble_init'
;------------------------------------------------------------
;	nrf24.c:126: void ble_init(void){
;	-----------------------------------------
;	 function ble_init
;	-----------------------------------------
_ble_init:
;	nrf24.c:128: nrf_cmd(W_REGISTER|CONFIG, 0x12);  //on, no crc, int on RX/TX done
	mov	_nrf_cmd_PARM_2,#0x12
	mov	dpl,#0x20
	lcall	_nrf_cmd
;	nrf24.c:129: nrf_cmd(W_REGISTER|EN_AA, 0x00);  //no auto-acknowledge
	mov	_nrf_cmd_PARM_2,#0x00
	mov	dpl,#0x21
	lcall	_nrf_cmd
;	nrf24.c:130: nrf_cmd(W_REGISTER|EN_RXADDR, 0x00);  //no RX
	mov	_nrf_cmd_PARM_2,#0x00
	mov	dpl,#0x22
	lcall	_nrf_cmd
;	nrf24.c:131: nrf_cmd(W_REGISTER|SETUP_AW, 0x02);  //4-byte address
	mov	_nrf_cmd_PARM_2,#0x02
	mov	dpl,#0x23
	lcall	_nrf_cmd
;	nrf24.c:132: nrf_cmd(W_REGISTER|SETUP_RETR, 0x00);  //no auto-retransmit
	mov	_nrf_cmd_PARM_2,#0x00
	mov	dpl,#0x24
	lcall	_nrf_cmd
;	nrf24.c:133: nrf_cmd(W_REGISTER|RF_SETUP, 0x06);  //1MBps at 0dBm
	mov	_nrf_cmd_PARM_2,#0x06
	mov	dpl,#0x26
	lcall	_nrf_cmd
;	nrf24.c:135: nrf_cmd(W_REGISTER|STATUS, 0x3E);  //clear various flags
	mov	_nrf_cmd_PARM_2,#0x3E
	mov	dpl,#0x27
	lcall	_nrf_cmd
;	nrf24.c:136: nrf_cmd(W_REGISTER|DYNPD, 0x00);  //no dynamic payloads
	mov	_nrf_cmd_PARM_2,#0x00
	mov	dpl,#0x3C
	lcall	_nrf_cmd
;	nrf24.c:137: nrf_cmd(W_REGISTER|FEATURE, 0x00);  //no features
	mov	_nrf_cmd_PARM_2,#0x00
	mov	dpl,#0x3D
	lcall	_nrf_cmd
;	nrf24.c:138: nrf_cmd(W_REGISTER|RX_PW_P0, 32);    //always RX 32 bytes
	mov	_nrf_cmd_PARM_2,#0x20
	mov	dpl,#0x31
	lcall	_nrf_cmd
;	nrf24.c:139: nrf_cmd(W_REGISTER|EN_RXADDR, 0x01);  //RX on pipe 0
	mov	_nrf_cmd_PARM_2,#0x01
	mov	dpl,#0x22
	ljmp	_nrf_cmd
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
