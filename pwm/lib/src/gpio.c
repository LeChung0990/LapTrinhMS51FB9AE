/* gpio.c */
#include "gpio.h"
#include <macro.h>
/* GPIO Init */
void GPIO_Init(void)
{
	/* P1.5 */
	/* Push-pull */
	clr_P1M1_5;
	set_P1M2_1;
}
