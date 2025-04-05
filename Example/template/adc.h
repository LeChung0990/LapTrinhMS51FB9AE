#ifndef ADC_H_
#define ADC_H_

#ifdef __C51__
#include "myIntType.h"
#else
#include <stdint.h>
#endif

void ADC_Init(void);
void ADC_SelectChannel(uint8_t u8Channel);
void ADC_StartConv(void);
uint8_t ADC_IsBusy(void);
uint16_t ADC_GetData(void);
void ADC_ClearFlag(void);
void ADC_Enable(void);
void ADC_Disable(void);
void ADC_ISR(void) __interrupt (11);

#endif