;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Thu Apr  3 17:08:02 2025
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _WKT_ISR
	.globl _UART0_Init
	.globl _ble_init
	.globl _btLePacketEncode
	.globl _swapbits
	.globl _nrf_wbuf
	.globl _nrf_manybytes
	.globl _nrf_simplebyte
	.globl _nrf_cmd
	.globl _OneWireReadByte
	.globl _OneWireWriteByte
	.globl _OneWireReset
	.globl _DelayT0
	.globl _DelayT0_Init
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
	.globl _mode
	.globl _s
	.globl _ms
	.globl _temp
	.globl _debug2
	.globl _debug
	.globl _conf
	.globl _Th
	.globl _Tl
	.globl _MSB
	.globl _LSB
	.globl _exponent
	.globl _ret
	.globl _z
	.globl _i
	.globl _ch
	.globl _buf
	.globl _DS18x20_ReadTemp
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
_buf::
	.ds 32
_ch::
	.ds 1
_i::
	.ds 1
_z::
	.ds 1
_ret::
	.ds 4
_exponent::
	.ds 4
_LSB::
	.ds 1
_MSB::
	.ds 1
_Tl::
	.ds 1
_Th::
	.ds 1
_conf::
	.ds 1
_debug::
	.ds 1
_debug2::
	.ds 1
_temp::
	.ds 4
_ms::
	.ds 2
_s::
	.ds 1
_mode::
	.ds 1
_main_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_WKT_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:22: uint8_t ch = 0;  // RF channel for frequency hopping
	mov	_ch,#0x00
;	main.c:24: uint8_t z = 0;
	mov	_z,#0x00
;	main.c:26: int32_t exponent = -2;
	mov	_exponent,#0xFE
	mov	a,#0xFF
	mov	(_exponent + 1),a
	mov	(_exponent + 2),a
	mov	(_exponent + 3),a
;	main.c:37: uint16_t ms = 0;
	clr	a
	mov	_ms,a
	mov	(_ms + 1),a
;	main.c:38: uint8_t s = 0;
;	1-genFromRTrack replaced	mov	_s,#0x00
	mov	_s,a
;	main.c:40: uint8_t mode = 2;
	mov	_mode,#0x02
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'WKT_ISR'
;------------------------------------------------------------
;	main.c:42: void WKT_ISR(void) __interrupt (17)            // Vector @  0x8B
;	-----------------------------------------
;	 function WKT_ISR
;	-----------------------------------------
_WKT_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:44: clr_WKCON_WKTF;
	anl	_WKCON,#0xEF
;	main.c:45: clr_WKCON_WKTR;
	anl	_WKCON,#0xF7
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	main.c:59: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:61: P00_PUSHPULL_MODE;  //MOSI
	anl	_P0M1,#0xFE
	orl	_P0M2,#0x01
;	main.c:62: P10_PUSHPULL_MODE;  //CLK
	anl	_P1M1,#0xFE
	orl	_P1M2,#0x01
;	main.c:63: P01_QUASI_MODE;     //MISO
	anl	_P0M1,#0xFD
	anl	_P0M2,#0xFD
;	main.c:65: P11_PUSHPULL_MODE;  //CSN
	anl	_P1M1,#0xFD
	orl	_P1M2,#0x02
;	main.c:66: P12_PUSHPULL_MODE;  //CE
	anl	_P1M1,#0xFB
	orl	_P1M2,#0x04
;	main.c:71: P14_OPENDRAIN_MODE;	//pin ds18b20
	orl	_P1M1,#0x10
	orl	_P1M2,#0x10
;	main.c:84: DelayT0_Init();
	lcall	_DelayT0_Init
;	main.c:85: OneWireReset();
	lcall	_OneWireReset
;	main.c:86: DelayT0(100, CONFIG_1MS);
	mov	_DelayT0_PARM_2,#0xE8
	mov	(_DelayT0_PARM_2 + 1),#0x03
	mov	dptr,#0x0064
	lcall	_DelayT0
