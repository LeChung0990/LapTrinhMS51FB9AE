#include "tm1628.h"



static uint8_t _config = TM1628_SET_DISPLAY_ON | TM1628_BRIGHTNESS_MAX;
static uint8_t _segments = 0xff;
static const uint8_t _digit2segments[10] =
{
	0x3F, // 0
	0x06, // 1
	0x5B, // 2
	0x4F, // 3
	0x66, // 4
	0x6D, // 5
	0x7D, // 6
	0x07, // 7
	0x7F, // 8
	0x6F  // 9
};


void delay_nop(unsigned long int  us) {
  for(;us > 0; us--) {
	__asm
	nop;
	__endasm; 
  }
}


void SEND_STOP(void)
{
    STB_1;
	DIO_0; I2C_DELAY;  
	CLK_1; I2C_DELAY;
	DIO_1; I2C_DELAY;
}
void SEND_START(void)
{
	CLK_1; I2C_DELAY;
	DIO_1; I2C_DELAY;
    STB_0;
	DIO_0; I2C_DELAY;
	CLK_0; I2C_DELAY;
}
void SEND_WRITE(uint8_t data)
{
	uint8_t i;
	for (i = 0; i < 8; ++i)
	{
		if (data & 0x01) {DIO_1;}
		else {DIO_0;}
		I2C_DELAY;	
		CLK_1;
		I2C_DELAY;
		CLK_0;
		data >>= 1;	//1.37u
	}
}

void TM1628_SEND_COMMAND(const unsigned char value)
{
	SEND_START();
	SEND_WRITE(value);
	SEND_STOP();
	I2C_DELAY;
}
void TM1628_SEND_CONFIG(const unsigned char enable, const unsigned char brightness)
{
	TM1628_SEND_COMMAND(TM1628_CMD_MODE_DIS_2);
	_config = (enable ? TM1628_SET_DISPLAY_ON : TM1628_SET_DISPLAY_OFF) |
		(brightness > TM1628_BRIGHTNESS_MAX ? TM1628_BRIGHTNESS_MAX : brightness);
	
	TM1628_SEND_COMMAND(TM1628_CMD_SET_DSIPLAY | _config);
	
}
void TM1628_INIT(unsigned char enable, const unsigned char brightness)
{	
	/* Quasi */
	P11_PUSHPULL_MODE;
	/* Quasi */
	P10_PUSHPULL_MODE;
	P00_PUSHPULL_MODE;

	PIN_CLK = 1;
	PIN_DIO = 1;	
	PIN_STB = 1;
	

	TM1628_SEND_CONFIG(enable, brightness);
}
void TM1628_display_segments(const unsigned char position, const unsigned char digit, unsigned char dot)
{
	unsigned char segments ;
	if (digit < 10)
	{
		segments = _digit2segments[digit];
	} else
	{
		segments = 0x00;	
	}
	if ( (dot == 1 & (position == 2 )) | (dot == 2 & (position == 0 )) ) {
		segments = segments | 0x80;
	}
	TM1628_SEND_COMMAND(TM1628_CMD_SET_DATA | TM1628_SET_DATA_F_ADDR);
	SEND_START();
	SEND_WRITE(TM1628_CMD_SET_ADDR | position );
	SEND_WRITE(segments);
	SEND_STOP();
	I2C_DELAY;
}
void TM1628_clear(void)
{
	uint8_t i;

	for (i = 0; i < TM1628_POSITION_MAX; ++i) {
		TM1628_display_segments(i, 0x00, 0);
	}
}
