/* delay.h */
#ifndef DELAY_H_
#define DELAY_H_
#include <stdint.h>
#include <MS51.h>
#include <macro.h>

typedef enum
{
    CONFIG_1MS = (uint16_t) 1000,
    CONFIG_1US = (uint16_t) 1
}CONFIG;

/*-------------------- Timer0 basic define --------------------*/
#define    ENABLE_TIMER0_MODE0           TMOD&=0xF0
#define    ENABLE_TIMER0_MODE1           TMOD&=0xF0;TMOD|=0x01
#define    ENABLE_TIMER0_MODE2           TMOD&=0xF0;TMOD|=0x02
#define    ENABLE_TIMER0_MODE3           TMOD&=0xF0;TMOD|=0x03
#define    TIMER0_FSYS                   set_CKCON_T0M
#define    TIMER0_FSYS_DIV12             clr_CKCON_T0M
                                         
#define    TIMER0_MODE0_ENABLE           TMOD&=0xF0
#define    TIMER0_MODE1_ENABLE           TMOD&=0xF0;TMOD|=0x01
#define    TIMER0_MODE2_ENABLE           TMOD&=0xF0;TMOD|=0x02
#define    TIMER0_MODE3_ENABLE           TMOD&=0xF0;TMOD|=0x03

void DelayT0_Init(void);
void DelayT0(uint16_t u16Count, CONFIG configdelay);

#endif
