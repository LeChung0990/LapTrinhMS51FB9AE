/* delay.h */
#ifndef DELAY_H_
#define DELAY_H_

#ifdef __C51__
#include "myIntType.h"
#else
#include <stdint.h>
#endif

void Delay_Init(void);
void Delay_Ms(uint16_t u16Delay);

#endif
