__bit BIT_TMP;

#define HIBYTE(v1)              ((uint8_t)((v1)>>8))                      //v1 is UINT16
#define LOBYTE(v1)              ((uint8_t)((v1)&0xFF))

//------------------- Define Port as Quasi mode  -------------------
#define P00_QUASI_MODE         P0M1&=0xFE;P0M2&=0xFE
#define P01_QUASI_MODE         P0M1&=0xFD;P0M2&=0xFD
#define P02_QUASI_MODE         P0M1&=0xFB;P0M2&=0xFB
#define P03_QUASI_MODE         P0M1&=0xF7;P0M2&=0xF7
#define P04_QUASI_MODE         P0M1&=0xEF;P0M2&=0xEF
#define P05_QUASI_MODE         P0M1&=0xDF;P0M2&=0xDF
#define P06_QUASI_MODE         P0M1&=0xBF;P0M2&=0xBF
#define P07_QUASI_MODE         P0M1&=0x7F;P0M2&=0x7F
#define P10_QUASI_MODE         P1M1&=0xFE;P1M2&=0xFE
#define P11_QUASI_MODE         P1M1&=0xFD;P1M2&=0xFD
#define P12_QUASI_MODE         P1M1&=0xFB;P1M2&=0xFB
#define P13_QUASI_MODE         P1M1&=0xF7;P1M2&=0xF7
#define P14_QUASI_MODE         P1M1&=0xEF;P1M2&=0xEF
#define P15_QUASI_MODE         P1M1&=0xDF;P1M2&=0xDF
#define P16_QUASI_MODE         P1M1&=0xBF;P1M2&=0xBF
#define P17_QUASI_MODE         P1M1&=0x7F;P1M2&=0x7F
#define P30_QUASI_MODE         P3M1&=0xFE;P3M2&=0xFE
//------------------- Define Port as Push Pull mode -------------------
#define P00_PUSHPULL_MODE      P0M1&=0xFE;P0M2|=0x01
#define P01_PUSHPULL_MODE      P0M1&=0xFD;P0M2|=0x02
#define P02_PUSHPULL_MODE      P0M1&=0xFB;P0M2|=0x04
#define P03_PUSHPULL_MODE      P0M1&=0xF7;P0M2|=0x08
#define P04_PUSHPULL_MODE      P0M1&=0xEF;P0M2|=0x10
#define P05_PUSHPULL_MODE      P0M1&=0xDF;P0M2|=0x20
#define P06_PUSHPULL_MODE      P0M1&=0xBF;P0M2|=0x40
#define P07_PUSHPULL_MODE      P0M1&=0x7F;P0M2|=0x80
#define P10_PUSHPULL_MODE      P1M1&=0xFE;P1M2|=0x01
#define P11_PUSHPULL_MODE      P1M1&=0xFD;P1M2|=0x02
#define P12_PUSHPULL_MODE      P1M1&=0xFB;P1M2|=0x04
#define P13_PUSHPULL_MODE      P1M1&=0xF7;P1M2|=0x08
#define P14_PUSHPULL_MODE      P1M1&=0xEF;P1M2|=0x10
#define P15_PUSHPULL_MODE      P1M1&=0xDF;P1M2|=0x20
#define P16_PUSHPULL_MODE      P1M1&=0xBF;P1M2|=0x40
#define P17_PUSHPULL_MODE      P1M1&=0x7F;P1M2|=0x80
#define P30_PUSHPULL_MODE      P3M1&=0xFE;P3M2|=0x01
#define GPIO1_PUSHPULL_MODE    P1M1&=0xFE;P1M2|=0x01
//------------------- Define Port as Input Only mode -------------------
#define P00_INPUT_MODE         P0M1|=0x01;P0M2&=0xFE
#define P01_INPUT_MODE         P0M1|=0x02;P0M2&=0xFD
#define P02_INPUT_MODE         P0M1|=0x04;P0M2&=0xFB
#define P03_INPUT_MODE         P0M1|=0x08;P0M2&=0xF7
#define P04_INPUT_MODE         P0M1|=0x10;P0M2&=0xEF
#define P05_INPUT_MODE         P0M1|=0x20;P0M2&=0xDF
#define P06_INPUT_MODE         P0M1|=0x40;P0M2&=0xBF
#define P07_INPUT_MODE         P0M1|=0x80;P0M2&=0x7F
#define P10_INPUT_MODE         P1M1|=0x01;P1M2&=0xFE
#define P11_INPUT_MODE         P1M1|=0x02;P1M2&=0xFD
#define P12_INPUT_MODE         P1M1|=0x04;P1M2&=0xFB
#define P13_INPUT_MODE         P1M1|=0x08;P1M2&=0xF7
#define P14_INPUT_MODE         P1M1|=0x10;P1M2&=0xEF
#define P15_INPUT_MODE         P1M1|=0x20;P1M2&=0xDF
#define P16_INPUT_MODE         P1M1|=0x40;P1M2&=0xBF
#define P17_INPUT_MODE         P1M1|=0x80;P1M2&=0x7F
#define P30_INPUT_MODE         P3M1|=0x01;P3M2&=0xFE
//-------------------Define Port as Open Drain mode -------------------
#define P00_OPENDRAIN_MODE     P0M1|=0x01;P0M2|=0x01
#define P01_OPENDRAIN_MODE     P0M1|=0x02;P0M2|=0x02
#define P02_OPENDRAIN_MODE     P0M1|=0x04;P0M2|=0x04
#define P03_OPENDRAIN_MODE     P0M1|=0x08;P0M2|=0x08
#define P04_OPENDRAIN_MODE     P0M1|=0x10;P0M2|=0x10
#define P05_OPENDRAIN_MODE     P0M1|=0x20;P0M2|=0x20
#define P06_OPENDRAIN_MODE     P0M1|=0x40;P0M2|=0x40
#define P07_OPENDRAIN_MODE     P0M1|=0x80;P0M2|=0x80
#define P10_OPENDRAIN_MODE     P1M1|=0x01;P1M2|=0x01
#define P11_OPENDRAIN_MODE     P1M1|=0x02;P1M2|=0x02
#define P12_OPENDRAIN_MODE     P1M1|=0x04;P1M2|=0x04
#define P13_OPENDRAIN_MODE     P1M1|=0x08;P1M2|=0x08
#define P14_OPENDRAIN_MODE     P1M1|=0x10;P1M2|=0x10
#define P15_OPENDRAIN_MODE     P1M1|=0x20;P1M2|=0x20
#define P16_OPENDRAIN_MODE     P1M1|=0x40;P1M2|=0x40
#define P17_OPENDRAIN_MODE     P1M1|=0x80;P1M2|=0x80
#define P30_OPENDRAIN_MODE     P3M1|=0x01;P3M2|=0x01
//--------- Define all port as quasi mode ---------
#define ALL_GPIO_QUASI_MODE      P0M1=0;P0M2=0;P1M1=0;P1M2=0;P3M1=0;P3M2=0
#define ALL_GPIO_INPUT_MODE      P0M1=0xFF;P0M2=0;P1M1=0xFF;P1M2=0;P3M1=0xFF;P3M2=0
#define ALL_GPIO_PUSHPULL_MODE   P0M1=0;P0M2=0xFF;P1M1=0;P1M2=0xFF;P3M1=0;P3M2=0xFF

/********************************************************/
/*  <Define rule II> "set or clr"                       */
/********************************************************/
#define set_P00                 P00=1
#define set_P01                 P01=1
#define set_P02                 P02=1
#define set_P03                 P03=1
#define set_P04                 P04=1
#define set_P05                 P05=1
#define set_P06                 P06=1
#define set_P07                 P07=1
                                
