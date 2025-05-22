#include "ms51.h"
#include "macro.h"
#include "stdint.h"
#define UART0_RX_FLAG (1 << 0)
#define UART0_TX_FLAG (1 << 1)

typedef enum
{
    UART0_Timer1 = (uint8_t) 0x00,
    UART0_Timer3 = (uint8_t) 0x01,
    UART1_Timer3 = (uint8_t) 0x02
}CONFIG_CLOCK_UART;

typedef enum
{
    UART0 = (uint8_t)0x00,
    UART1 = (uint8_t)0x01
}CONFIG_SELECT_UART;

typedef enum
{
    BAUD4800 = 0xFF98,
    BAUD9600 = 0xFFCC,
    BAUD19200 = 0xFFE6
}BAUD_VALUE_TIME3;

void UART_Open(CONFIG_CLOCK_UART u8UARTPort, BAUD_VALUE_TIME3 ValueBaudrate);
void UART_Send_Data(CONFIG_SELECT_UART UARTPort, uint8_t u8Data);
uint8_t Receive_Data(CONFIG_SELECT_UART UARTPort);
void UART0_EnableInterrupt(void);
void UART0_DisableInterrupt(void);
void UART0_ClearFlag(uint8_t u8Flag);
uint8_t UART0_GetFlag(uint8_t u8Flag);
void UART0_STRING(const char *cy);
void UART0_NLINE(void);
void UART0_NUMBER(int number);