/* main.c */
#include <MS51.h>
#include "i2c.h"

uint8_t u8Tmp[4] = {0x00, 0x00, 0x19, 0x86};
uint8_t u8Data[2];

void main(void)
{
	
	/* init */
	I2C_Init();
	
	/* check address */
	if (!I2C_CheckAddress(0xA0)) {
		while (1) {
		}
	}
	
	/* read data */
	if (!I2C_Read(0xA1, u8Data, 2)) {
		while (1) {
		}
	}
	
	/* write data */
	if (!I2C_Write(0xA0, u8Tmp, 4)) {
		while (1) {
		}
	}
	
	while (1) {
		
	}
}