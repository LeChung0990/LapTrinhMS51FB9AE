#include <ms51.h>
#include <macro.h>
#include <stdint.h> /*Thu vien bien*/

unsigned char a;
__bit t;
void main(void)
{
	/* P1.5, Chan 10 */
	P15_PUSHPULL_MODE;
	// DelayT0_Init();
	while (1)
	{
		// T0_Delay(1000);
		// t = 1;
		// P15 = 1;
		// Delay_Us(60);
		// P15 = 0;
		// Delay_Us(1940);
		// Delay_Ms(200);

		// P15 = 1;
		// Delay_Us(170);
		// P15 = 0;
		// Delay_Us(1830);
		// Delay_Ms(200);
	}
}
// 90 do
// P15 = 1;
// Delay_Us(130);
// P15 = 0;
// Delay_Us(1870);

//0 do
// P15 = 1;
// Delay_Us(60);
// P15 = 0;
// Delay_Us(1940);

//150 do
// P15 = 1;
// Delay_Us(170);
// P15 = 0;
// Delay_Us(1830);