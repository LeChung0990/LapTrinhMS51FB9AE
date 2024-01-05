/* main.c */
#include <MS51.h>
#include "i2c.h"
#include "delay.h"
#include "uart0.h"
#include <stdio.h>
#include <stdint.h>

uint8_t Low;
uint8_t High;
uint16_t Res;
uint8_t u8Data[10];
uint8_t checkAddress = 0;

void main(void)
{

	/* init */
	I2C_Init();
	UART0_Init();

	/*Test eeprom 24c08*/
	UART0_STRING("Start:");

		/* read data */
		/* #1
	I2C_start();
	I2C_Address((uint8_t)0xA1,1);
	u8Data[0] =	 I2C_Read(1);
	u8Data[1] =	 I2C_Read(0);
	send_stop();
	*/

	/*#2
	I2C_start();
	I2C_Address(0xA0, 0);
	I2C_Write(0x00);

	I2C_RepeatedStart();
	I2C_Address(0xA1, 1);
	u8Data[1] = I2C_Read(0);
	send_stop();
	*/

	/*Write data*/
	I2C_start();
	I2C_Address(0xA0, 0);
	I2C_Write(0x00);
	I2C_Write(0x34);
	send_stop();
	Delay_Ms(10);

	
	while (1) {
		UART0_NUMBER(u8Data[0]);
		UART0_STRING(",");
		UART0_NUMBER(u8Data[1]);
		Delay_Ms(500);
	}
}
