#ifndef SPI_H_
#define SPI_H_

#include <ms51.h>
#include <stdint.h>
#include <macro.h>

void SPI_Init(void);
void SPI_Send(uint8_t u8Data);

#endif
