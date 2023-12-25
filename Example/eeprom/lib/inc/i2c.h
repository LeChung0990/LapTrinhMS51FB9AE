/* i2c.h */

#ifndef I2C_H_
#define I2C_H_

#include <MS51.h>
#ifdef __C51__
#include "myIntType.h"
#else
#include <stdint.h>
#endif

void I2C_Init(void);
uint8_t send_stop(void);
uint8_t I2C_start(void);
uint8_t I2C_RepeatedStart(void);
uint8_t I2C_Address(uint8_t Address, uint8_t WriteRead);
uint8_t I2C_Write(uint8_t u8Data);
uint8_t I2C_Write_nByte(uint8_t *pData, uint8_t length);
uint8_t I2C_Read(uint8_t AckNack);

#endif