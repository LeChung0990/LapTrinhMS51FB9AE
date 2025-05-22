/* i2c.c */

#include "i2c.h"
void i2c_init(void)
{
	// I2C_DeInit();
	// i2c_init( 100000,0xD0,I2C_DUTYCYCLE_2 , I2C_ACK_CURR ,I2C_ADDMODE_7BIT ,16);
	// I2C_Cmd(ENABLE);
	P14_OPENDRAIN_MODE;
	P13_OPENDRAIN_MODE;
	
    SDA_1;
	SCL_1;
}
void i2c_start(void)
{
	// /* Check busy flag */
	// while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY) == SET);
	// /* Generate a START condition */
	// I2C_GenerateSTART(ENABLE);
	// /*Check --EV5 */
	// while(I2C_CheckEvent( I2C_EVENT_MASTER_MODE_SELECT) == ERROR);

    SCL_1;
	DELAYI2C;
	SDA_1;
	DELAYI2C;
	SDA_0;
	DELAYI2C;
	SCL_0;
	DELAYI2C;

}
void i2c_stop(void)
{
	// I2C_GenerateSTOP(ENABLE);

    SDA_0;
	DELAYI2C;
	SCL_1;
	DELAYI2C;
	SDA_1;
	DELAYI2C;
}
uint8_t i2c_write(uint8_t u8Data)
{
	// I2C_SendData(data);
	// /* Write data and test on EV8 and clear it */
	// while(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTING)== ERROR);
    uint8_t i;
	uint8_t u8Ret;
	
	for (i = 0; i < 8; ++i) {
		if (u8Data & 0x80) {
			SDA_1;
		} else {
			SDA_0;
		}
		DELAYI2C;
		SCL_1;
		DELAYI2C;
		SCL_0;
		// DELAYI2C;
		u8Data <<= 1;
	}
	/*Kiem tra xung thu 9*/
	SDA_0;
	DELAYI2C;

	SCL_1;
	DELAYI2C;
	SCL_0;
	DELAYI2C;
    SDA_1;
	if (SDA_VAL) {
		u8Ret = 0;
	} else {
		u8Ret = 1;
	}
	DELAYI2C;
	return u8Ret;
}
uint8_t i2c_read(uint8_t Ack)
{
	uint8_t u8DataRead = 0;
	uint8_t i;
	SDA_1;
	for (i = 0; i < 8; ++i)
	{
		u8DataRead = u8DataRead << 1;
		SCL_1;
		DELAYI2C;
		if (SDA_VAL)
		{
			u8DataRead = u8DataRead | 0x01;
		}
		DELAYI2C;
		SCL_0;
		DELAYI2C;
	}

	if(Ack){
		SDA_0;
	} else {
		SDA_1;
	}
	DELAYI2C;

	SCL_1;
	DELAYI2C;
	SCL_0;
	DELAYI2C;
	return u8DataRead;
}
uint8_t data_write(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data)
{
    uint8_t i;
    for(i=0; i< num; ++i)
    {
        i2c_start();
        i2c_write(address);
        i2c_write(addressData++);
        i2c_write(data[i]);
        i2c_stop();
        DelayT0(1, CONFIG_1MS);
    }
    return 1;
}
uint8_t data_read(uint8_t address, uint8_t addressData, uint8_t num, uint8_t *data)
{
    uint8_t i;
    i2c_start();
    i2c_write(address);
    i2c_write(addressData);
    
    i2c_start();
    i2c_write(address | 0x01);
    for(i=0; i< num - 1; ++i)
    {
        data[i] = i2c_read(1);
    }
    data[i] = i2c_read(0);
    i2c_stop();
    return 1;
}
