/* main.c */
#include <MS51.h>
#include "delay.h"
#include "uart0.h"
#include <stdint.h>
#include <macro.h>
uint8_t Low;
uint8_t High;
uint16_t Res;
uint8_t u8Data[2];
uint8_t checkAddress;

int time;
int avg1;
char thr1 = 15;
int buf1;
uint8_t c;

char a[] = "chung";

void wait(void)
{
	__asm__("nop\n"); __asm__("nop\n");
	__asm__("nop\n"); __asm__("nop\n");
}
void main(void)
{
	P15_PUSHPULL_MODE;
	/* init */
	// I2C_Init();
	UART0_Init();

	/*Test eeprom 24c08*/
	UART0_STRING("Start:");

	
	while (1) {
		time=0;
		P12_PUSHPULL_MODE;
		P12 = 1;
		wait();
		P12_INPUT_MODE;
		while(P12){
			time++;
		}

		if(time > 100)
		{
			P15 = 1;
		} else 
		{
			P15 = 0;
		}
		// UART0_NUMBER(time);
		// UART0_STRING("--");
		// Delay_Ms(1000);
	}
}