#define clr_P00                 P00=0
#define clr_P01                 P01=0
#define clr_P02                 P02=0
#define clr_P03                 P03=0
#define clr_P04                 P04=0
#define clr_P05                 P05=0
#define clr_P06                 P06=0
#define clr_P07                 P07=0


//**** PCON  87H *****
#define set_PCON_SMOD            PCON|=0x80
#define set_PCON_SMOD0           PCON|=0x40
#define set_PCON_POF             PCON|=0x10
#define set_PCON_GF1             PCON|=0x08
#define set_PCON_GF0             PCON|=0x04 
#define set_PCON_PD              PCON|=0x02
#define set_PCON_IDLE            PCON|=0x01
                                    
#define clr_PCON_SMOD            PCON&=0x7F
#define clr_PCON_SMOD0           PCON&=0xBF
#define clr_PCON_POF             PCON&=0xEF
#define clr_PCON_GF1             PCON&=0xF7
#define clr_PCON_GF0             PCON&=0xFB 
#define clr_PCON_PD              PCON&=0xFD
#define clr_PCON_IDLE            PCON&=0xFE

/**** TCON    88H ****/
#define set_TCON_TF1             TF1=1
#define set_TCON_TR1             TR1=1
#define set_TCON_TF0             TF0=1
#define set_TCON_TR0             TR0=1
#define set_TCON_IE1             IE1=1
#define set_TCON_IT1             IT1=1
#define set_TCON_IE0             IE0=1
#define set_TCON_IT0             IT0=1
                                 
#define clr_TCON_TF1             TF1=0
#define clr_TCON_TR1             TR1=0
#define clr_TCON_TF0             TF0=0
#define clr_TCON_TR0             TR0=0
#define clr_TCON_IE1             IE1=0
#define clr_TCON_IT1             IT1=0
#define clr_TCON_IE0             IE0=0
#define clr_TCON_IT0             IT0=0

//**** TMOD    89H **** 
#define set_TMOD_GATE_T1         TMOD|=0x80
#define set_TMOD_CT_T1           TMOD|=0x40
#define set_TMOD_M1_T1           TMOD|=0x20
#define set_TMOD_M0_T1           TMOD|=0x10
#define set_TMOD_GATE_T0         TMOD|=0x08
#define set_TMOD_CT_T0           TMOD|=0x04
#define set_TMOD_M1_T0           TMOD|=0x02
#define set_TMOD_M0_T0           TMOD|=0x01
                                  
#define clr_TMOD_GATE_T1         TMOD&=0x7F
#define clr_TMOD_CT_T1           TMOD&=0xBF
#define clr_TMOD_M1_T1           TMOD&=0xDF
#define clr_TMOD_M0_T1           TMOD&=0xEF
#define clr_TMOD_GATE_T0         TMOD&=0xF7
#define clr_TMOD_CT_T0           TMOD&=0xFB
#define clr_TMOD_M1_T0           TMOD&=0xFD
#define clr_TMOD_M0_T0           TMOD&=0xFE

//**** TH1    8AH **** 
//**** TH0    8BH **** 
//**** TL1    8CH  **** 
//**** TL0    8DH **** 

//**** CKCON  8EH ****
#define set_CKCON_PWMCKS         CKCON|=0x40
#define set_CKCON_T1M            CKCON|=0x10
#define set_CKCON_T0M            CKCON|=0x08
#define set_CKCON_CLOEN          CKCON|=0x02
                                   
#define clr_CKCON_PWMCKS         CKCON&=0xBF
#define clr_CKCON_T1M            CKCON&=0xEF
#define clr_CKCON_T0M            CKCON&=0xF7
#define clr_CKCON_CLOEN          CKCON&=0xFD
                                 
//**** WKCON  8FH ****           
#define set_WKCON_WKTCK          WKCON|=0x20
#define set_WKCON_WKTF           WKCON|=0x10
#define set_WKCON_WKTR           WKCON|=0x08
#define set_WKCON_WKPS2          WKCON|=0x04
#define set_WKCON_WKPS1          WKCON|=0x02
#define set_WKCON_WKPS0          WKCON|=0x01
                                   
#define clr_WKCON_WKTCK          WKCON&=0xDF
#define clr_WKCON_WKTF           WKCON&=0xEF
#define clr_WKCON_WKTR           WKCON&=0xF7
#define clr_WKCON_WKPS2          WKCON&=0xFB
#define clr_WKCON_WKPS1          WKCON&=0xFD
#define clr_WKCON_WKPS0          WKCON&= 0xFE

//****SFRS    91H ****
#define set_SFRS_SFRPAGE         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;SFRS|=0x01;EA=BIT_TMP
#define clr_SFRS_SFRPAGE         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;SFRS&=0xFE;EA=BIT_TMP

//****CAPCON0  92H ****
#define set_CAPCON0_CAPEN2       CAPCON0|=0x40
#define set_CAPCON0_CAPEN1       CAPCON0|=0x20
#define set_CAPCON0_CAPEN0       CAPCON0|=0x10
#define set_CAPCON0_CAPF2        CAPCON0|=0x04
#define set_CAPCON0_CAPF1        CAPCON0|=0x02
#define set_CAPCON0_CAPF0        CAPCON0|=0x01
                                 
#define clr_CAPCON0_CAPEN2       CAPCON0&=0xBF
#define clr_CAPCON0_CAPEN1       CAPCON0&=0xDF
#define clr_CAPCON0_CAPEN0       CAPCON0&=0xEF
#define clr_CAPCON0_CAPF2        CAPCON0&=0xFB
#define clr_CAPCON0_CAPF1        CAPCON0&=0xFD
#define clr_CAPCON0_CAPF0        CAPCON0&=0xFE

//**** CAPCON1  93H ****
#define set_CAPCON1_CAP2LS1      CAPCON1|=0x20
#define set_CAPCON1_CAP2LS0      CAPCON1|=0x10
#define set_CAPCON1_CAP1LS1      CAPCON1|=0x08
#define set_CAPCON1_CAP1LS0      CAPCON1|=0x04
#define set_CAPCON1_CAP0LS1      CAPCON1|=0x02
#define set_CAPCON1_CAP0LS0      CAPCON1|=0x01
                                 
#define clr_CAPCON1_CAP2LS1      CAPCON1&=0xDF
#define clr_CAPCON1_CAP2LS0      CAPCON1&=0xEF
#define clr_CAPCON1_CAP1LS1      CAPCON1&=0xF7
#define clr_CAPCON1_CAP1LS0      CAPCON1&=0xFB
#define clr_CAPCON1_CAP0LS1      CAPCON1&=0xFD
#define clr_CAPCON1_CAP0LS0      CAPCON1&=0xFE

//**** CAPCON2    94H ****
#define set_CAPCON2_ENF2         CAPCON2|=0x40
#define set_CAPCON2_ENF1         CAPCON2|=0x20
#define set_CAPCON2_ENF0         CAPCON2|=0x10
                                   
#define clr_CAPCON2_ENF2         CAPCON2&=0xBF
#define clr_CAPCON2_ENF1         CAPCON2&=0xDF
#define clr_CAPCON2_ENF0         CAPCON2&=0xEF
//**** CKDIV    95H ****

//**** CKSWT    96H ****  TA protect register
#define set_CKSWT_HIRCST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT|=0x20;EA=BIT_TMP;
#define set_CKSWT_LIRCST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT|=0x10;EA=BIT_TMP;
#define set_CKSWT_ECLKST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT|=0x08;EA=BIT_TMP;
#define set_CKSWT_OSC1           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT|=0x04;EA=BIT_TMP;
#define set_CKSWT_OSC0           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT|=0x02;EA=BIT_TMP;
                                 
