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
	/* 1Mbps */;
	SPCR |= (0x03);
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
	
	
	#if 0
	P15_QUASI_MODE;                                  // P15 (SS) Quasi mode
    P10_QUASI_MODE;                                  // P10 (SPCLK) Quasi mode
    P00_QUASI_MODE;                                  // P00 (MOSI) Quasi mode
    P01_QUASI_MODE;                                  // P01 (MISO) Quasi mode
    
    set_SPSR_DISMODF;                                // SS General purpose I/O ( No Mode Fault ) 
    clr_SPCR_SSOE;
   
    clr_SPCR_LSBFE;                                  // MSB first

    clr_SPCR_CPOL;                                   // The SPI clock is low in idle mode
    clr_SPCR_CPHA;                                   // The data is sample on the second edge of SPI clock 
    
    set_SPCR_MSTR;                                   // SPI in Master mode 
    set_SPCR_SPR1;                                    // Select SPI clock 
	set_SPCR_SPR0;
    set_SPCR_SPIEN;                                  // Enable SPI function 
    clr_SPSR_SPIF;
	#endif
}

void SPI_Send(uint8_t u8Data)
{
    SPDR = u8Data;
    while (!(SPSR & 0x80)) {

    }
    clr_SPSR_SPIF;
}

uint8_t Spi_Read_Byte(uint8_t u8SpiWB)
{
    uint8_t u8SpiRB;
    SPDR = u8SpiWB;
    while(!(SPSR&0x80));
    u8SpiRB = SPDR;
    clr_SPSR_SPIF;
    return u8SpiRB;
}