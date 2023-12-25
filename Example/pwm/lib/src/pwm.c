#include <MS51.h>
#include <pwm.h>
#include <macro.h>

/* PWM Init */
void PWM_Init(void)
{
	uint8_t high, low;
	set_PWMCON0_CLRPWM;		/*Clearing PWM 16-bit counter*/
	// CLRPWM = 1; 
	clr_CKCON_PWMCKS;	/*The clock source of PWM is the system clock FSYS.*/
	// CKCON &= ~(1 << 6); 

	PWMCON1 &= 0x07;
	PWMCON1 |= 0x00;
	PWMPH = (uint8_t)(16000 >> 8) & 0xFF;
	PWMPL = (uint8_t)16000 & 0xFF;

	// PWM0H = 0x2f;
	// PWM0L = 0x80;

	high = (uint8_t) (((16000/100) * 100) >> 8 ) & 0xFF;
	low = (uint8_t)((16000/100) * 100) & 0xFF;

	PWM0H = (uint8_t)high;
	PWM0L = (uint8_t)low;

	P1M1 &= ~(1 << 2);
	P1M2 |= (1 << 2);
	set_PIOCON0_PIO00; /* P1.2/PWM0 pin functions as PWM0 output.*/
	// PIOCON0 |= (1 << 0); 
	PWM0_RUN();
}

void PWM0_RUN(void)
{
	set_PWMCON0_PWMRUN;
}
void PWM0_STOP(void)
{
	clr_PWMCON0_PWMRUN;
}
void SET_DUTY(uint8_t dem)
{
	uint8_t high, low;
	high = (uint8_t) (((16000/100) * dem) >> 8 ) & 0xFF;
	low = (uint8_t)((16000/100) * dem) & 0xFF;

	PWM0H = (uint8_t)high;
	PWM0L = (uint8_t)low;
}