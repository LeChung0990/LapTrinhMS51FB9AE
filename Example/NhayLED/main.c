#include <stdint.h> /*Thu vien bien*/
#include <ms51.h>
#include <macro.h>
#include <delay.h>
#include <uart.h>

int number= 9876;
void main(void)
{
	/* P1.5, Chan 10 */
	P15_PUSHPULL_MODE;
	P06 = 1;
	P0M1 &= ~(1 << 6);
	P0M2 |= (1 << 6);
	P07 = 1;
	P0M1 &= ~(1 << 7);
	P0M2 &= ~(1 << 7);

	UART_Open(UART0_Timer3, BAUD9600);
	DelayT0_Init();
	while (1)
	{
		//UART0_STRING("chung");
		//UART0_NUMBER(number);
		P15 = 1;
		DelayT0(1, CONFIG_1MS);
		P15 = 0;
		DelayT0(1, CONFIG_1MS);
	}
}
