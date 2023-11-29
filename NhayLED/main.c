#include <ms51.h>
#include <macro.h>
#include <stdint.h>		/*Thu vien bien*/
#include <delay.h>


void main(void)
{
	/* P1.5, Chan 10 */
	/* Push-pull */
	clr_P1M1_5;
	set_P1M2_1; 
	Delay_Init();
	while (1) {
		P15 = 1;
		Delay_Ms(1000);
		P15 = 0;
		Delay_Ms(1000);
	}
}

// void UART0_ISR(void) __interrupt (4)
// {
// 	if (UART0_GetFlag(UART0_RX_FLAG)) {
// 		/* your code here */
// 		UART0_ClearFlag(UART0_RX_FLAG);
// 	}
// 	if (UART0_GetFlag(UART0_TX_FLAG)) {
// 		/* your code here */
// 		UART0_ClearFlag(UART0_TX_FLAG);
// 	}
// }
