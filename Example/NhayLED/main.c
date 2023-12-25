#include <stdint.h> /*Thu vien bien*/
#include <ms51.h>
#include <macro.h>
#include <delay.h>

void main(void)
{
	/* P1.5, Chan 10 */
	P15_PUSHPULL_MODE;
	DelayT0_Init();
	while (1)
	{
		P15 = 1;
		DelayT0(500,CONFIG_1MS);
		P15 = 0;
		DelayT0(500,CONFIG_1MS);
	}
}
