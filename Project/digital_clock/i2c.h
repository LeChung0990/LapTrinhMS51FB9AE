/* i2c.h */

#include <stdint.h>
#include <ms51.h>
#include "delay.h"
/*=============I2C define==========================================*/
#define PIN_SDA P14 /* P1.4 SDA (pin 11)*/
#define PIN_SCL P13 /* P1.3 SCL (pin 12)*/

#define SDA_0   PIN_SDA = 0
#define SDA_1   PIN_SDA = 1
#define SCL_0   PIN_SCL = 0
#define SCL_1   PIN_SCL = 1
#define SDA_VAL PIN_SDA
#define DELAYI2C    DelayT0(5, CONFIG_1US);

/*==============DS1307 define=====================================*/
#define ADDR_DS13	0xD0

void i2c_init(void);
void i2c_start(void);
void i2c_stop(void);
uint8_t i2c_write(uint8_t u8Data);
uint8_t i2c_read(uint8_t Ack);
uint8_t data_write(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data);
uint8_t data_read(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data);
