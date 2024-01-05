/* main.c */
#include <MS51.h>
#include "delay.h"
#include "spi.h"

uint8_t u8Data[] = {
    0x7E,0x81,0x91,0xA9,0x91,0x81,0x81,0x7E
};

void main(void)
{
    uint8_t i;

	//GPIO_Init();
    //Delay_Init();
    SPI_Init();

    /* chon che do giai ma */
	SPI_Send(0x09);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* chon do sang 7 / 32 */
	SPI_Send(0x0a);
	SPI_Send(0x03);
	P11 = 1;
    P11 = 0;
	
	/* hien thi 8 led */
	SPI_Send(0x0b);
	SPI_Send(0x07);
	P11 = 1;
    P11 = 0;
	
	/* che do hoat dong binh thuong */
	SPI_Send(0x0c);
	SPI_Send(0x01);
	P11 = 1;
    P11 = 0;
	
	/* che do hoat dong binh thuong */
	SPI_Send(0x0f);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 0 */
	SPI_Send(0x01);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 1 */
	SPI_Send(0x02);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 2 */
	SPI_Send(0x03);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 3 */
	SPI_Send(0x04);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 4 */
	SPI_Send(0x05);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 5 */
	SPI_Send(0x06);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 6 */
	SPI_Send(0x07);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;
	
	/* led 7 */
	SPI_Send(0x08);
	SPI_Send(0x00);
	P11 = 1;
    P11 = 0;

	for (i = 0; i < 8; ++i) {
        SPI_Send(i + 1);
        SPI_Send(u8Data[7 - i]);
        P11 = 1;
        P11 = 0;
    }

	while (1) {
		/* your code here */
        
	}
}