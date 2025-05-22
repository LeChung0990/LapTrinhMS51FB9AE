/* delay.c */
#include "delay.h"

void DelayT0_Init(void)
{
	TIMER0_FSYS;		 // T0M=1, Timer0 Clock = Fsys = 16MHz
	ENABLE_TIMER0_MODE1; // Timer0 is 16-bit mode
}

/**
 * @brief Timer0 delay setting
 * @param[in] u16Count: define count time.
 * @param[in] configdelay: 	CONFIG_1MS ; CONFIG_1US
 * @return  None
 */
void DelayT0(uint16_t u16Count, CONFIG configdelay)
{
	uint8_t TL0TMP, TH0TMP;
	TL0TMP = LOBYTE(65535 - (16 * configdelay));
	TH0TMP = HIBYTE(65535 - (16 * configdelay));
	while (u16Count)
	{
		TL0 = TL0TMP;
		TH0 = TH0TMP;
		set_TCON_TR0; // Start Timer0
		while (!TF0); // Check Timer0 Time-Out Flag
		clr_TCON_TF0;
		clr_TCON_TR0; // Stop Timer0
		--u16Count;
	}
}