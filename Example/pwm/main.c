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

    // GPIO_Init();

    // Delay_Init();
    // PWM_Init();

 	CLRPWM = 1;
	CKCON &= ~(1 << 6);
	PWMCON1 &= 0x07;
	PWMCON1 |= 0x00;
	PWMPH = 0x1;
	PWMPL = 0x3f;
	PWM0H = 0x0;
	PWM0L = 0x20;
	P1M1 &= ~(1 << 2);
	P1M2 |= (1 << 2);
	PIOCON0 |= (1 << 0);
	PWM1H = 0x0;
	PWM1L = 0x40;
	P1M1 &= ~(1 << 1);
	P1M2 |= (1 << 1);
	PIOCON0 |= (1 << 1);
	PWM2H = 0x0;
	PWM2L = 0x60;
	P1M1 &= ~(1 << 0);
	P1M2 |= (1 << 0);
	PIOCON0 |= (1 << 2);
	PWM3H = 0x0;
	PWM3L = 0x80;
	P0M1 &= ~(1 << 0);
	P0M2 |= (1 << 0);
	PIOCON0 |= (1 << 3);
	PWMRUN = 1;
    while (1)
    {
        // if (P10 == 0)
        // {
        //     P15 = 1;
        //     PWM0_STOP();
        //     SET_DUTY(90);
        //     PWM0_RUN();
        // }
        // P15 = 0;
    }
}
