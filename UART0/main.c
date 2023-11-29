#include <ms51.h>
#include <stdint.h>		/*Thu vien bien*/
#include <delay.h>
#include <uart0.h>

void main(void)
{
	/* P1.5, Chan 10 */
	/* Push-pull */
	P1M1 &= ~(1 << 5);
	P1M2 |= (1 << 5);  
	UART0_Init();
	while (1) {
        UART0_SendData(0x39);
		// UART0_SendData(0x0a);
		while (UART0_GetFlag(UART0_TX_FLAG) == 0) {
		}
		UART0_ClearFlag(UART0_TX_FLAG);
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
