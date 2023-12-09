#include <MS51.h>
#include "stdlib.h"
#include "math.h"
#include "delay.h"
#include "adc.h"
#include "uart0.h"

uint16_t u16AdcValue;
void UART0_number(int number)
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
        digit[count] = number % 10;
        count++;
        number /= 10;
    }
    while (count != 0)
    {
        UART0_SendData(digit[count - 1] + 0x30);
        while (UART0_GetFlag(UART0_TX_FLAG) == 0)
        {
        }
        UART0_ClearFlag(UART0_TX_FLAG);
        count--;
    }
}
void main(void)
{
    Delay_Init();
    ADC_Init(); /* Channel 4, Chan so 1 cua IC */
    ADC_SelectChannel(4);
    UART0_Init();
    while (1)
    {
        ADC_StartConv();
        while (ADC_IsBusy())
        {
        }
        u16AdcValue = ADC_GetData();
        /* your code here */
        ADC_ClearFlag();
        UART0_number(u16AdcValue);
        UART0_SendData(0x0a);
        while (UART0_GetFlag(UART0_TX_FLAG) == 0)
        {
        }
        UART0_ClearFlag(UART0_TX_FLAG);
        Delay_Ms(10);
    }
}