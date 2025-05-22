#include "uart.h"

/**
 * @brief UART Config
 * @param[in] u8UARTPort: set port uart: UART0_Timer1 ; UART0_Timer3 ; UART1_Timer3
 * @param[in] ValueBaudrate: set Baudrate : BAUD4800 ; BAUD9600 ; BAUD19200
 * @return  None
 */
void UART_Open(CONFIG_CLOCK_UART u8UARTPort, BAUD_VALUE_TIME3 ValueBaudrate)
{
  switch (u8UARTPort)
  {
  case UART0_Timer1:
    SCON = 0x50;   // UART0 Mode1,REN=1,TI=1
    TMOD |= 0x20;  // Timer1 Mode1
    set_PCON_SMOD; // UART0 Double Rate Enable
    set_CKCON_T1M;
    clr_T3CON_BRCK; // Serial port 0 baud rate clock source = Timer1
    // TH1 = 256 - (1000000 / u32Baudrate);
    set_TCON_TR1;
    break;

  case UART0_Timer3:
    SCON = 0x50;    // UART0 Mode1,REN=1,TI=1
    clr_PCON_SMOD;  // UART0 Double Rate Enable
    T3CON &= 0xF8;  // T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
    set_T3CON_BRCK; // UART0 baud rate clock source = Timer3
    RH3 = HIBYTE(ValueBaudrate);
    RL3 = LOBYTE(ValueBaudrate);
    set_T3CON_TR3; // Trigger Timer3
    break;

  case UART1_Timer3:
    SCON_1 = 0x50; // UART1 Mode1,REN_1=1,TI_1=1
    T3CON = 0x80;  // T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
    RH3 = HIBYTE(ValueBaudrate);
    RL3 = LOBYTE(ValueBaudrate);
    set_T3CON_TR3; // Trigger Timer3
    break;
  }
}

void UART_Send_Data(CONFIG_SELECT_UART UARTPort, uint8_t u8Data)
{
  switch (UARTPort)
  {
  case UART0:
    SBUF = u8Data;
    break;
  case UART1:
    SBUF_1 = u8Data;
    break;
  }
}

uint8_t Receive_Data(CONFIG_SELECT_UART UARTPort)
{
  uint8_t u8Receive = 0;
  switch (UARTPort)
  {
  case UART0:
    while (!RI)
    {
    }
    u8Receive = SBUF;
    RI = 0;
    break;
  case UART1:
    while (!RI_1)
    {
    }
    u8Receive = SBUF_1;
    RI_1 = 0;
    break;
  }
  return (u8Receive);
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
  if (SCON & (u8Flag))
  {
    return 1;
  }
  else
  {
    return 0;
  }
}
void UART0_STRING(const char *cy)
{
  while (*cy)
  {
    UART_Send_Data(UART0, (*cy));
    while (UART0_GetFlag(UART0_TX_FLAG) == 0)
    {
    }
    UART0_ClearFlag(UART0_TX_FLAG);
    cy++;
  }
}

void UART0_NLINE(void)
{
  SBUF = 0x0a;
  while (UART0_GetFlag(UART0_TX_FLAG) == 0) {}
  UART0_ClearFlag(UART0_TX_FLAG);
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
    UART_Send_Data(UART0, digit[count - 1] + 0x30);
    while (UART0_GetFlag(UART0_TX_FLAG) == 0)
    {
    }
    UART0_ClearFlag(UART0_TX_FLAG);
    --count;
  }
}