/* main.c */
#include "ms51.h"
#include "i2c.h"
#include "i2c_lcd.h"
#include "delay.h"

void main(void)
{
	uint8_t test = 0;
	
	Delay_Init();
	P1M1 &= ~(1 << 5);
    P1M2 |= (1 << 5);
	P15 = 0;
	
	I2C_LCD_Init();
	I2C_LCD_Clear();
	I2C_LCD_BackLight(1);
	
	while (1) {
		if (test) {
			test = 0;
			I2C_LCD_Clear();
			I2C_LCD_Puts("MS51FB9AE");
			I2C_LCD_NewLine();
			I2C_LCD_Puts("LCD I2C Test");
			P15 = 0;
		} else {
			test = 1;
			I2C_LCD_Clear();
			I2C_LCD_Puts("Ngo Hung Cuong");
			I2C_LCD_NewLine();
			I2C_LCD_Puts("LCD I2C Library");
			P15 = 1;
		}
		Delay_Ms(2000);
	}
}