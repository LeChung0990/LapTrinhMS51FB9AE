/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2020 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

/************************************************************************************************************/
/*  File Function: MS51 Wakeup timer demo code with interrupt                                               */
/************************************************************************************************************/

#include "MS51_16K.H"


void WakeUp_Timer_ISR (void)   interrupt 17     //ISR for self wake-up timer
{
    _push_(SFRS);
  
    P12 = 0;
    Timer2_Delay(16000000,4,5,1000);
    P12 = 1;
    Timer2_Delay(16000000,4,5,1000);
    P12 = 0;
    Timer2_Delay(16000000,4,5,1000);
    P12 = 1;
    clr_WKTF;                                   //clear interrupt flag

    _pop_(SFRS);
}


/************************************************************************************************************
*    Main function 
************************************************************************************************************/
void main (void)
{
   
    P12_PUSHPULL_MODE;

    P12 = 0;
    Timer0_Delay(16000000,400,1000);
    P12 = 1;
    Timer0_Delay(16000000,400,1000);
    P12 = 0;
    Timer0_Delay(16000000,400,1000);
    P12 = 1;
    Timer0_Delay(16000000,400,1000);
    P12 = 0;
    Timer0_Delay(16000000,400,1000);
    P12 = 1;

//-----------------------------------------------------
//  WKT initial   
//-----------------------------------------------------  
    WKCON = 0x02;                     //timer base 10k, Pre-scale = 1/16
    RWK = 0XFF;                      //  if prescale is 0x00, never set RWK = 0xff
    RWK = 0X00;
    ENABLE_WKT_INTERRUPT;                          // enable WKT interrupt
    ENABLE_GLOBAL_INTERRUPT;
    set_WKCON_WKTR;                         // Wake-up timer run 

    while(1);
}

