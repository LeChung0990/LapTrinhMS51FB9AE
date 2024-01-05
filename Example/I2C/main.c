/* main.c */
#include <MS51.h>
#include "i2c.h"
#include "uart0.h"
#include "delay.h"

uint8_t u8Tmp[4] = {0x00, 0x00, 0x19, 0x86};
uint8_t u8Data[2];

void main(void)
{

	/* init */
	Delay_Init();
	I2C_Init();
	P1M1&=0xDF;P1M2|=0x20;
	P15 = 0;
	UART0_Init();
	UART0_STRING("Start:");

	UART0_STRING("Read:-");

	I2C_Write((uint8_t)0x68<<1, 0x3B, 1);
	/* read data */
	if (!I2C_Read( (uint8_t)(0x68<<1), u8Data, 2))
	{
		while (1)
		{
			P15 = 1;
		}
	}
	UART0_NUMBER(u8Data[0]);
	UART0_STRING(",");
	UART0_NUMBER(u8Data[1]);
	Delay_Ms(1000);
		

	/* check address */
	// if (!I2C_CheckAddress(0xA0))
	// {
	// 	while (1)
	// 	{
	// 	}
	// }

	/* write data */
	// if (!I2C_Write(0xA0, u8Tmp, 4)) {
	// 	while (1) {
	// 	}
	// }

	while (1)
	{

	}
}