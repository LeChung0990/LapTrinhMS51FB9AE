#include "ms51.h"
#include "macro.h"
#define UART0_RX_FLAG (1 << 0)
#define UART0_TX_FLAG (1 << 1)

#define UART0_Timer1  0
#define UART0_Timer3  1
#define UART1_Timer3  2
#define UART0 0
#define UART1 1

void UART_Open(unsigned char u8UARTPort,unsigned long u32Baudrate);
void UART_Send_Data(uint8_t UARTPort, uint8_t c);
uint8_t Receive_Data(uint8_t UARTPort);
void UART0_EnableInterrupt(void);
void UART0_DisableInterrupt(void);
void UART0_ClearFlag(uint8_t u8Flag);
uint8_t UART0_GetFlag(uint8_t u8Flag);
void UART0_STRING(const char *cy);
void UART0_NUMBER(int number);