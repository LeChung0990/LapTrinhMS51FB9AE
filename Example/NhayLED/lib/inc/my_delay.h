#ifndef MY_DELAY_H_
#define MY_DELAY_H_

#include "ms51.h"
#include "macro.h"

#define    ENABLE_CLOCK_OUT             set_CKCON_CLOEN;
/*-------------------- Timer0 basic define --------------------*/
#define    ENABLE_TIMER0_MODE0           TMOD&=0xF0
#define    ENABLE_TIMER0_MODE1           clr_TMOD_GATE_T0; clr_TMOD_CT_T0 ;clr_TMOD_M1_T0;set_TMOD_M0_T0;
#define    ENABLE_TIMER0_MODE2           TMOD&=0xF0;TMOD|=0x02
#define    ENABLE_TIMER0_MODE3           TMOD&=0xF0;TMOD|=0x03
#define    TIMER0_FSYS                   set_CKCON_T0M
#define    TIMER0_FSYS_DIV12             clr_CKCON_T0M
                                         
#define    TIMER0_MODE0_ENABLE           TMOD&=0xF0
#define    TIMER0_MODE1_ENABLE           TMOD&=0xF0;TMOD|=0x01
#define    TIMER0_MODE2_ENABLE           TMOD&=0xF0;TMOD|=0x02
#define    TIMER0_MODE3_ENABLE           TMOD&=0xF0;TMOD|=0x03

#define TIMER0        0
#define TIMER1        1
#define TIMER2        2
#define TIMER3        3

/*****************************************************************************************
* For TIMER VALUE setting is base on " option -> C51 -> Preprocesser Symbols -> Define "
*****************************************************************************************/
// define timer base value Fsys = 16MHz 
  #define TIMER_DIV12_VALUE_10us_FOSC_160000      65536-8    //13*12/16000000 = 10 uS,        // Timer divider = 12 for TM0/TM1
  #define TIMER_DIV12_VALUE_100us_FOSC_160000      65536-130    //130*12/16000000 = 10 uS,      // Timer divider = 12 
  #define TIMER_DIV12_VALUE_1ms_FOSC_160000        65536-1334    //1334*12/16000000 = 1 mS,       // Timer divider = 12 
  #define TIMER_DIV12_VALUE_10ms_FOSC_160000      65536-13334    //13334*12/16000000 = 10 mS     // Timer divider = 12 
  #define TIMER_DIV12_VALUE_40ms_FOSC_160000      65536-53336    //53336*12/16000000 = 40 ms      // Timer divider = 12 
  #define TIMER_DIV4_VALUE_10us_FOSC_160000        65536-30    //40*4/16000000 = 10 uS,        // Timer divider = 4  for TM2/TM3
  #define TIMER_DIV4_VALUE_100us_FOSC_160000      65536-400    //400*4/16000000 = 100 us        // Timer divider = 4
  #define TIMER_DIV4_VALUE_200us_FOSC_160000      65536-800    //800*4/16000000 = 200 us        // Timer divider = 4
  #define TIMER_DIV4_VALUE_416us_FOSC_160000      65536-1650
  #define TIMER_DIV4_VALUE_500us_FOSC_160000      65536-2000    //2000*4/16000000 = 500 us      // Timer divider = 4
  #define TIMER_DIV4_VALUE_1ms_FOSC_160000        65536-4000    //4000*4/16000000 = 1 mS,       // Timer divider = 4
  #define TIMER_DIV4_VALUE_10ms_FOSC_160000        65536-40000    //40000*4/16000000 = 10 mS,       // Timer divider = 4
  #define TIMER_DIV16_VALUE_10ms_FOSC_160000      65536-10000    //10000*16/16000000 = 10 ms      // Timer  divider = 16
  #define TIMER_DIV64_VALUE_30ms_FOSC_160000      65536-7500    //7500*64/16000000 = 30 ms      // Timer divider = 64
  #define TIMER_DIV128_VALUE_1ms_FOSC_160000      65536-125      //125*128/16000000 = 1 ms    // Timer divider = 128
  #define TIMER_DIV128_VALUE_10ms_FOSC_160000      65536-1250    //1250*128/16000000 = 10 ms    // Timer divider = 128
  #define TIMER_DIV128_VALUE_100ms_FOSC_160000    65536-12500    //12500*128/16000000 = 100 ms    // Timer divider = 128
  #define TIMER_DIV128_VALUE_200ms_FOSC_160000    65536-25000    //25000*128/16000000 = 200 ms    // Timer divider = 128
  #define TIMER_DIV256_VALUE_500ms_FOSC_160000    65536-31250    //31250*256/16000000 = 500 ms   // Timer divider = 256
  #define TIMER_DIV512_VALUE_100ms_FOSC_160000    65536-3125    //3125*512/16000000 = 100ms.      // Timer Divider = 512
  #define TIMER_DIV512_VALUE_1s_FOSC_160000        65536-31250    //31250*512/16000000 = 1 s.      // Timer Divider = 512