;	main.c:89: UART0_Init(); //9600
	lcall	_UART0_Init
;	main.c:91: CE_PIN = 0;
	clr	_P12
;	main.c:92: CSN_PIN = 1;
	setb	_P11
;	main.c:93: SCK=0;              //SPI clock line init high 
	clr	_P10
;	main.c:96: ble_init();
	lcall	_ble_init
;	main.c:99: buf[0] = 0x30;
	mov	_buf,#0x30
;	main.c:100: buf[1] = swapbits(0x8E);
	mov	dpl,#0x8E
	lcall	_swapbits
	mov	a,dpl
	mov	(_buf + 0x0001),a
;	main.c:101: buf[2] = swapbits(0x89);
	mov	dpl,#0x89
	lcall	_swapbits
	mov	a,dpl
	mov	(_buf + 0x0002),a
;	main.c:102: buf[3] = swapbits(0xBE);
	mov	dpl,#0xBE
	lcall	_swapbits
	mov	a,dpl
	mov	(_buf + 0x0003),a
;	main.c:103: buf[4] = swapbits(0xD6);
	mov	dpl,#0xD6
	lcall	_swapbits
	mov	a,dpl
	mov	(_buf + 0x0004),a
;	main.c:104: nrf_manybytes(buf, 5);
	mov	_nrf_manybytes_PARM_2,#0x05
	mov	dptr,#_buf
	mov	b,#0x40
	lcall	_nrf_manybytes
;	main.c:105: buf[0] = 0x2A;    // set RX address in nRF24L01, doesn't matter because RX is ignored in this case
	mov	_buf,#0x2A
;	main.c:106: nrf_manybytes(buf, 5); 
	mov	_nrf_manybytes_PARM_2,#0x05
	mov	dptr,#_buf
	mov	b,#0x40
	lcall	_nrf_manybytes
;	main.c:115: while (1) 
00106$:
;	main.c:129: if (mode == 2)
	mov	a,#0x02
	cjne	a,_mode,00106$
;	main.c:132: DS18x20_ReadTemp();
	lcall	_DS18x20_ReadTemp
;	main.c:137: ret = ((exponent & 0xff) << 24) | (((int32_t)((temp) * 100)) & 0xffffff);
	mov	r4,_exponent
	mov	r7,#0x00
	mov	(_main_sloc0_1_0 + 3),r4
;	1-genFromRTrack replaced	mov	_main_sloc0_1_0,#0x00
	mov	_main_sloc0_1_0,r7
;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	(_main_sloc0_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 2),#0x00
	mov	(_main_sloc0_1_0 + 2),r7
	push	_temp
	push	(_temp + 1)
	push	(_temp + 2)
	push	(_temp + 3)
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2slong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,#0x00
	mov	a,r4
	orl	a,_main_sloc0_1_0
	mov	_ret,a
	mov	a,r5
	orl	a,(_main_sloc0_1_0 + 1)
	mov	(_ret + 1),a
	mov	a,r6
	orl	a,(_main_sloc0_1_0 + 2)
	mov	(_ret + 2),a
	mov	a,r7
	orl	a,(_main_sloc0_1_0 + 3)
	mov	(_ret + 3),a
;	main.c:139: buf[0] = 0x42;  //PDU type, given address is random
	mov	_buf,#0x42
;	main.c:140: buf[1] = 0x11  + 10; //17 bytes of payload
	mov	(_buf + 0x0001),#0x1B
;	main.c:142: buf[2] = MY_MAC_0;
	mov	(_buf + 0x0002),#0xEF
;	main.c:143: buf[3] = MY_MAC_1;
	mov	(_buf + 0x0003),#0xFF
;	main.c:144: buf[4] = MY_MAC_2;
	mov	(_buf + 0x0004),#0x02
;	main.c:145: buf[5] = MY_MAC_3;
	mov	(_buf + 0x0005),#0x20
;	main.c:146: buf[6] = MY_MAC_4;
	mov	(_buf + 0x0006),#0x11