#define clr_CKSWT_HIRCST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT&=0xDF;EA=BIT_TMP;
#define clr_CKSWT_LIRCST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT&=0xEF;EA=BIT_TMP;
#define clr_CKSWT_ECLKST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT&=0xF7;EA=BIT_TMP;
#define clr_CKSWT_OSC1           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT&=0xFB;EA=BIT_TMP;
#define clr_CKSWT_OSC0           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKSWT&=0xFD;EA=BIT_TMP;

//**** CKEN   97H **** TA protect register
#define set_CKEN_EXTEN1          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN|=0x80;EA=BIT_TMP;
#define set_CKEN_EXTEN0          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN|=0x40;EA=BIT_TMP;
#define set_CKEN_HIRCEN          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN|=0x20;EA=BIT_TMP;
#define set_CKEN_CKSWTF          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN|=0x01;EA=BIT_TMP;
                                 
#define clr_CKEN_EXTEN1          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN&=0x7F;EA=BIT_TMP;
#define clr_CKEN_EXTEN0          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN&=0xBF;EA=BIT_TMP;
#define clr_CKEN_HIRCEN          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN&=0xDF;EA=BIT_TMP;
#define clr_CKEN_CKSWTF          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CKEN&=0xFE;EA=BIT_TMP;

//**** SCON    98H ****
#define set_SCON_FE              FE =1
#define set_SCON_SM1             SM1=1
#define set_SCON_SM2             SM2=1
#define set_SCON_REN             REN=1
#define set_SCON_TB8             TB8=1
#define set_SCON_RB8             RB8=1
#define set_SCON_TI              TI =1
#define set_SCON_RI              RI =1
                                 
#define clr_SCON_FE              FE =0
#define clr_SCON_SM1             SM1=0
#define clr_SCON_SM2             SM2=0
#define clr_SCON_REN             REN=0
#define clr_SCON_TB8             TB8=0
#define clr_SCON_RB8             RB8=0
#define clr_SCON_TI              TI =0
#define clr_SCON_RI              RI =0

//**** SBUF    99H ****
//**** SBUF_1  9AH ****

//**** EIE    9BH ****                      
#define set_EIE_ET2              EIE|=0x80
#define set_EIE_ESPI             EIE|=0x40
#define set_EIE_EFB              EIE|=0x20
#define set_EIE_EWDT             EIE|=0x10
#define set_EIE_EPWM             EIE|=0x08
#define set_EIE_ECAP             EIE|=0x04
#define set_EIE_EPI              EIE|=0x02
#define set_EIE_EI2C             EIE|=0x01
                                    
#define clr_EIE_ET2              EIE&=0x7F
#define clr_EIE_ESPI             EIE&=0xBF
#define clr_EIE_EFB              EIE&=0xDF
#define clr_EIE_EWDT             EIE&=0xEF
#define clr_EIE_EPWM             EIE&=0xF7
#define clr_EIE_ECAP             EIE&=0xFB
#define clr_EIE_EPI              EIE&=0xFD
#define clr_EIE_EI2C             EIE&=0xFE

//**** EIE1    9CH ****                      
#define set_EIE1_EWKT            EIE1|=0x04
#define set_EIE1_ET3             EIE1|=0x02
#define set_EIE1_ES_1            EIE1|=0x01
                                    
#define clr_EIE1_EWKT            EIE1&=0xFB
#define clr_EIE1_ET3             EIE1&=0xFD
#define clr_EIE1_ES_1            EIE1&=0xFE
                            
//**** CHPCON    9DH ****  TA protect register
#define set_CHPCON_SWRST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON|=0x80 ;EA=BIT_TMP
#define set_CHPCON_IAPFF         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON|=0x40 ;EA=BIT_TMP
#define set_CHPCON_BS            BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON|=0x02 ;EA=BIT_TMP
#define set_CHPCON_IAPEN         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON|=0x01 ;EA=BIT_TMP
                                 
#define clr_CHPCON_SWRST         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON&=0x7F;EA=BIT_TMP
#define clr_CHPCON_IAPFF         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON&=0xBF;EA=BIT_TMP
#define clr_CHPCON_BS            BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON&=0xFD;EA=BIT_TMP
#define clr_CHPCON_IAPEN         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;CHPCON&=0xFE;EA=BIT_TMP

//**** P2    A0H ****

//**** AUXR1  A2H ****
#define set_AUXR1_SWRF           AUXR1|=0x80
#define set_AUXR1_RSTPINF        AUXR1|=0x40
#define set_AUXR1_HARDF          AUXR1|=0x20
#define set_AUXR1_GF2            AUXR1|=0x08
#define set_AUXR1_UART0PX        AUXR1|=0x04
#define set_AUXR1_DPS            AUXR1|=0x01
                                   
#define clr_AUXR1_SWRF           AUXR1&=0x7F
#define clr_AUXR1_RSTPINF        AUXR1&=0xBF
#define clr_AUXR1_HARDF          AUXR1&=0xDF
#define clr_AUXR1_GF2            AUXR1&=0xF7
#define clr_AUXR1_UART0PX        AUXR1&=0xFB
#define clr_AUXR1_DPS            AUXR1&=0xFE

//**** BODCON0  A3H ****  TA protect register
#define set_BODCON0_BODEN        BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x80;EA=BIT_TMP
#define set_BODCON0_BOV1         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x20;EA=BIT_TMP
#define set_BODCON0_BOV0         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x10;EA=BIT_TMP
#define set_BODCON0_BOF          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x08;EA=BIT_TMP
#define set_BODCON0_BORST        BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x04;EA=BIT_TMP
#define set_BODCON0_BORF         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x02;EA=BIT_TMP
#define set_BODCON0_BOS          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0|=0x01;EA=BIT_TMP
                                 
#define clr_BODCON0_BODEN        BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0x7F;EA=BIT_TMP
#define clr_BODCON0_BOV2         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xBF;EA=BIT_TMP
#define clr_BODCON0_BOV1         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xDF;EA=BIT_TMP
#define clr_BODCON0_BOV0         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xEF;EA=BIT_TMP
#define clr_BODCON0_BOF          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xF7;EA=BIT_TMP
#define clr_BODCON0_BORST        BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xFB;EA=BIT_TMP
#define clr_BODCON0_BORF         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xFD;EA=BIT_TMP
#define clr_BODCON0_BOS          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON0&=0xFE;EA=BIT_TMP

//**** IAPTRG    A4H  ****  TA protect register
#define set_IAPTRG_IAPGO         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPTRG|=0x01;EA=BIT_TMP
#define clr_IAPTRG_IAPGO         BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPTRG&=0xFE;EA=BIT_TMP

//**** IAPUEN    A5H **** TA protect register
#define set_IAPUEN_SPMEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN|=0x10;EA=BIT_TMP
#define set_IAPUEN_SPUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN|=0x08;EA=BIT_TMP
#define set_IAPUEN_CFUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN|=0x04;EA=BIT_TMP
#define set_IAPUEN_LDUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN|=0x02;EA=BIT_TMP
#define set_IAPUEN_APUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN|=0x01;EA=BIT_TMP
 
#define clr_IAPUEN_SPMEM   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN&=0xEF;EA=BIT_TMP
#define clr_IAPUEN_SPUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN&=0xF7;EA=BIT_TMP
#define clr_IAPUEN_CFUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN&=0xFB;EA=BIT_TMP
#define clr_IAPUEN_LDUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN&=0xFD;EA=BIT_TMP
#define clr_IAPUEN_APUEN   BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;IAPUEN&=0xFE;EA=BIT_TMP