// define timer base value Fsys = 20 MHz
  #define TIMER_DIV12_VALUE_10us_FOSC_200000      65536-17    //17*12/20000000 = 10 uS,  Timer Clock = Fsys/12
  #define TIMER_DIV12_VALUE_1ms_FOSC_200000        65536-1667      //1667*12/20000000 = 1 mS, Timer Clock = Fsys/12
  #define TIMER_DIV4_VALUE_10us_FOSC_200000        65536-50        //50*4/20000000 = 10 uS,    Timer Clock = Fsys/4
  #define TIMER_DIV4_VALUE_1ms_FOSC_200000        65536-5000      //5000*4/20000000 = 1 mS,   Timer Clock = Fsys/4
// define timer base value Fsys = 24 MHz
  #define TIMER_DIV12_VALUE_10us_FOSC_240000      65536-20      //20*12/24000000 = 10 uS,        // Timer divider = 12
  #define TIMER_DIV12_VALUE_100us_FOSC_240000      65536-200    //130*12/16000000 = 10 uS,      // Timer divider = 12 
  #define TIMER_DIV12_VALUE_1ms_FOSC_240000        65536-2000      //2000*12/24000000 = 1 mS,       // Timer divider = 12
  #define TIMER_DIV12_VALUE_10ms_FOSC_240000      65536-20000      //2000*12/24000000 = 10 mS       // Timer divider = 12
  #define TIMER_DIV4_VALUE_10us_FOSC_240000        65536-60      //60*4/24000000 = 10 uS,          // Timer divider = 4
  #define TIMER_DIV4_VALUE_100us_FOSC_240000      65536-600      //600*4/24000000 = 100 us      // Timer divider = 4
  #define TIMER_DIV4_VALUE_200us_FOSC_240000      65536-1200      //1200*4/24000000 = 200 us      // Timer divider = 4
  #define TIMER_DIV4_VALUE_500us_FOSC_240000      65536-3000      //3000*4/24000000 = 500 us      // Timer divider = 4
  #define TIMER_DIV4_VALUE_1ms_FOSC_240000        65536-6000      //6000*4/24000000 = 1 mS,         // Timer divider = 4
  #define TIMER_DIV16_VALUE_10ms_FOSC_240000      65536-15000      //15000*16/24000000 = 10 ms      // Timer divider = 16
  #define TIMER_DIV64_VALUE_30ms_FOSC_240000      65536-11250      //11250*64/24000000 = 30 ms      // Timer divider = 64
  #define TIMER_DIV128_VALUE_100ms_FOSC_240000    65536-18750      //37500*128/24000000 = 200 ms      // Timer divider = 128
  #define TIMER_DIV128_VALUE_200ms_FOSC_240000    65536-37500      //37500*128/24000000 = 200 ms      // Timer divider = 128
  #define TIMER_DIV256_VALUE_500ms_FOSC_240000    65536-46875      //46875*256/24000000 = 500 ms       // Timer divider = 256
  #define TIMER_DIV512_VALUE_100ms_FOSC_240000    65536-4687      //4687*512/24000000 = 100 ms       // Timer divider = 512
  #define TIMER_DIV512_VALUE_500ms_FOSC_240000    65536-23437      //4687*512/24000000 = 100 ms       // Timer divider = 512
  #define TIMER_DIV512_VALUE_1s_FOSC_240000        65536-46875      //46875*512/24000000 = 1 s.        // Timer Divider = 512


void DelayT0_Init(void);
void T0_Delay(uint16_t count, uint16_t u16DLYUnit);
#endif
// void Timer1_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u6DLYUnit);
// void Timer2_Delay(unsigned long u32SYSCLK,unsigned int u16TMDIV, unsigned int u16CNT, unsigned long u32DLYUnit);
// void Timer3_Delay(unsigned long u32SYSCLK,unsigned char u8TMDIV, unsigned int u16CNT, unsigned long u32DLYUnit);
// void Timer_Interrupt_Enable(unsigned char u8TM);
