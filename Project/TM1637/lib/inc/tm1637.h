/* i2c.h */

#ifndef I2C_H_
#define I2C_H_

#include <MS51.h>
#include <delay.h>
#include <stdint.h>

#define PIN_CLK P11 /* P1.1 CL (pin 12)*/
#define PIN_DIO P12 /* P1.2 DIO (pin 13)*/

#define I2C_DELAY DelayT0(5,CONFIG_1US);
#define CLK_1 	PIN_CLK = 1;
#define CLK_0  	PIN_CLK = 0;
#define DIO_1 	PIN_DIO = 1;
#define DIO_0  	PIN_DIO = 0;
#define DIO_VAL PIN_DIO ;




void I2C_Init(void);
void send_stop(void);
void I2C_start(void);
uint8_t I2C_RepeatedStart(void);
uint8_t I2C_Address(uint8_t Address, uint8_t WriteRead);
uint8_t I2C_Write(uint8_t data);
uint8_t I2C_Write_nByte(uint8_t *pData, uint8_t length);
uint8_t I2C_Read(uint8_t AckNack);

#endif