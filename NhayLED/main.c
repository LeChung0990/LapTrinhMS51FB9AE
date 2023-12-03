#include <ms51.h>
#include <macro.h>
#include <stdint.h> /*Thu vien bien*/
#include <delay.h>

void main(void)
{
	/* P1.5, Chan 10 */
	P15_PUSHPULL_MODE;
	Delay_Init();
	while (1)
	{
		P15 = 1;
		Delay_Ms(500);
		P15 = 0;
		Delay_Ms(500);
	}
}

