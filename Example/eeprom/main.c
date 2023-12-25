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
uint8_t u8Data[2];
uint8_t checkAddress = 0;

void main(void)
{

	/* init */
	I2C_Init();
	UART0_Init();

	/*Test eeprom 24c08*/
	UART0_STRING("Start:");
	UART0_STRING("Read:");

		/* read data */
	// I2C_start();
	// I2C_Address((uint8_t)0xA1,1);
	// Res =	 I2C_Read(1);
	// send_stop();

	// UART0_NUMBER(u8Data[0]);
	// UART0_STRING(",");
	// UART0_NUMBER(u8Data[1]);


	// I2C_start();
	// I2C_Address(0xA0, 0);
	// I2C_Write(0x00);

	// I2C_RepeatedStart();
	// I2C_Address(0xA1, 1);
	// Res = I2C_Read(0);
	// send_stop();
	while (1) {
		I2C_start();
		I2C_Address((uint8_t)0x68<<1, 0);
		I2C_Write(0x3B);
		// send_stop();

		// I2C_start();
		//  I2C_Address(0xA0, 0);
		// I2C_Write(0x00);
		
		I2C_RepeatedStart();
		checkAddress = I2C_Address((uint8_t)0x68<<1, 1);
		High = I2C_Read(1);
		Low = I2C_Read(0);
		send_stop();
		// Res = (High << 8) | Low;

		UART0_NUMBER(checkAddress);
		UART0_NLINE();
		UART0_NUMBER(High);
		UART0_NLINE();
		UART0_NUMBER(Low);
		UART0_NLINE();
		Delay_Ms(1000);
	}
}
