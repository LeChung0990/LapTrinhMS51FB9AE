#include "tm1637.h"

// ===================================================================================
// TM1637
// ===================================================================================
#define	TM1637_BRIGHTNESS_MAX	(7)
#define	TM1637_POSITION_MAX		(4)

// TM1637 commands
#define	TM1637_CMD_SET_DATA		0x40
#define	TM1637_CMD_SET_ADDR		0xC0
#define	TM1637_CMD_SET_DSIPLAY	0x80

// TM1637 data settings (use bitwise OR to contruct complete command)
#define	TM1637_SET_DATA_WRITE		0x00 // write data to the display register
#define	TM1637_SET_DATA_READ		0x02 // read the key scan data
#define	TM1637_SET_DATA_A_ADDR		0x00 // automatic address increment
#define	TM1637_SET_DATA_F_ADDR		0x04 // fixed address
#define	TM1637_SET_DATA_M_NORM		0x00 // normal mode
#define	TM1637_SET_DATA_M_TEST		0x10 // test mode

// TM1637 display control command set (use bitwise OR to consruct complete command)
#define	TM1637_SET_DISPLAY_OFF		0x00 // off
#define	TM1637_SET_DISPLAY_ON		0x08 // on

static uint8_t _config = TM1637_SET_DISPLAY_ON | TM1637_BRIGHTNESS_MAX;
static uint8_t _segments = 0xff;
const uint8_t _digit2segments[] =
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

void SEND_STOP(void)
{
	DIO_0; I2C_DELAY;  
	CLK_1; I2C_DELAY;
	DIO_1; I2C_DELAY;
}
void SEND_START(void)
{
	CLK_1; I2C_DELAY;
	CLK_1; I2C_DELAY;
	DIO_0; I2C_DELAY;
	DIO_0; I2C_DELAY;
}
uint8_t SEND_WRITE(uint8_t data)
{
	uint8_t i;
	uint8_t result;
	for (i = 0; i < 8; ++i)
	{
		if (data & 0x01) {DIO_1;}
		else {DIO_0;}
		I2C_DELAY;	//748n
		CLK_1;
		I2C_DELAY;
		CLK_0;
		data >>= 1;	//1.37u
	}
	/*Kiem tra xung thu 9*/
	DIO_0;
	I2C_DELAY;

	CLK_1;
	I2C_DELAY;
	CLK_0;
	I2C_DELAY;

	if(PIN_DIO){
		result = 0;
	} else {
		result = 1;
	}
	I2C_DELAY;

	return result;
}

void TM1637_SEND_COMMAND(const uint8_t value)
{
	TM1637_INIT();
	SEND_START();
	SEND_WRITE(value);
	SEND_STOP();
}

void TM1637_SEND_CONFIG(const uint8_t enable, const uint8_t brightness)
{

	_config = (enable ? TM1637_SET_DISPLAY_ON : TM1637_SET_DISPLAY_OFF) |
		(brightness > TM1637_BRIGHTNESS_MAX ? TM1637_BRIGHTNESS_MAX : brightness);
	
	TM1637_SEND_COMMAND(TM1637_CMD_SET_DSIPLAY | _config);
}

static void TM1637_INIT(uint8_t enable, const uint8_t brightness)
{	
	/* Quasi */
	P12_QUASI_MODE;
	/* Quasi */
	P11_QUASI_MODE;

	PIN_CLK = 1;
	PIN_DIO = 1;	

	TM1637_SEND_CONFIG(enable, brightness);
}
void TM1637_display_segments(const uint8_t position, const uint8_t segments)
{
	TM1637_SEND_COMMAND(TM1637_CMD_SET_DATA | TM1637_SET_DATA_F_ADDR);
	SEND_START();
	SEND_WRITE(TM1637_CMD_SET_ADDR | (position & (TM1637_POSITION_MAX - 1)));
	SEND_WRITE(segments);
	SEND_STOP();
}


void TM1637_DISPLAY_DIGIT(const uint8_t position, const uint8_t digit)
{
	uint8_t segments ;
	if (digit < 10)
	{
		segments = _digit2segments[digit];
	} else
	{
		segments = 0x00;	
	}
	if (position == 0x01) {
		// segments = segments | (_segments & 0x80);
		_segments = segments;
	}
	TM1637_display_segments(position, segments);
}

void TM1637_clear(void)
{
	uint8_t i;

	for (i = 0; i < TM1637_POSITION_MAX; ++i) {
		TM1637_display_segments(i, 0x00);
	}
}

uint8_t I2C_Read_KEY(uint8_t AckNack) 
{

}