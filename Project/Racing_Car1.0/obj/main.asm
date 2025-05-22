;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ReadData
	.globl _InitMPU6050
	.globl _fabsf
	.globl _sqrtf
	.globl _atanf
	.globl _Delay_Ms
	.globl _I2C_Read
	.globl _I2C_Write
	.globl _I2C_Address
	.globl _I2C_RepeatedStart
	.globl _I2C_start
	.globl _send_stop
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
	.globl _checkAddress
	.globl _u8Data
	.globl _AccZMSB
	.globl _AccZLSB
	.globl _AccYMSB
	.globl _AccYLSB
	.globl _AccXMSB
	.globl _AccXLSB
	.globl _AnglePitch
	.globl _AngleRoll
	.globl _AccZ
	.globl _AccY
	.globl _AccX
	.globl _Res
	.globl _High
	.globl _Low
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
_Low::
	.ds 1
_High::
	.ds 1
_Res::
	.ds 2
_AccX::
	.ds 4
_AccY::
	.ds 4
_AccZ::
	.ds 4
_AngleRoll::
	.ds 4
_AnglePitch::
	.ds 4
_AccXLSB::
	.ds 2
_AccXMSB::
	.ds 2
_AccYLSB::
	.ds 2
_AccYMSB::
	.ds 2
_AccZLSB::
	.ds 2
_AccZMSB::
	.ds 2
_u8Data::
	.ds 2
_checkAddress::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
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
;Allocation info for local variables in function 'InitMPU6050'
;------------------------------------------------------------
;	main.c:23: void InitMPU6050(void)
;	-----------------------------------------
;	 function InitMPU6050
;	-----------------------------------------
_InitMPU6050:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:25: I2C_start();    
	lcall	_I2C_start
;	main.c:26: I2C_Address((uint8_t)0x68 << 1 , 0);
	mov	_I2C_Address_PARM_2,#0x00
	mov	dpl,#0xd0
	lcall	_I2C_Address
;	main.c:28: I2C_Write(0x6B);
	mov	dpl,#0x6b
	lcall	_I2C_Write
;	main.c:29: I2C_Write(0x00);
	mov	dpl,#0x00
	lcall	_I2C_Write
;	main.c:30: send_stop();
	lcall	_send_stop
;	main.c:31: Delay_Ms(10);
	mov	dptr,#0x000a
	lcall	_Delay_Ms
;	main.c:33: I2C_start();
	lcall	_I2C_start
;	main.c:34: I2C_Address((uint8_t)0x68 << 1, 0);
	mov	_I2C_Address_PARM_2,#0x00
	mov	dpl,#0xd0
	lcall	_I2C_Address
;	main.c:37: I2C_Write(0x1A);
	mov	dpl,#0x1a
	lcall	_I2C_Write
;	main.c:38: I2C_Write(0x05);
	mov	dpl,#0x05
	lcall	_I2C_Write
;	main.c:39: send_stop();
	lcall	_send_stop
;	main.c:40: Delay_Ms(10);
	mov	dptr,#0x000a
	lcall	_Delay_Ms
;	main.c:42: I2C_start();
	lcall	_I2C_start
;	main.c:43: I2C_Address((uint8_t)0x68 << 1, 0);  //D0
	mov	_I2C_Address_PARM_2,#0x00
	mov	dpl,#0xd0
	lcall	_I2C_Address
;	main.c:46: I2C_Write(0x1B);
	mov	dpl,#0x1b
	lcall	_I2C_Write
;	main.c:47: I2C_Write(0x00);
	mov	dpl,#0x00
	lcall	_I2C_Write
;	main.c:48: send_stop();
	lcall	_send_stop
;	main.c:49: Delay_Ms(10);
	mov	dptr,#0x000a
	lcall	_Delay_Ms
;	main.c:51: I2C_start();
	lcall	_I2C_start
;	main.c:52: I2C_Address((uint8_t)0x68 << 1, 0);  //D0
	mov	_I2C_Address_PARM_2,#0x00
	mov	dpl,#0xd0
	lcall	_I2C_Address
;	main.c:55: I2C_Write(0x1C);
	mov	dpl,#0x1c
	lcall	_I2C_Write
;	main.c:56: I2C_Write(0x10);
	mov	dpl,#0x10
	lcall	_I2C_Write
;	main.c:57: send_stop();
	lcall	_send_stop
