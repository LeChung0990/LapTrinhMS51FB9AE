/* i2c.c */

#include "i2c.h"

// static uint8_t send_stop(void);

void I2C_Init(void)
{
	I2CLK = 39;
	/* P1.3 */
	/* Quasi */
	P1M1 &= ~(1 << 3);
	P1M2 &= ~(1 << 3);
	/* P1.4 */
	/* Quasi */
	P1M1 &= ~(1 << 4);
	P1M2 &= ~(1 << 4);
	
	P13=1;
	P14=1;
	
	I2CEN=1;
}
uint8_t send_stop(void)
{
	uint16_t t;
	uint8_t u8TimeOut;
	
	STA = 0;
	STO = 1;
	SI = 0;
	t = 1;
	u8TimeOut = 0;
	while (1) {
		if (I2STAT == 0xF8) {
			break;
		}
		if (!t) {
			u8TimeOut = 1;
			break;
		}
		++t;
	}
	return (!u8TimeOut);
}
uint8_t I2C_start(void)
{
	/*Bus Released : As default, Status “0xF8” exists in both master/slave modes  */
	if (I2STAT != 0xF8) {
		return 0;
	}
	/* start */
	STO = 0;
	STA = 1;
	SI = 0;
	while (!SI);
	if (I2STAT != 0x08) {
		/* start error */
		send_stop();
		return 0;
	}
}
uint8_t I2C_RepeatedStart(void)
{	/* Repeated START */
	STO = 0;
	STA = 1;
	SI = 0;
	while (!SI);
	/*Master Repeat Start*/
	if (I2STAT != 0x10) { 
		/* start error */
		send_stop();
		return 0;
	}
}
/**
  * @brief I2C_Address
  * @param[in] Address
  * @param[in] WriteRead 
  * 			- \ref 1(Read) Master Receive Address ACK	
  * 			- \ref 0(Write) Master Transmit Address ACK
  * @return  None
*/
uint8_t I2C_Address(uint8_t Address, uint8_t WriteRead){ 

	/* send address */
	STA = 0;
	STO = 0;
	I2DAT = Address;
	SI = 0;
	while (!SI);
	if(WriteRead)	/*Read*/
	{
		/*40H, Master Receive Address ACK*/
		if (I2STAT != 0x40) {
			/* send address error */
			send_stop();
			return 0;
		}
		return 1;

	}
	else	/*Write*/
	{
		/*18H,Master Transmit Address ACK, SLA+W transmitted, ACK received*/
		if (I2STAT != 0x18) {
			/* send address error */
			send_stop();
			return 0;
		}
		return 1;
	}
}
uint8_t I2C_Write(uint8_t u8Data)
{
	/* send data */
	I2DAT = u8Data;
	SI = 0;
 	while (!SI);
		/*28H, Data byte in S1DAT has been transmitted, ACK received*/
		if (I2STAT != 0x28) {
			/* send data error */
			send_stop();
			return 0;
		}
}
uint8_t I2C_Write_nByte(uint8_t *pData, uint8_t length)
{
	uint8_t i;
	/* send data */
	for (i = 0; i < length; ++i) {
		I2DAT = pData[i];
		SI = 0;
		while (!SI);
		if (I2STAT != 0x28) {
			/* send data error */
			send_stop();
			return 0;
		}
	}
}

/**
  * @brief I2C_Read
  * @param[in] AckNack 1:Ack, 0: Nack
  * @return  None
*/
uint8_t I2C_Read(uint8_t AckNack) 
{
	uint8_t u8Data;
	if(AckNack)
	{
		AA = 1;
		SI = 0;
		while (!SI);
		if (I2STAT != 0x50) { /*Master Receive Data ACK*/
			/* send data error */
			send_stop();
			return 0;
		}
		u8Data = I2DAT;
		return u8Data;
	}
	else 
	{
		AA = 0;
		SI = 0;
		while (!SI);
		if (I2STAT != 0x58) { /*Master Receive Data NACK*/
			/* send data error */
			send_stop();
			return 0;
		}
		u8Data = I2DAT;
		return u8Data;
	}
}