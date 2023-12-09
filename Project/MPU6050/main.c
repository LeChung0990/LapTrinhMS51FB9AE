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
uint8_t checkAddress;

void InitMPU6050(void)
{
	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	I2C_Write(0x6B);
	I2C_Write(0x00);
	send_stop();
	Delay_Ms(100);

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	I2C_Write(0x1A);
	I2C_Write(0x05);
	send_stop();
	Delay_Ms(100);

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	I2C_Write(0x1C);
	I2C_Write(0x10);
	send_stop();
	Delay_Ms(100);
}

uint16_t ReadData()
{
	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	I2C_Write(0x3B);

	I2C_RepeatedStart();
	I2C_Address((uint8_t)0x68 << 1, 1);
	High = I2C_Read(1);
	Low = I2C_Read(0);
	Res = (High << 8) | Low;
}
char a[] = "chung";
void main(void)
{

	/* init */
	I2C_Init();
	UART0_Init();

	/*Test eeprom 24c08*/
	UART0_STRING("Start:");
	UART0_STRING("Read:
	");

		/* read data */
	// I2C_start();
	// I2C_Address((uint8_t)0xA1,1);
	// u8Data[0] =  I2C_Read(1);
	// u8Data[1] =	 I2C_Read(0);
	// send_stop();

	// UART0_NUMBER(u8Data[0]);
	// UART0_STRING(",");
	// UART0_NUMBER(u8Data[1]);


	InitMPU6050();
	UART0_STRING("Step1:");

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	I2C_Write(0x3B);

	I2C_RepeatedStart();
	checkAddress = I2C_Address((uint8_t)0x68 << 1, 0);
	

	High = I2C_Read(1);

	UART0_NUMBER(High);
	Low = I2C_Read(0);
	send_stop();
	Res = (High << 8) | Low;
	

	while (1) {
		
		// UART0_NUMBER(Res);
		// Delay_Ms(1000);
	}
}