;	main.c:58: Delay_Ms(10);
	mov	dptr,#0x000a
;	main.c:59: }
	ljmp	_Delay_Ms
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadData'
;------------------------------------------------------------
;	main.c:61: void ReadData(void)
;	-----------------------------------------
;	 function ReadData
;	-----------------------------------------
_ReadData:
;	main.c:64: I2C_start();
	lcall	_I2C_start
;	main.c:65: I2C_Address((uint8_t)0xD0, 0);
	mov	_I2C_Address_PARM_2,#0x00
	mov	dpl,#0xd0
	lcall	_I2C_Address
;	main.c:67: I2C_Write(0x3B);
	mov	dpl,#0x3b
	lcall	_I2C_Write
;	main.c:69: I2C_RepeatedStart();
	lcall	_I2C_RepeatedStart
;	main.c:70: I2C_Address((uint8_t)0xD1, 1);
	mov	_I2C_Address_PARM_2,#0x01
	mov	dpl,#0xd1
	lcall	_I2C_Address
;	main.c:71: AccXLSB = I2C_Read(1);
	mov	dpl,#0x01
	lcall	_I2C_Read
	mov	r7,dpl
	mov	_AccXLSB,r7
	mov	(_AccXLSB + 1),#0x00
;	main.c:72: AccXMSB = I2C_Read(1);
	mov	dpl,#0x01
	lcall	_I2C_Read
	mov	r7,dpl
	mov	_AccXMSB,r7
	mov	(_AccXMSB + 1),#0x00
;	main.c:74: AccYLSB = I2C_Read(1);
	mov	dpl,#0x01
	lcall	_I2C_Read
	mov	r7,dpl
	mov	_AccYLSB,r7
	mov	(_AccYLSB + 1),#0x00
;	main.c:75: AccYMSB = I2C_Read(1);
	mov	dpl,#0x01
	lcall	_I2C_Read
	mov	r7,dpl
	mov	_AccYMSB,r7
	mov	(_AccYMSB + 1),#0x00
;	main.c:77: AccZLSB = I2C_Read(1);
	mov	dpl,#0x01
	lcall	_I2C_Read
	mov	r7,dpl
	mov	_AccZLSB,r7
	mov	(_AccZLSB + 1),#0x00
;	main.c:78: AccZMSB = I2C_Read(0);
	mov	dpl,#0x00
	lcall	_I2C_Read
	mov	r7,dpl
	mov	_AccZMSB,r7
	mov	(_AccZMSB + 1),#0x00
;	main.c:79: send_stop();
	lcall	_send_stop
;	main.c:81: AccXLSB = (AccXLSB << 8) | AccXMSB;
	mov	r7,_AccXLSB
	mov	r6,#0x00
	mov	a,_AccXMSB
	orl	a,r6
	mov	_AccXLSB,a
	mov	a,(_AccXMSB + 1)
	orl	a,r7
	mov	(_AccXLSB + 1),a
;	main.c:82: AccYLSB = (AccYLSB << 8) | AccYMSB;
	mov	r7,_AccYLSB
	mov	a,_AccYMSB
	orl	a,r6
	mov	_AccYLSB,a
	mov	a,(_AccYMSB + 1)
	orl	a,r7
	mov	(_AccYLSB + 1),a
;	main.c:83: AccZLSB = (AccZLSB << 8) | AccZMSB;
	mov	r7,_AccZLSB
	mov	a,_AccZMSB
	orl	a,r6
	mov	_AccZLSB,a
	mov	a,(_AccZMSB + 1)
	orl	a,r7
	mov	(_AccZLSB + 1),a
