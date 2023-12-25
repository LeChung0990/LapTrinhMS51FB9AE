/* main.c */
#include <MS51.h>
#include <macro.h>
#include <gpio.h>
#include <delay.h>
#include <pwm.h>
uint8_t dem = 0;

void delay(void)
{
    for (uint32_t i = 0; i < 0xffff; ++i)
    {
    }
}
void main(void)
{

    GPIO_Init();

    Delay_Init();
    PWM_Init();
    while (1)
    {
        if (P10 == 0)
        {
            P15 = 1;
            PWM0_STOP();
            SET_DUTY(90);
            PWM0_RUN();
        }
        // P15 = 0;
    }
}
