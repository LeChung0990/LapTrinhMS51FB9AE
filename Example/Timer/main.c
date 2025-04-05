#include <MS51.h>
// #include <delay.h>
#include <stdint.h>
// #include <macro.h>
void Delay_Init(void)
{
	/*mode 1*/
	TMOD |= (1 << 0);
	TMOD &= ~(1 << 1);
	/*Choose Ftimer = Fsys = 16mhz*/
	CKCON |= (1 << 3);
	TMOD &= ~(1 << 2);
	TMOD &= ~(1 << 3);
}
void delay_1ms(void)
{
	TH0 = 0;
	TL0 = 0;
	TR0 = 1;
	while (TH0 * 256 + TL0 < 16000) {
	}
	TR0 = 0;
}

void Delay_Ms(uint16_t u16Delay)
{
	while (u16Delay) {
		--u16Delay;
		delay_1ms();
	}
}
void main(void)
{

	// EA = 1;
     P1M1&=0xDF;P1M2|=0x20;
     Delay_Init();
	while (1) {
		/* your code here */
        P15 = 0;
        Delay_Ms(1);
        // __asm__("nop\n");
        P15 = 1;
        Delay_Ms(1);
        // __asm__("nop\n");
	}
}
// void Timer0_ISR(void) __interrupt (1){}
