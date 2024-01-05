/* main.c */
#include <MS51.h>
#include "i2c.h"
#include "delay.h"
#include "uart0.h"
#include <stdint.h>
#include <macro.h>

uint8_t Low;
uint8_t High;
uint16_t Res;
uint8_t u8Data[2];
uint8_t checkAddress;

void InitMPU6050(void)
{
	I2C_start();
	I2C_Address((uint8_t)0x68 << 1 , 0);
	I2C_Write(0x6B);
	I2C_Write(0x00);
	send_stop();
	Delay_Ms(10);

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	I2C_Write(0x1A);
	I2C_Write(0x05);
	send_stop();
	Delay_Ms(10);

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);  //D0
	I2C_Write(0x1C);
	I2C_Write(0x10);
	send_stop();
	Delay_Ms(10);
}

void ReadData(void)
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
// char a[] = "chung";
void main(void)
{

	P15_PUSHPULL_MODE;
	P15 = 0;
	I2C_Init();
	UART0_Init();
	InitMPU6050();
	
	
	UART0_STRING("Start:");



	// P15 = 1;
	// UART0_NUMBER(9);
	

	while (1) {

		I2C_start();
		I2C_Address((uint8_t)0xD0, 0);
		I2C_Write(0x3B);
		// send_stop();

		I2C_RepeatedStart();
		I2C_Address((uint8_t)0xD1, 1);
		High = I2C_Read(1);
		Low = I2C_Read(0);
		Res = (High << 8) | Low;
		send_stop();
		
		P15 = 1;
		Delay_Ms(1000);
		UART0_NLINE();
		UART0_NUMBER(Res);
	}
}