;	main.c:147: buf[7] = MY_MAC_5;
	mov	(_buf + 0x0007),#0x01
;	main.c:149: buf[8] = 2;   //flags (LE-only, limited discovery mode)
	mov	(_buf + 0x0008),#0x02
;	main.c:150: buf[9] = 0x01;
	mov	(_buf + 0x0009),#0x01
;	main.c:151: buf[10] = 0x05;
	mov	(_buf + 0x000a),#0x05
;	main.c:153: buf[11] = 7;// + 8;
	mov	(_buf + 0x000b),#0x07
;	main.c:154: buf[12] = 0x08;
	mov	(_buf + 0x000c),#0x08
;	main.c:156: buf[13] = 'B';
	mov	(_buf + 0x000d),#0x42
;	main.c:157: buf[14] = 'L';
	mov	(_buf + 0x000e),#0x4C
;	main.c:158: buf[15] = 'E';
	mov	(_buf + 0x000f),#0x45
;	main.c:159: buf[16] = '-';
	mov	(_buf + 0x0010),#0x2D
;	main.c:160: buf[17] = '0';
	mov	(_buf + 0x0011),#0x30
;	main.c:161: buf[18] = '9';
	mov	(_buf + 0x0012),#0x39
;	main.c:164: buf[19] = 7;
	mov	(_buf + 0x0013),#0x07
;	main.c:165: buf[20] = 0x16;
	mov	(_buf + 0x0014),#0x16
;	main.c:167: buf[21] = 0x09;
	mov	(_buf + 0x0015),#0x09
;	main.c:168: buf[22] = 0x18;
	mov	(_buf + 0x0016),#0x18
;	main.c:171: buf[23] = (unsigned char)(ret);
	mov	r7,_ret
	mov	(_buf + 0x0017),r7
;	main.c:172: buf[24] = (unsigned char)(ret >> 8);
	mov	r7,(_ret + 1)
	mov	(_buf + 0x0018),r7
;	main.c:173: buf[25] = (unsigned char)(ret >> 16);
	mov	r7,(_ret + 2)
	mov	(_buf + 0x0019),r7
;	main.c:174: buf[26] = (unsigned char)(ret >> 24);
	mov	r7,(_ret + 3)
	mov	(_buf + 0x001a),r7
;	main.c:176: buf[27] = 0x00;
	mov	(_buf + 0x001b),#0x00
;	main.c:177: buf[28] = 0x00;    
	mov	(_buf + 0x001c),#0x00
;	main.c:179: buf[29] = 0x55;  //CRC start value: 0x555555
	mov	(_buf + 0x001d),#0x55
;	main.c:180: buf[30] = 0x55;
	mov	(_buf + 0x001e),#0x55
;	main.c:181: buf[31] = 0x55;
	mov	(_buf + 0x001f),#0x55
;	main.c:183: if(++ch == sizeof(chRf)) ch = 0;
	inc	_ch
	mov	a,#0x03
	cjne	a,_ch,00102$
	mov	_ch,#0x00
00102$:
;	main.c:185: nrf_cmd(W_REGISTER|RF_CH, chRf[ch]);
	mov	a,_ch
	mov	dptr,#_chRf
	movc	a,@a+dptr
	mov	_nrf_cmd_PARM_2,a
	mov	dpl,#0x25
	lcall	_nrf_cmd
;	main.c:187: nrf_cmd(W_REGISTER|STATUS, 0x6E); //clear flags
	mov	_nrf_cmd_PARM_2,#0x6E
	mov	dpl,#0x27
	lcall	_nrf_cmd
;	main.c:189: btLePacketEncode(buf, 32, chLe[ch]);
	mov	a,_ch
	mov	dptr,#_chLe
	movc	a,@a+dptr
	mov	_btLePacketEncode_PARM_3,a
	mov	_btLePacketEncode_PARM_2,#0x20
	mov	dptr,#_buf
	mov	b,#0x40
	lcall	_btLePacketEncode