//**** IAPAL  A6H ****
//**** IAPAH  A7H ****

//**** IE      A8H ****
#define set_IE_EA                EA  =1
#define set_IE_EADC              EADC=1
#define set_IE_EBOD              EBOD=1
#define set_IE_ES                ES  =1
#define set_IE_ET1               ET1 =1
#define set_IE_EX1               EX1 =1
#define set_IE_ET0               ET0 =1
#define set_IE_EX0               EX0 =1
                                 
#define clr_IE_EA                EA  =0
#define clr_IE_EADC              EADC=0
#define clr_IE_EBOD              EBOD=0
#define clr_IE_ES                ES  =0
#define clr_IE_ET1               ET1 =0
#define clr_IE_EX1               EX1 =0
#define clr_IE_ET0               ET0 =0
#define clr_IE_EX0               EX0 =0

//**** SADDR    A9H ****

//**** WDCON    AAH **** TA protect register
#define set_WDCON_WDTR           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x80;EA=BIT_TMP
#define set_WDCON_WDCLR          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x40;EA=BIT_TMP
#define set_WDCON_WDTF           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x20;EA=BIT_TMP
#define set_WDCON_WIDPD          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x10;EA=BIT_TMP
#define set_WDCON_WDTRF          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x08;EA=BIT_TMP
#define set_WDCON_WPS2           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x04;EA=BIT_TMP
#define set_WDCON_WPS1           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x02;EA=BIT_TMP
#define set_WDCON_WPS0           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON|=0x01;EA=BIT_TMP
                                 
#define clr_WDCON_WDTR           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0x7F;EA=BIT_TMP
#define clr_WDCON_WDCLR          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0xBF;EA=BIT_TMP
#define clr_WDCON_WDTF           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0xDF;EA=BIT_TMP
#define clr_WDCON_WDTRF          BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0xF7;EA=BIT_TMP
#define clr_WDCON_WPS2           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0xFB;EA=BIT_TMP
#define clr_WDCON_WPS1           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0xFD;EA=BIT_TMP
#define clr_WDCON_WPS0           BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;WDCON&=0xFE;EA=BIT_TMP

//**** BODCON1 ABH **** TA protect register
#define set_BODCON1_LPBOD1       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON1|=0x04;EA=BIT_TMP
#define set_BODCON1_LPBOD0       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON1|=0x02;EA=BIT_TMP
#define set_BODCON1_BODFLT       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON1|=0x01;EA=BIT_TMP
                                 
#define clr_BODCON1_LPBOD1       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON1&=0xFB;EA=BIT_TMP
#define clr_BODCON1_LPBOD0       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON1&=0xFD;EA=BIT_TMP
#define clr_BODCON1_BODFLT       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;BODCON1&=0xFE;EA=BIT_TMP



//**** IAPFD  AEH ****

//**** IAPCN  AFH ****
#define set_IAPCN_FOEN           IAPN|=0x20
#define set_IAPCN_FCEN           IAPN|=0x10
#define set_IAPCN_FCTRL3         IAPN|=0x08
#define set_IAPCN_FCTRL2         IAPN|=0x04
#define set_IAPCN_FCTRL1         IAPN|=0x02
#define set_IAPCN_FCTRL0         IAPN|=0x01
                                   
#define clr_IAPCN_FOEN           IAPN&=0xDF
#define clr_IAPCN_FCEN           IAPN&=0xEF
#define clr_IAPCN_FCTRL3         IAPN&=0xF7
#define clr_IAPCN_FCTRL2         IAPN&=0xFB
#define clr_IAPCN_FCTRL1         IAPN&=0xFD
#define clr_IAPCN_FCTRL0         IAPN&=0xFE

//**** P0M1  B1H PAGE0 ****
#define set_P0M1_7               P0M1|=0x80
#define set_P0M1_6               P0M1|=0x40
#define set_P0M1_5               P0M1|=0x20 
#define set_P0M1_4               P0M1|=0x10
#define set_P0M1_3               P0M1|=0x08
#define set_P0M1_2               P0M1|=0x04
#define set_P0M1_1               P0M1|=0x02
#define set_P0M1_0               P0M1|=0x01
                                 
#define clr_P0M1_7               P0M1&=0x7F
#define clr_P0M1_6               P0M1&=0xBF
#define clr_P0M1_5               P0M1&=0xDF
#define clr_P0M1_4               P0M1&=0xEF
#define clr_P0M1_3               P0M1&=0xF7
#define clr_P0M1_2               P0M1&=0xFB
#define clr_P0M1_1               P0M1&=0xFD
#define clr_P0M1_0               P0M1&=0xFE

//**** P0S  B2H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_P0S_7                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x80;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_6                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x40;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_5                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x20;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_4                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x10;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_3                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x08;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_2                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x04;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_1                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0S_0                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S|=0x01;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
                                  
#define clr_P0S_7                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0x7F;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_6                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xBF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_5                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xDF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_4                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xEF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_3                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xF7;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_2                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xFB;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_1                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0S_0                BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0S&=0xFE;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP

//**** P0M2    B2H PAGE0 ****
#define set_P0M2_7               P0M2|=0x80
#define set_P0M2_6               P0M2|=0x40
#define set_P0M2_5               P0M2|=0x20 
#define set_P0M2_4               P0M2|=0x10
#define set_P0M2_3               P0M2|=0x08
#define set_P0M2_2               P0M2|=0x04
#define set_P0M2_1               P0M2|=0x02
#define set_P0M2_0               P0M2|=0x01
                                 
#define clr_P0M2_7               P0M2&=0x7F
#define clr_P0M2_6               P0M2&=0xBF
#define clr_P0M2_5               P0M2&=0xDF
#define clr_P0M2_4               P0M2&=0xEF
#define clr_P0M2_3               P0M2&=0xF7
#define clr_P0M2_2               P0M2&=0xFB
#define clr_P0M2_1               P0M2&=0xFD
#define clr_P0M2_0               P0M2&=0xFE


//**** P0SR    B0H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_P0SR_7               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x80;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_6               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x40;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_5               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x20;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_4               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x10;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_3               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x08;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_2               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x04;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_1               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P0SR_0               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR|=0x01;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
                                 
#define clr_P0SR_7               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0x7F;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_6               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xBF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_5               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xDF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_4               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xEF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_3               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xF7;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_2               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xFB;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_1               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P0SR_0               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P0SR&=0xFE;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP



//**** P1S B3H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_P1S_7               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x80;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_6               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x40;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_5               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x20;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_4               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x10;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_3               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x08;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_2               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x04;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_1               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1S_0               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S|=0x01;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
                               
#define clr_P1S_7               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0x7F;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_6               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xBF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_5               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xDF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_4               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xEF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_3               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xF7;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_2               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xFB;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_1               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1S_0               BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1S&=0xFE;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP


//**** P1SR    B4H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_P1SR_7              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x80;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_6              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x40;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_5              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x20;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_4              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x10;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_3              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x08;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_2              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x04;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_1              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_P1SR_0              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR|=0x01;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
                                
#define clr_P1SR_7              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0x7F;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_6              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xBF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_5              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xDF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_4              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xEF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_3              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xF7;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_2              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xFB;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_1              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_P1SR_0              BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;P1SR&=0xFE;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP

//**** P2S    B5H  ALL PAGE ****
#define set_P2S_P20UP           P2S|=0x80
#define set_P2S_T1OE            P2S|=0x08
#define set_P2S_T0OE            P2S|=0x04
#define set_P2S_P2S0            P2S|=0x01
                                
