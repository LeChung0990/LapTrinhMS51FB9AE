#include "uart0.h"
void UART0_Init(void)
{
	/* UART0 baud rate clock source = Timer 3 */
	T3CON |= (1 << 5);
	/* Timer 3 pre-scalar = 1 */
	T3CON &= 0xF8;
	/* Interrupt */
	/*Timer 3 interrupt Disabled*/
	EIE1 &= ~(1 << 1);
	/*9600*/
	RH3 = 0xff;
	RL3 = 0xcc;
	/*Timer 3 starts running*/
	T3CON |= (1 << 3);
	/* UART0 double baud rate disable*/
	PCON &= ~(1 << 7);
	/* GPIO */
	P06 = 1;
	P0M1 &= ~(1 << 6);
	P0M2 |= (1 << 6);
	P07 = 1;
	P0M1 &= ~(1 << 7);
	P0M2 &= ~(1 << 7);
	/* uart 0 */
	PCON &= ~(1 << 6);
	SM0 = 0;
	SM1 = 1;
	/* enable */
	REN = 1;
}

void UART0_SendData(uint8_t u8Data)
{
    SBUF = u8Data;
}

uint8_t UART0_GetData(void)
{
    return SBUF;
}

void UART0_EnableInterrupt(void)
{
	ES = 1;
}

void UART0_DisableInterrupt(void)
{
	ES = 0;
}

void UART0_ClearFlag(uint8_t u8Flag)
{
	SCON &= ~(u8Flag);
}

uint8_t UART0_GetFlag(uint8_t u8Flag)
{
	if (SCON & (u8Flag)) {
		return 1;
	} else {
		return 0;
	}
}
void UART0_STRING(const char *cy)
{
  while (*cy)
  {
    UART0_SendData(*cy);
    while (UART0_GetFlag(UART0_TX_FLAG) == 0)
    {
    }
    UART0_ClearFlag(UART0_TX_FLAG);
    cy++;
  }
}

void UART0_NUMBER(int number)
{
  char count = 0;
  char digit[5] = "";
  if (number == 0)
  {
    digit[0] = 0;
    count = 1;
  }
  while (number != 0)
  {
    digit[count] = number % 10; // lay chu so ngoai cung xxxx8;
    ++count;
    number = number / 10; // chia so number cho 10 de bo so ngoai cung xxxx
  }
  while (count != 0)
  {
    // SBUF = (digit[count - 1] + 0x30); // 0x30 = 48 ;
    UART0_SendData(digit[count - 1] + 0x30);
    while (UART0_GetFlag(UART0_TX_FLAG) == 0)
    {
    }
    UART0_ClearFlag(UART0_TX_FLAG);
    --count;
  }
}
uint8_t UART0_Receive()
{
  uint8_t u8Receive = 0;
	while (!RI){}
	u8Receive = SBUF;
	RI = 0;
  return (u8Receive);
}