;	main.c:192: nrf_simplebyte(FLUSH_RX); //Clear RX Fifo
	mov	dpl,#0xE2
	lcall	_nrf_simplebyte
;	main.c:193: nrf_simplebyte(FLUSH_TX); //Clear TX Fifo
	mov	dpl,#0xE1
	lcall	_nrf_simplebyte
;	main.c:199: nrf_wbuf(W_TX_PAYLOAD, buf, 32);
	mov	_nrf_wbuf_PARM_2,#_buf
	mov	(_nrf_wbuf_PARM_2 + 1),#0x00
	mov	(_nrf_wbuf_PARM_2 + 2),#0x40
	mov	_nrf_wbuf_PARM_3,#0x20
	mov	dpl,#0xA0
	lcall	_nrf_wbuf
;	main.c:201: nrf_cmd(W_REGISTER, 0x12);  //tx on
	mov	_nrf_cmd_PARM_2,#0x12
	mov	dpl,#0x20
	lcall	_nrf_cmd
;	main.c:202: CE_PIN = 1;    //do tx
	setb	_P12
;	main.c:203: DelayT0(10, CONFIG_1MS); //delay_ms(10);
	mov	_DelayT0_PARM_2,#0xE8
	mov	(_DelayT0_PARM_2 + 1),#0x03
	mov	dptr,#0x000A
	lcall	_DelayT0
;	main.c:204: CE_PIN = 0; // (in preparation of switching to RX quickly)
	clr	_P12
	ljmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18x20_ReadTemp'
;------------------------------------------------------------
;	main.c:218: void DS18x20_ReadTemp(void) {
;	-----------------------------------------
;	 function DS18x20_ReadTemp
;	-----------------------------------------
_DS18x20_ReadTemp:
;	main.c:219: debug = OneWireReset();             // Reset Pulse
	lcall	_OneWireReset
	mov	r6,dpl
	mov	_debug,r6
;	main.c:220: OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command (CCh)
	mov	dpl,#0xCC
	lcall	_OneWireWriteByte
;	main.c:221: OneWireWriteByte(CONVERT_T);        // Convert T command (44h)
	mov	dpl,#0x44
	lcall	_OneWireWriteByte
;	main.c:223: while( !OneWireRead() );              // DQ will hold line low while making measurement
00101$:
	lcall	_OneWireRead
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00101$
;	main.c:224: debug2 = OneWireReset();             // Start new command sequence
	lcall	_OneWireReset
	mov	r6,dpl
	mov	_debug2,r6
;	main.c:225: OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command
	mov	dpl,#0xCC
	lcall	_OneWireWriteByte
;	main.c:226: OneWireWriteByte(READ_SCRATCHPAD);  // Read Scratchpad (BEh) - 15 bits
	mov	dpl,#0xBE
	lcall	_OneWireWriteByte
;	main.c:227: LSB = OneWireReadByte();
	lcall	_OneWireReadByte
	mov	_LSB,dpl
;	main.c:228: MSB = OneWireReadByte();
	lcall	_OneWireReadByte
	mov	_MSB,dpl
;	main.c:229: Tl = OneWireReadByte();
	lcall	_OneWireReadByte
	mov	_Tl,dpl
;	main.c:230: Th = OneWireReadByte();
	lcall	_OneWireReadByte
	mov	_Th,dpl
;	main.c:231: conf = OneWireReadByte();
	lcall	_OneWireReadByte
	mov	_conf,dpl
;	main.c:233: OneWireReset();                       // Stop Reading
	lcall	_OneWireReset
;	main.c:234: temp = ((MSB << 8) | LSB) / 16.0;
	mov	r7,_MSB
	mov	r6,#0x00
	mov	r4,_LSB
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	dpl,a
	mov	a,r5
	orl	a,r7
	mov	dph,a
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_temp,dpl
	mov	(_temp + 1),dph
	mov	(_temp + 2),b
	mov	(_temp + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_chRf:
	.db #0x02	; 2
	.db #0x1A	; 26
	.db #0x50	; 80	'P'
_chLe:
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
