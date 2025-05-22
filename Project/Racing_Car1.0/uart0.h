/* uart0.h */
#ifndef UART0_H_
#define UART0_H_

#ifdef __C51__
#include "myIntType.h"
#else
#include <stdint.h>
#endif

#define UART0_RX_FLAG (1 << 0)
#define UART0_TX_FLAG (1 << 1)

void UART0_Init(void);
void UART0_SendData(uint8_t u8Data);
uint8_t UART0_GetData(void);
void UART0_EnableInterrupt(void);
void UART0_DisableInterrupt(void);
void UART0_ClearFlag(uint8_t u8Flag);
uint8_t UART0_GetFlag(uint8_t u8Flag);
void UART0_STRING(const char *cy);
void UART0_NLINE(void);
void UART0_NUMBER(int number);

#endif