#define clr_P2S_P20UP           P2S&=0x7F
#define clr_P2S_T1OE            P2S&=0xF7
#define clr_P2S_T0OE            P2S&=0xFB
#define clr_P2S_P2S0            P2S&=0xFE

//**** IPH    B7H PAGE0 ****                    
#define set_IPH_PADCH           IPH|=0x40
#define set_IPH_PBODH           IPH|=0x20
#define set_IPH_PSH             IPH|=0x10
#define set_IPH_PT1H            IPH|=0x08
#define set_IPH_PX11            IPH|=0x04
#define set_IPH_PT0H            IPH|=0x02
#define set_IPH_PX0H            IPH|=0x01
                                   
#define clr_IPH_PADCH           IPH&=0xBF
#define clr_IPH_PBODH           IPH&=0xDF
#define clr_IPH_PSH             IPH&=0xEF
#define clr_IPH_PT1H            IPH&=0xF7
#define clr_IPH_PX11            IPH&=0xFB
#define clr_IPH_PT0H            IPH&=0xFD
#define clr_IPH_PX0H            IPH&=0xFE

//**** PWMINTC B7H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_PWMINTC_INTTYP1     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC|=0x20;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PWMINTC_INTTYP0     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC|=0x10;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PWMINTC_INTSEL2     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC|=0x04;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PWMINTC_INTSEL1     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PWMINTC_INTSEL0     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC|=0x01;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
                                
#define clr_PWMINTC_INTTYP1     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC&=0xDF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PWMINTC_INTTYP0     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC&=0xEF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PWMINTC_INTSEL2     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC&=0xFB;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PWMINTC_INTSEL1     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PWMINTC_INTSEL0     BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PWMINTC&=0xFE;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP

//**** IP    B8H  ****
#define set_IP_PADC             PADC=1
#define set_IP_PBOD             PBOD=1
#define set_IP_PS               PS  =1
#define set_IP_PT1              PT1 =1
#define set_IP_PX1              PX1 =1
#define set_IP_PT0              PT0 =1
#define set_IP_PX0              PX0 =1
                                
#define clr_IP_PADC             PADC=0
#define clr_IP_PBOD             PBOD=0
#define clr_IP_PS               PS  =0
#define clr_IP_PT1              PT1 =0
#define clr_IP_PX1              PX1 =0
#define clr_IP_PT0              PT0 =0
#define clr_IP_PX0              PX0 =0

//**** SADEN    B9H ****
//**** SADEN_1  8AH ****
//**** SADDR_1  BBH ****
//**** I2DAT    BCH ****
//**** I2STAT    BDH ****
//**** I2CLK    BEH ****

//**** I2TOC    BFH ****
#define set_I2TOC_I2TOCEN       I2TOC|=0x04
#define set_I2TOC_DIV           I2TOC|=0x02
#define set_I2TOC_I2TOF         I2TOC|=0x01
                                
#define clr_I2TOC_I2TOCEN       I2TOC&=0xFB
#define clr_I2TOC_DIV           I2TOC&=0xFD
#define clr_I2TOC_I2TOF         I2TOC&=0xFE

//**** I2CON  C0H **** 
#define set_I2CON_I2CEN         I2CEN    = 1
#define set_I2CON_STA           STA      = 1
#define set_I2CON_STO           STO      = 1
#define set_I2CON_SI            SI       = 1
#define set_I2CON_AA            AA       = 1
#define set_I2CON_I2CPX         I2CPX    = 1
            
#define clr_I2CON_I2CEN         I2CEN    = 0
#define clr_I2CON_STA           STA      = 0
#define clr_I2CON_STO           STO      = 0
#define clr_I2CON_SI            SI       = 0
#define clr_I2CON_AA            AA       = 0
#define clr_I2CON_I2CPX         I2CPX    = 0 

//**** I2ADDR    C1H ****
#define set_I2ADDR_GC           I2ADDR|= 0x01
#define clr_I2ADDR_GC           I2ADDR&= 0xFE

//**** ADCRL    C2H ****
//**** ADCRH    C3H ****

//**** T3CON    C4H  PAGE0 ****                     
#define set_T3CON_SMOD_1        T3CON|= 0x80
#define set_T3CON_SMOD0_1       T3CON|= 0x40
#define set_T3CON_BRCK          T3CON|= 0x20
#define set_T3CON_TF3           T3CON|= 0x10
#define set_T3CON_TR3           T3CON|= 0x08
#define set_T3CON_T3PS2         T3CON|= 0x04
#define set_T3CON_T3PS1         T3CON|= 0x02
#define set_T3CON_T3PS0         T3CON|= 0x01
                                  
#define clr_T3CON_SMOD_1        T3CON&= 0x7F
#define clr_T3CON_SMOD0_1       T3CON&= 0xBF
#define clr_T3CON_BRCK          T3CON&= 0xDF
#define clr_T3CON_TF3           T3CON&= 0xEF
#define clr_T3CON_TR3           T3CON&= 0xF7
#define clr_T3CON_T3PS2         T3CON&= 0xFB
#define clr_T3CON_T3PS1         T3CON&= 0xFD
#define clr_T3CON_T3PS0         T3CON&= 0xFE

//**** PWM4H  C4H  PAGE1 **** SFRS must set as 1 to modify this register  
//**** RL3    C5H PAGE0 ****
//**** PWM5H  C5H PAGE1 **** SFRS must set as 1 to modify this register  
//**** RH3    C6H PAGE0 ****

//**** PIOCON1 C6H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_PIOCON1_PIO15       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1|=0x20;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PIOCON1_PIO13       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1|=0x08;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PIOCON1_PIO12       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1|=0x04;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_PIOCON1_PIO11       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
            
#define clr_PIOCON1_PIO15       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1&=0xDF;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PIOCON1_PIO13       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1&=0xF7;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PIOCON1_PIO12       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1&=0xFB;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_PIOCON1_PIO11       BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;PIOCON1&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP

//**** T2CON  C8H ****
#define set_T2CON_TF2           TF2      = 1
#define set_T2CON_TR2           TR2      = 1
#define set_T2CON_CMRL2         CM_RL2    = 1
                                
#define clr_T2CON_TF2           TF2      = 0
#define clr_T2CON_TR2           TR2      = 0
#define clr_T2CON_CMRL2         CM_RL2    = 0

//**** T2MOD  C9H ****                     
#define set_T2MOD_LDEN          T2MOD|=0x80
#define set_T2MOD_T2DIV2        T2MOD|=0x40
#define set_T2MOD_T2DIV1        T2MOD|=0x20
#define set_T2MOD_T2DIV0        T2MOD|=0x10
#define set_T2MOD_CAPCR         T2MOD|=0x08
#define set_T2MOD_CMPCR         T2MOD|=0x04
#define set_T2MOD_LDTS1         T2MOD|=0x02
#define set_T2MOD_LDTS0         T2MOD|=0x01
                                       
#define clr_T2MOD_LDEN          T2MOD&=0x7F
#define clr_T2MOD_T2DIV2        T2MOD&=0xBF
#define clr_T2MOD_T2DIV1        T2MOD&=0xDF
#define clr_T2MOD_T2DIV0        T2MOD&=0xEF
#define clr_T2MOD_CAPCR         T2MOD&=0xF7
#define clr_T2MOD_CMPCR         T2MOD&=0xFB
#define clr_T2MOD_LDTS1         T2MOD&=0xFD
#define clr_T2MOD_LDTS0         T2MOD&=0xFE

//**** RCMP2H CAH ****
//**** RCMP2L CBH ****
//**** TL2    CCH PAGE0 ****
//**** PWM4L   CCH PAGE1 **** SFRS must set as 1 to modify this register  
//**** TH2    CDH PAGE0 ****
//**** PWM5L  CDH PAGE1 **** SFRS must set as 1 to modify this register  
//**** ADCMPL  CEH **** 
//**** ADCMPH  CFH ****

