#include "spi.h"

/* SPI Init */
void SPI_Init(void)
{
	/* Master Mode */
	SPCR |= (1 << 4);
	/* SS Pin */
	/* SS as GPIO */
	SPSR |= (1 << 3);
	SPCR &= ~(1 << 7);
	/* MSB */
	SPCR &= ~(1 << 5);
	/* CPOL = 0 */
	SPCR &= ~(1 << 3);
	/* CPHA = 0 */
	SPCR &= ~(1 << 2);
	/* 8Mbps */;
	SPCR &= ~(0x03);
	/*Interval 0*/
	TA = 0xAA;
	TA = 0x55;
	SFRS = 0x01;
	SPCR2 = 0x00;
	TA = 0xAA;
	TA = 0x55;
	SFRS = 0x00;
	/* GPIO */
	P0M1 |= (1 << 1);
	P0M2 &= ~(1 << 1);
	P0M1 &= ~(1 << 0);
	P0M2 |= (1 << 0);
	P0M1 &= ~(1 << 0);
	P0M2 |= (1 << 0);
	/* SPI Enable */
	SPCR |= (1 << 6);
}

void SPI_Send(uint8_t u8Data)
{
    SPDR = u8Data;
    while (!(SPSR & 0x80)) {

    }
    SPSR &= ~(1 << 7);
}
