#include <stdint.h> /*Thu vien bien*/
#include <ms51.h>
#include <macro.h>
#include <delay.h>
#include <i2c.h>









uint16_t dem;
void main(void)
{
	/* P1.5, Chan 10 */
	P15_PUSHPULL_MODE;
	DelayT0_Init();
	TM1637_clear();
	TM1637_init(1/*enable*/, 1/*brightness*/);
	
	// TM1637_display_digit(0x00, 9);
	P15=1;
	
	while (1)
	{
		// TM1637_init(1/*enable*/, 1/*brightness*/);
		TM1637_display_digit(0x00, (uint8_t)(dem/1000)%10);
		TM1637_display_digit(0x01, (uint8_t)(dem/100)%10);
		TM1637_display_digit(0x02, (uint8_t)(dem/10)%10);
		TM1637_display_digit(0x03, (uint8_t)(dem/1)%10);
		DelayT0(1000,CONFIG_1MS);
		++dem;
		// TM1637_init(0/*enable*/, 1/*brightness*/);
		// DelayT0(1000,CONFIG_1MS);
		// TM1637_clear();
	}
}
