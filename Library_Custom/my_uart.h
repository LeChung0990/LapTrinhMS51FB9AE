#include "ms51.h"
#include "macro.h"
#include "Function_Define.h"
#define UART0_RX_FLAG (1 << 0)
efine UART0_Timer1  0
#define UART0_Timer3  1
#define UART1_Timer3  2
#define UART0 0#define UART0_TX_FLAG (1 << 1)
#d
#define UART1 1

void UART_Open(unsigned long u32SysClock, unsigned char u8UARTPort,unsigned long u32Baudrate);
void UART_Send_Data(uint8_t UARTPort, uint8_t c);
uint8_t Receive_Data(uint8_t UARTPort);