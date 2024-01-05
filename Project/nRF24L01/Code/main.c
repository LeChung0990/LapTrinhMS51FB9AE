/* main.c */
#include <MS51.h>
#include "delay.h"
#include "spi.h"
#include <uart.h>
uint8_t u8Data[] = {
    0x7E,0x81,0x91,0xA9,0x91,0x81,0x81,0x7E
};
uint8_t Data;
void main(void)
{
    

	P15_PUSHPULL_MODE;
	P12_QUASI_MODE;

    DelayT0_Init();
    SPI_Init();
	P15 = 0;

	// UART_Open(UART0_Timer3, BAUD9600);

	while (1) {
		/* your code here */
		if(!P12)
		{
			SPI_Send(0x7E);
		}
        
		// Data = Spi_Read_Byte(0);
		// if(Data == 0x7E)
		// {
		// 	P15 = 1;
		// }
		// P15 = 0;
		
	}
}