/****  PSW     D0H ****/
#define set_PSW_CY              CY  = 1
#define set_PSW_AC              AC  = 1
#define set_PSW_F0              F0  = 1 
#define set_PSW_RS1             RS1 = 1
#define set_PSW_RS0             RS0 = 1
#define set_PSW_OV              OV   = 1
#define set_PSW_P               P    = 1
                                
#define clr_PSW_CY              CY  = 0
#define clr_PSW_AC              AC  = 0
#define clr_PSW_F0              F0  = 0 
#define clr_PSW_RS1             RS1 = 0
#define clr_PSW_RS0             RS0 = 0
#define clr_PSW_OV              OV   = 0
#define clr_PSW_P               P    = 0

//**** PWMPH    D1H ****
//**** PWM0H    D2H ****
//**** PWM1H    D3H ****
//**** PWM2H    D4H ****
//**** PWM3H    D5H  ****


//**** FBD    D7H ****
#define set_FBD_FBF             FBD|=0x80
#define set_FBD_FBINLS          FBD|=0x40
#define set_FBD_FBD5            FBD|=0x20
#define set_FBD_FBD4            FBD|=0x10
#define set_FBD_FBD3            FBD|=0x08
#define set_FBD_FBD2            FBD|=0x04
#define set_FBD_FBD1            FBD|=0x02
#define set_FBD_FBD0            FBD|=0x01
                                
#define clr_FBD_FBF             FBD&=0x7F
#define clr_FBD_FBINLS          FBD&=0xBF
#define clr_FBD_FBD5            FBD&=0xDF
#define clr_FBD_FBD4            FBD&=0xEF
#define clr_FBD_FBD3            FBD&=0xF7
#define clr_FBD_FBD2            FBD&=0xFB
#define clr_FBD_FBD1            FBD&=0xFD
#define clr_FBD_FBD0            FBD&=0xFE

/**** PWMCON0      D8H ****/
#define set_PWMCON0_PWMRUN      PWMRUN   = 1
#define set_PWMCON0_LOAD        LOAD     = 1
#define set_PWMCON0_PWMF        PWMF     = 1
#define set_PWMCON0_CLRPWM      CLRPWM   = 1
                                
#define clr_PWMCON0_PWMRUN      PWMRUN   = 0
#define clr_PWMCON0_LOAD        LOAD     = 0
#define clr_PWMCON0_PWMF        PWMF     = 0 
#define clr_PWMCON0_CLRPWM      CLRPWM   = 0

//**** PWMPL    D9H ****
//**** PWM0L    DAH ****
//**** PWM1L    DBH ****
//**** PWM2L    DCH ****
//**** PWM3L    DDH ****

//**** PIOCON0  DEH ****
#define set_PIOCON0_PIO05       PIOCON0|=0x20
#define set_PIOCON0_PIO04       PIOCON0|=0x10
#define set_PIOCON0_PIO03       PIOCON0|=0x08
#define set_PIOCON0_PIO02       PIOCON0|=0x04
#define set_PIOCON0_PIO01       PIOCON0|=0x02
#define set_PIOCON0_PIO00       PIOCON0|=0x01
                                
#define clr_PIOCON0_PIO05       PIOCON0&=0xDF
#define clr_PIOCON0_PIO04       PIOCON0&=0xEF
#define clr_PIOCON0_PIO03       PIOCON0&=0xF7
#define clr_PIOCON0_PIO02       PIOCON0&=0xFB
#define clr_PIOCON0_PIO01       PIOCON0&=0xFD
#define clr_PIOCON0_PIO00       PIOCON0&=0xFE

//**** PWMCON1  DFH ****
#define set_PWMCON1_PWMMOD1     PWMCON1|=0x80
#define set_PWMCON1_PWMMOD0     PWMCON1|=0x40
#define set_PWMCON1_GP          PWMCON1|=0x20
#define set_PWMCON1_PWMTYP      PWMCON1|=0x10
#define set_PWMCON1_FBINEN      PWMCON1|=0x08
#define set_PWMCON1_PWMDIV2     PWMCON1|=0x04 
#define set_PWMCON1_PWMDIV1     PWMCON1|=0x02
#define set_PWMCON1_PWMDIV0     PWMCON1|=0x01
                                
#define clr_PWMCON1_PWMMOD1     PWMCON1&=0x7F
#define clr_PWMCON1_PWMMOD0     PWMCON1&=0xBF
#define clr_PWMCON1_GP          PWMCON1&=0xDF
#define clr_PWMCON1_PWMTYP      PWMCON1&=0xEF
#define clr_PWMCON1_FBINEN      PWMCON1&=0xF7
#define clr_PWMCON1_PWMDIV2     PWMCON1&=0xFB 
#define clr_PWMCON1_PWMDIV1     PWMCON1&=0xFD
#define clr_PWMCON1_PWMDIV0     PWMCON1&=0xFE

//**** ACC  E0H ****

//**** ADCCON1  E1H ****
#define set_ADCCON1_STADCPX     ADCCON1|=0x40
#define set_ADCCON1_ETGTYP1     ADCCON1|=0x08
#define set_ADCCON1_ETGTYP0     ADCCON1|=0x04
#define set_ADCCON1_ADCEX       ADCCON1|=0x02
#define set_ADCCON1_ADCEN       ADCCON1|=0x01
                                
#define clr_ADCCON1_STADCPX     ADCCON1&=0xBF
#define clr_ADCCON1_ETGTYP1     ADCCON1&=0xF7
#define clr_ADCCON1_ETGTYP0     ADCCON1&=0xFB
#define clr_ADCCON1_ADCEX       ADCCON1&=0xFD
#define clr_ADCCON1_ADCEN       ADCCON1&=0xFE

//**** ADCON2    E2H ****
#define set_ADCCON2_ADFBEN      ADCCON2|=0x80
#define set_ADCCON2_ADCMPOP     ADCCON2|=0x40
#define set_ADCCON2_ADCMPEN     ADCCON2|=0x20
#define set_ADCCON2_ADCMPO      ADCCON2|=0x10
                                
#define clr_ADCCON2_ADFBEN      ADCCON2&=0x7F
#define clr_ADCCON2_ADCMPOP     ADCCON2&=0xBF
#define clr_ADCCON2_ADCMPEN     ADCCON2&=0xDF
#define clr_ADCCON2_ADCMPO      ADCCON2&=0xEF

//**** ADCDLY    E3H ****
//**** C0L      E4H ****
//**** C0H      E5H ****
//**** C1L      E6H ****
//**** C1H      E7H ****

//**** ADCCON0  EAH ****
#define set_ADCCON0_ADCF        ADCF     = 1
#define set_ADCCON0_ADCS        ADCS     = 1
#define set_ADCCON0_ETGSEL1     ETGSEL1  = 1
#define set_ADCCON0_ETGSEL0     ETGSEL0  = 1
#define set_ADCCON0_ADCHS3      ADCHS3   = 1
#define set_ADCCON0_ADCHS2      ADCHS2   = 1
#define set_ADCCON0_ADCHS1      ADCHS1   = 1
#define set_ADCCON0_ADCHS0      ADCHS0   = 1
                                
#define clr_ADCCON0_ADCF        ADCF     = 0
#define clr_ADCCON0_ADCS        ADCS     = 0
#define clr_ADCCON0_ETGSEL1     ETGSEL1  = 0
#define clr_ADCCON0_ETGSEL0     ETGSEL0  = 0
#define clr_ADCCON0_ADCHS3      ADCHS3   = 0
#define clr_ADCCON0_ADCHS2      ADCHS2   = 0
#define clr_ADCCON0_ADCHS1      ADCHS1   = 0
#define clr_ADCCON0_ADCHS0      ADCHS0   = 0

