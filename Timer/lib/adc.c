/* adc.c */
#include <MS51.h>
#include "adc.h"

void ADC_Init(void)
{
	ADCCON1 |= (1 << 0);
	/* Clock */
	ADCCON1 &= ~(0x30);
	ADCCON1 |= 0x30;
	/* Channel 0 */
	P1M1 |= (1 << 7);
	P1M2 &= ~(1 << 7);
	AINDIDS |= (1 << 0);
	EADC = 1;
}

void ADC_SelectChannel(uint8_t u8Channel)
{
	ADCCON0 &= ~(0x0F);
	ADCCON0 |= (u8Channel & 0x07);
}

void ADC_StartConv(void)
{
	ADCS = 1;
}

uint8_t ADC_IsBusy(void)
{
	return ADCS;
}

uint16_t ADC_GetData(void)
{
	return (ADCRH * 16 + (ADCRL & 0x0F));
}

void ADC_ClearFlag(void)
{
	ADCF = 0;
}

void ADC_Enable(void)
{
	ADCCON1 |= (1 << 0);
}

void ADC_Disable(void)
{
	ADCCON1 &= ~(1 << 0);
}