;	main.c:85: AccX = (float)AccXLSB / 4096.0 - 0.01;
	mov	dpl,_AccXLSB
	mov	dph,(_AccXLSB + 1)
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
	mov	a,#0x45
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0a
	push	acc
	mov	a,#0xd7
	push	acc
	mov	a,#0x23
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	_AccX,dpl
	mov	(_AccX + 1),dph
	mov	(_AccX + 2),b
	mov	(_AccX + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:86: AccY = (float)AccYLSB / 4096.0 ;
	mov	dpl,_AccYLSB
	mov	dph,(_AccYLSB + 1)
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
	mov	a,#0x45
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_AccY,dpl
	mov	(_AccY + 1),dph
	mov	(_AccY + 2),b
	mov	(_AccY + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:87: AccZ = (float)AccZLSB / 4096.0 + 0.01;
	mov	dpl,_AccZLSB
	mov	dph,(_AccZLSB + 1)
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
	mov	a,#0x45
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0a
	push	acc
	mov	a,#0xd7
	push	acc
	mov	a,#0x23
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	_AccZ,dpl
	mov	(_AccZ + 1),dph
	mov	(_AccZ + 2),b
	mov	(_AccZ + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:92: AngleRoll = atanf(AccY/sqrtf(AccX*AccX + AccZ*AccZ))*1/(3.142/180);
	push	_AccX
	push	(_AccX + 1)
	push	(_AccX + 2)
	push	(_AccX + 3)
	mov	dpl,_AccX
	mov	dph,(_AccX + 1)
	mov	b,(_AccX + 2)
	mov	a,(_AccX + 3)
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_AccZ
	push	(_AccZ + 1)
	push	(_AccZ + 2)
	push	(_AccZ + 3)
	mov	dpl,_AccZ
	mov	dph,(_AccZ + 1)
	mov	b,(_AccZ + 2)
	mov	a,(_AccZ + 3)
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_sqrtf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_AccY
	mov	dph,(_AccY + 1)
	mov	b,(_AccY + 2)
	mov	a,(_AccY + 3)
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_atanf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0xf4
	push	acc
	mov	a,#0xfe
	push	acc
	mov	a,#0x8e
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_AngleRoll,dpl
	mov	(_AngleRoll + 1),dph
	mov	(_AngleRoll + 2),b
	mov	(_AngleRoll + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:93: AnglePitch = atanf(AccX/sqrtf(AccY*AccY + AccZ*AccZ))*1/(3.142/180);
	push	_AccY
	push	(_AccY + 1)
	push	(_AccY + 2)
	push	(_AccY + 3)
	mov	dpl,_AccY
	mov	dph,(_AccY + 1)
	mov	b,(_AccY + 2)
	mov	a,(_AccY + 3)
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_AccZ
	push	(_AccZ + 1)
	push	(_AccZ + 2)
	push	(_AccZ + 3)
	mov	dpl,_AccZ
	mov	dph,(_AccZ + 1)
	mov	b,(_AccZ + 2)
	mov	a,(_AccZ + 3)
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_sqrtf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_AccX
	mov	dph,(_AccX + 1)
	mov	b,(_AccX + 2)
	mov	a,(_AccX + 3)
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_atanf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0xf4
	push	acc
	mov	a,#0xfe
	push	acc
	mov	a,#0x8e
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_AnglePitch,dpl
	mov	(_AnglePitch + 1),dph
	mov	(_AnglePitch + 2),b
	mov	(_AnglePitch + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:97: AngleRoll = fabsf(AngleRoll);
	mov	dpl,_AngleRoll
	mov	dph,(_AngleRoll + 1)
	mov	b,(_AngleRoll + 2)
	mov	a,(_AngleRoll + 3)
	lcall	_fabsf
	mov	_AngleRoll,dpl
	mov	(_AngleRoll + 1),dph
	mov	(_AngleRoll + 2),b
	mov	(_AngleRoll + 3),a
;	main.c:98: AnglePitch = fabsf(AnglePitch);
	mov	dpl,_AnglePitch
	mov	dph,(_AnglePitch + 1)
	mov	b,(_AnglePitch + 2)
	mov	a,(_AnglePitch + 3)
	lcall	_fabsf
	mov	_AnglePitch,dpl
	mov	(_AnglePitch + 1),dph
	mov	(_AnglePitch + 2),b
	mov	(_AnglePitch + 3),a
;	main.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:101: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:104: LED_PORT;
	anl	_P0M1,#0xfe
	orl	_P0M2,#0x01
;	main.c:105: LED = 0;
;	assignBit
	clr	_P00
;	main.c:111: while (1) {
00102$:
;	main.c:115: Delay_Ms(1000);
	mov	dptr,#0x03e8
	lcall	_Delay_Ms
;	main.c:116: LED = 1;
;	assignBit
	setb	_P00
;	main.c:117: Delay_Ms(1000);
	mov	dptr,#0x03e8
	lcall	_Delay_Ms
;	main.c:118: LED = 0;
;	assignBit
	clr	_P00
;	main.c:129: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
