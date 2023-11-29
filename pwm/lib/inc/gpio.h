/* gpio.h */
#ifndef GPIO_H_
#define GPIO_H_

#include <MS51.h>
#ifdef __C51__
#include "myIntType.h"
#else
#include <stdint.h>
#endif

void GPIO_Init(void);

#endif
