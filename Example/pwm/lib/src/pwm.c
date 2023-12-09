#include <MS51.h>
#include <pwm.h>
/* PWM Init */
void PWM_Init(void)
{
	CLRPWM = 1;
	CKCON &= ~(1 << 6);
	PWMCON1 &= 0x07;
	PWMCON1 |= 0x00;
	PWMPH = 0x3e;
	PWMPL = 0x7f;
	PWM0H = 0x1f;
	PWM0L = 0x40;
	P1M1 &= ~(1 << 2);
	P1M2 |= (1 << 2);
	PIOCON0 |= (1 << 0);
	PWMRUN = 1;
}