//**** PICON  E9H  ****
#define set_PICON_PIT67         PICON|=0x80
#define set_PICON_PIT45         PICON|=0x40
#define set_PICON_PIT3          PICON|=0x20
#define set_PICON_PIT2          PICON|=0x10
#define set_PICON_PIT1          PICON|=0x08
#define set_PICON_PIT0          PICON|=0x04
#define set_PICON_PIPS1         PICON|=0x02
#define set_PICON_PIPS0         PICON|=0x01
                                  
#define clr_PICON_PIT67         PICON&=0x7F
#define clr_PICON_PIT45         PICON&=0xBF
#define clr_PICON_PIT3          PICON&=0xDF
#define clr_PICON_PIT2          PICON&=0xEF
#define clr_PICON_PIT1          PICON&=0xF7
#define clr_PICON_PIT0          PICON&=0xFB
#define clr_PICON_PIPS1         PICON&=0xFD
#define clr_PICON_PIPS0         PICON&=0xFE

//**** PINEN    EAH **** 
#define set_PINEN_PINEN7        PINEN|=0x80
#define set_PINEN_PINEN6        PINEN|=0x40
#define set_PINEN_PINEN5        PINEN|=0x20
#define set_PINEN_PINEN4        PINEN|=0x10
#define set_PINEN_PINEN3        PINEN|=0x08
#define set_PINEN_PINEN2        PINEN|=0x04
#define set_PINEN_PINEN1        PINEN|=0x02
#define set_PINEN_PINEN0        PINEN|=0x01
                                  
#define clr_PINEN_PINEN7        PINEN&=0x7F
#define clr_PINEN_PINEN6        PINEN&=0xBF
#define clr_PINEN_PINEN5        PINEN&=0xDF
#define clr_PINEN_PINEN4        PINEN&=0xEF
#define clr_PINEN_PINEN3        PINEN&=0xF7
#define clr_PINEN_PINEN2        PINEN&=0xFB
#define clr_PINEN_PINEN1        PINEN&=0xFD
#define clr_PINEN_PINEN0        PINEN&=0xFE
                            
//**** PIPEN     EBH ****
#define set_PIPEN_PIPEN7        PIPEN|=0x80
#define set_PIPEN_PIPEN6        PIPEN|=0x40
#define set_PIPEN_PIPEN5        PIPEN|=0x20
#define set_PIPEN_PIPEN4        PIPEN|=0x10
#define set_PIPEN_PIPEN3        PIPEN|=0x08
#define set_PIPEN_PIPEN2        PIPEN|=0x04
#define set_PIPEN_PIPEN1        PIPEN|=0x02
#define set_PIPEN_PIPEN0        PIPEN|=0x01
                                  
#define clr_PIPEN_PIPEN7        PIPEN&=0x7F
#define clr_PIPEN_PIPEN6        PIPEN&=0xBF
#define clr_PIPEN_PIPEN5        PIPEN&=0xDF
#define clr_PIPEN_PIPEN4        PIPEN&=0xEF
#define clr_PIPEN_PIPEN3        PIPEN&=0xF7
#define clr_PIPEN_PIPEN2        PIPEN&=0xFB
#define clr_PIPEN_PIPEN1        PIPEN&=0xFD
#define clr_PIPEN_PIPEN0        PIPEN&=0xFE
   

//**** C2L  EDH ****  
//**** C2H  EEH ****

//**** EIP  EFH ****                      
#define set_EIP_PT2             EIP|=0x80
#define set_EIP_PSPI            EIP|=0x40
#define set_EIP_PFB             EIP|=0x20
#define set_EIP_PWDT            EIP|=0x10
#define set_EIP_PPWM            EIP|=0x08
#define set_EIP_PCAP            EIP|=0x04
#define set_EIP_PPI             EIP|=0x02
#define set_EIP_PI2C            EIP|=0x01
                                   
#define clr_EIP_PT2             EIP&=0x7F
#define clr_EIP_PSPI            EIP&=0xBF
#define clr_EIP_PFB             EIP&=0xDF
#define clr_EIP_PWDT            EIP&=0xEF
#define clr_EIP_PPWM            EIP&=0xF7
#define clr_EIP_PCAP            EIP&=0xFB
#define clr_EIP_PPI             EIP&=0xFD
#define clr_EIP_PI2C            EIP&=0xFE

//**** B  F0H ****

//**** CAPCON3    F1H ****
#define set_CAPCON3_CAP13       CAPCON3|=0x80
#define set_CAPCON3_CAP12       CAPCON3|=0x40
#define set_CAPCON3_CAP11       CAPCON3|=0x20
#define set_CAPCON3_CAP10       CAPCON3|=0x10
#define set_CAPCON3_CAP03       CAPCON3|=0x08
#define set_CAPCON3_CAP02       CAPCON3|=0x04
#define set_CAPCON3_CAP01       CAPCON3|=0x02
#define set_CAPCON3_CAP00       CAPCON3|=0x01
                                
#define clr_CAPCON3_CAP13       CAPCON3&=0x7F
#define clr_CAPCON3_CAP12       CAPCON3&=0xBF
#define clr_CAPCON3_CAP11       CAPCON3&=0xDF
#define clr_CAPCON3_CAP10       CAPCON3&=0xEF
#define clr_CAPCON3_CAP03       CAPCON3&=0xF7
#define clr_CAPCON3_CAP02       CAPCON3&=0xFB
#define clr_CAPCON3_CAP01       CAPCON3&=0xFD
#define clr_CAPCON3_CAP00       CAPCON3&=0xFE

//**** CAPCON4    F2H ****
#define set_CAPCON4_CAP23       CAPCON4|=0x08
#define set_CAPCON4_CAP22       CAPCON4|=0x04
#define set_CAPCON4_CAP21       CAPCON4|=0x02
#define set_CAPCON4_CAP20       CAPCON4|=0x01
                                
#define clr_CAPCON4_CAP23       CAPCON4&=0xF7
#define clr_CAPCON4_CAP22       CAPCON4&=0xFB
#define clr_CAPCON4_CAP21       CAPCON4&=0xFD
#define clr_CAPCON4_CAP20       CAPCON4&=0xFE

//**** SPCR    F3H PAGE0 ****
#define set_SPCR_SSOE           SPCR|=0x80
#define set_SPCR_SPIEN          SPCR|=0x40
#define set_SPCR_LSBFE          SPCR|=0x20
#define set_SPCR_MSTR           SPCR|=0x10
#define set_SPCR_CPOL           SPCR|=0x08
#define set_SPCR_CPHA           SPCR|=0x04
#define set_SPCR_SPR1           SPCR|=0x02
#define set_SPCR_SPR0           SPCR|=0x01
                                
#define clr_SPCR_SSOE           SPCR&=0x7F
#define clr_SPCR_SPIEN          SPCR&=0xBF
#define clr_SPCR_LSBFE          SPCR&=0xDF
#define clr_SPCR_MSTR           SPCR&=0xEF
#define clr_SPCR_CPOL           SPCR&=0xF7
#define clr_SPCR_CPHA           SPCR&=0xFB
#define clr_SPCR_SPR1           SPCR&=0xFD
#define clr_SPCR_SPR0           SPCR&=0xFE

//**** SPCR2    F3H PAGE1 **** SFRS must set as 1 to modify this register  
#define set_SPCR2_SPIS1         BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;SPCR2|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define set_SPCR2_SPIS0         BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;SPCR2|=0x02;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
                                
