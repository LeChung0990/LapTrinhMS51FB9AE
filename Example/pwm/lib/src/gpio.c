/* gpio.c */
#include "gpio.h"
#include <macro.h>
/* GPIO Init */
void GPIO_Init(void)
{
	/* P1.5 */
	/* Push-pull */
	P15_PUSHPULL_MODE;

	P10_INPUT_MODE;;
}
