/* main.c */
#include <MS51.h>
#include "i2c.h"
#include "delay.h"
#include "uart0.h"
#include <stdint.h>
#include <macro.h>
#include <math.h>

#define LED_PORT    P15_PUSHPULL_MODE
#define LED         P15
uint8_t Low;
uint8_t High;
uint16_t Res;
float AccX, AccY, AccZ;
float AngleRoll, AnglePitch;
int16_t AccXLSB, AccXMSB, AccYLSB, AccYMSB, AccZLSB, AccZMSB;
uint8_t u8Data[2];
uint8_t checkAddress;

void InitMPU6050(void)
{
	I2C_start();    
	I2C_Address((uint8_t)0x68 << 1 , 0);
	    /*Config 0x6B register: Disable SLEEP Mode, internal 8MHz oscillator */
    I2C_Write(0x6B);
	I2C_Write(0x00);
	send_stop();
	Delay_Ms(10);

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);
	    /*Config Low Pass Filter, Bandwidth : 10Hz, Delay 13,8ms with Acc, 13.4ms with Gyro
    , Fs = 1Khz*/
    I2C_Write(0x1A);
	I2C_Write(0x05);
	send_stop();
	Delay_Ms(10);

    I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);  //D0
	    /*Gyroscope Configuration, selects the full scale range of the gyroscope is
        +- 250 do/s */
    I2C_Write(0x1B);
	I2C_Write(0x00);
	send_stop();
	Delay_Ms(10);

	I2C_start();
	I2C_Address((uint8_t)0x68 << 1, 0);  //D0
	    /*Accelerometer Configuration, selects the full scale range of the accelerometer is
        +- 8g */
    I2C_Write(0x1C);
	I2C_Write(0x10);
	send_stop();
	Delay_Ms(10);
}

void ReadData(void)
{
    /*Address 0x68 << 1 = 0xD0 */
	I2C_start();
    I2C_Address((uint8_t)0xD0, 0);
        /* Accelerometer Measurements */
    I2C_Write(0x3B);

    I2C_RepeatedStart();
    I2C_Address((uint8_t)0xD1, 1);
    AccXLSB = I2C_Read(1);
    AccXMSB = I2C_Read(1);
    
    AccYLSB = I2C_Read(1);
    AccYMSB = I2C_Read(1);

    AccZLSB = I2C_Read(1);
    AccZMSB = I2C_Read(0);
    send_stop();

    AccXLSB = (AccXLSB << 8) | AccXMSB;
    AccYLSB = (AccYLSB << 8) | AccYMSB;
    AccZLSB = (AccZLSB << 8) | AccZMSB;

	AccX = (float)AccXLSB / 4096.0 - 0.01;
	AccY = (float)AccYLSB / 4096.0 ;
    AccZ = (float)AccZLSB / 4096.0 + 0.01;

    // AccX *= 100;
    // AccY *= 100;
    // AccZ *= 100;
    AngleRoll = atanf(AccY/sqrtf(AccX*AccX + AccZ*AccZ))*1/(3.142/180);
    AnglePitch = atanf(AccX/sqrtf(AccY*AccY + AccZ*AccZ))*1/(3.142/180);
    
    /*Mục đích lấy dương để tiện truyền qua UART , còn phải phân biệt dấu để
    biết chính xác hướng di chuyển của tay*/
    AngleRoll = fabsf(AngleRoll);
    AnglePitch = fabsf(AnglePitch);
}

void main(void)
{

	LED_PORT;
	LED = 0;
	I2C_Init();
	UART0_Init();
	InitMPU6050();
	
	UART0_STRING("Start:");
	while (1) {
        ReadData();
		// P15 = 1;
		Delay_Ms(10);
		
		UART0_NUMBER(AngleRoll);
        UART0_STRING("-");
        UART0_NUMBER(AnglePitch);
        // UART0_STRING("-");
        // UART0_NUMBER(AccZ);
        UART0_NLINE();

		// UART0_NUMBER(dem);
		// Delay_Ms(1000);
	}
}
