#include <MS51.h>
#include <delay.h>
#include <stdlib.h>
#include <macro.h>

void main(void)
{

	EA = 1;
    
	while (1) {
		/* your code here */
        P15 = 0;
        // Delay_Ms(100);
        __asm__("nop\n");
        P15 = 1;
        // Delay_Ms(100);
        __asm__("nop\n");
	}
}
void Timer0_ISR(void) __interrupt (1){}