#define clr_SPCR2_SPIS1         BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;SPCR2&=0xFD;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP
#define clr_SPCR2_SPIS0         BIT_TMP=EA;TA=0xAA;TA=0x55;SFRS=0x01;SPCR2&=0xFE;TA=0xAA;TA=0x55;SFRS=0x00;EA=BIT_TMP

//**** SPSR      F4H ****
#define set_SPSR_SPIF           SPSR|=0x80
#define set_SPSR_WCOL           SPSR|=0x40
#define set_SPSR_SPIOVF         SPSR|=0x20
#define set_SPSR_MODF           SPSR|=0x10
#define set_SPSR_DISMODF        SPSR|=0x08
                                   
#define clr_SPSR_SPIF           SPSR&=0x7F
#define clr_SPSR_WCOL           SPSR&=0xBF
#define clr_SPSR_SPIOVF         SPSR&=0xDF
#define clr_SPSR_MODF           SPSR&=0xEF
#define clr_SPSR_DISMODF        SPSR&=0xF7

//**** SPDR    F5H ****

//**** AINDIDS  F6H ****
#define set_AINDIDS_P11DIDS     AINDIDS|=0x80
#define set_AINDIDS_P03DIDS     AINDIDS|=0x40
#define set_AINDIDS_P04DIDS     AINDIDS|=0x20
#define set_AINDIDS_P05DIDS     AINDIDS|=0x10
#define set_AINDIDS_P06DIDS     AINDIDS|=0x08
#define set_AINDIDS_P07DIDS     AINDIDS|=0x04
#define set_AINDIDS_P30DIDS     AINDIDS|=0x02
#define set_AINDIDS_P17DIDS     AINDIDS|=0x01
                                
#define clr_AINDIDS_P11DIDS     AINDIDS&=0x7F
#define clr_AINDIDS_P03DIDS     AINDIDS&=0xBF
#define clr_AINDIDS_P04DIDS     AINDIDS&=0xDF
#define clr_AINDIDS_P05DIDS     AINDIDS&=0xEF
#define clr_AINDIDS_P06DIDS     AINDIDS&=0xF7
#define clr_AINDIDS_P07DIDS     AINDIDS&=0xFB
#define clr_AINDIDS_P30DIDS     AINDIDS&=0xFD
#define clr_AINDIDS_P17DIDS     AINDIDS&=0xFE

//**** EIPH      F7H ****
#define set_EIPH_PT2H           EIPH|=0x80
#define set_EIPH_PSPIH          EIPH|=0x40
#define set_EIPH_PFBH           EIPH|=0x20
#define set_EIPH_PWDTH          EIPH|=0x10
#define set_EIPH_PPWMH          EIPH|=0x08
#define set_EIPH_PCAPH          EIPH|=0x04
#define set_EIPH_PPIH           EIPH|=0x02
#define set_EIPH_PI2CH          EIPH|=0x01
                                   
#define clr_EIPH_PT2H           EIPH&=0x7F
#define clr_EIPH_PSPIH          EIPH&=0xBF
#define clr_EIPH_PFBH           EIPH&=0xDF
#define clr_EIPH_PWDTH          EIPH&=0xEF
#define clr_EIPH_PPWMH          EIPH&=0xF7
#define clr_EIPH_PCAPH          EIPH&=0xFB
#define clr_EIPH_PPIH           EIPH&=0xFD
#define clr_EIPH_PI2CH          EIPH&=0xFE

/**** SCON_1    F8H ****/
#define set_SCON_1_FE_1         FE_1  = 1
#define set_SCON_1_SM1_1        SM1_1 = 1
#define set_SCON_1_SM2_1        SM2_1 = 1
#define set_SCON_1_REN_1        REN_1 = 1
#define set_SCON_1_TB8_1        TB8_1 = 1
#define set_SCON_1_RB8_1        RB8_1 = 1
#define set_SCON_1_TI_1         TI_1  = 1
#define set_SCON_1_RI_1         RI_1  = 1
                                
#define clr_SCON_1_FE_1         FE_1  = 0
#define clr_SCON_1_SM1_1        SM1_1 = 0
#define clr_SCON_1_SM2_1        SM2_1 = 0
#define clr_SCON_1_REN_1        REN_1 = 0
#define clr_SCON_1_TB8_1        TB8_1 = 0
#define clr_SCON_1_RB8_1        RB8_1 = 0
#define clr_SCON_1_TI_1         TI_1  = 0
#define clr_SCON_1_RI_1         RI_1  = 0

//**** PDTEN    F9H ****
#define set_PDTEN_PDT45EN       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;PDTEN|= 0x04  ;EA=BIT_TMP;
#define set_PDTEN_PDT23EN       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;PDTEN|= 0x02  ;EA=BIT_TMP;
#define set_PDTEN_PDT01EN       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;PDTEN|= 0x01  ;EA=BIT_TMP;
                                
#define clr_PDTEN_PDT45EN       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;PDTEN &= 0xFB ;EA=BIT_TMP;
#define clr_PDTEN_PDT23EN       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;PDTEN &= 0xFD ;EA=BIT_TMP;
#define clr_PDTEN_PDT01EN       BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;PDTEN &= 0xFE ;EA=BIT_TMP;

//**** PDTCNT    FAH ****

//**** PMEN     FBH ****                   
#define set_PMEN5               PMEN|=0x20
#define set_PMEN4               PMEN|=0x10
#define set_PMEN3               PMEN|=0x08
#define set_PMEN2               PMEN|=0x04
#define set_PMEN1               PMEN|=0x02
#define set_PMEN0               PMEN|=0x01
                                    
#define clr_PMEN5               PMEN&=0xDF
#define clr_PMEN4               PMEN&=0xEF
#define clr_PMEN3               PMEN&=0xF7
#define clr_PMEN2               PMEN&=0xFB
#define clr_PMEN1               PMEN&=0xFD
#define clr_PMEN0               PMEN&=0xFE
                            
//**** PMD    FCH ****                       
#define set_PMD7                PMD|=0x80
#define set_PMD6                PMD|=0x40
#define set_PMD5                PMD|=0x20
#define set_PMD4                PMD|=0x10
#define set_PMD3                PMD|=0x08
#define set_PMD2                PMD|=0x04
#define set_PMD1                PMD|=0x02
#define set_PMD0                PMD|=0x01
                                   
#define clr_PMD7                PMD&=0x7F
#define clr_PMD6                PMD&=0xBF
#define clr_PMD5                PMD&=0xDF
#define clr_PMD4                PMD&=0xEF
#define clr_PMD3                PMD&=0xF7
#define clr_PMD2                PMD&=0xFB
#define clr_PMD1                PMD&=0xFD
#define clr_PMD0                PMD&=0xFE

//****  EIP1     FEH ****                     
#define set_EIP1_PWKT           EIP1|=0x04
#define set_EIP1_PT3            EIP1|=0x02
#define set_EIP1_PS_1           EIP1|=0x01
                                   
#define clr_EIP1_PWKT           EIP1&=0xFB
#define clr_EIP1_PT3            EIP1&=0xFD
#define clr_EIP1_PS_1           EIP1&=0xFE

//**** EIPH1    FFH ****                
#define set_EIPH1_PWKTH         EIPH1|=0x04
#define set_EIPH1_PT3H          EIPH1|=0x02
#define set_EIPH1_PSH_1         EIPH1|=0x01
                                  
#define clr_EIPH1_PWKTH         EIPH1&=0xFB
#define clr_EIPH1_PT3H          EIPH1&=0xFD
#define clr_EIPH1_PSH_1         EIPH1&=0xFE