/* main.c */
#include <MS51.h>
#include <macro.h>
#include <gpio.h>
#include <delay.h>
#include <pwm.h>

void main(void)
{

	GPIO_Init();
    Delay_Init();
    PWM_Init();
	while (1) {
		/* your code here */
        P15 = 0;
        Delay_Ms(100);
        P15 = 1;
        Delay_Ms(100);
	}
}
