/* i2c.h */

#ifndef I2C_H_
#define I2C_H_

#include <ms51.h>
#include <macro.h>
#include <stdint.h>

#define PIN_DIO P11 /* P1.1 DIO (pin 14)*/
#define PIN_CLK P10 /* P1.0 SCLK (pin 15)*/
#define PIN_STB P00 /* P0.0 STB (pin 16)*/

#define I2C_DELAY delay_nop(100);
#define CLK_1 	PIN_CLK = 1;
#define CLK_0  	PIN_CLK = 0;
#define DIO_1 	PIN_DIO = 1;
#define DIO_0  	PIN_DIO = 0;
#define STB_1	PIN_STB = 1;
#define STB_0	PIN_STB = 0;
#define DIO_VAL PIN_DIO ;

// TM1628
#define	TM1628_BRIGHTNESS_MAX	(7)
#define	TM1628_POSITION_MAX		(4)

// TM1628 commands
#define	TM1628_CMD_SET_DATA		0x40
#define	TM1628_CMD_SET_ADDR		0xC0
#define	TM1628_CMD_SET_DSIPLAY	0x80
//TM1628 Display Mode Setting Command
#define TM1628_CMD_MODE_DIS_1	0x02
#define TM1628_CMD_MODE_DIS_2	0x03
// TM1628 data settings (use bitwise OR to contruct complete command)
#define	TM1628_SET_DATA_WRITE		0x00 // write data to the display register
#define	TM1628_SET_DATA_READ		0x02 // read the key scan data
#define	TM1628_SET_DATA_A_ADDR		0x00 // automatic address increment
#define	TM1628_SET_DATA_F_ADDR		0x04 // fixed address
#define	TM1628_SET_DATA_M_NORM		0x00 // normal mode
#define	TM1628_SET_DATA_M_TEST		0x08 // test mode

// TM1628 display control command set (use bitwise OR to consruct complete command)
#define	TM1628_SET_DISPLAY_OFF		0x00 // off
#define	TM1628_SET_DISPLAY_ON		0x08 // on

void delay_nop(unsigned long int  us) ;
void TM1628_INIT(unsigned char enable, const unsigned char brightness);
void TM1628_display_segments(const unsigned char position, const unsigned char digit, unsigned char dot);
void TM1628_clear(void);

#endif
