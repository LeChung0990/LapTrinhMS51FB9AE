#ifndef PWM_H_
#define PWM_H_
#include <stdint.h>
void PWM_Init(void);
void PWM0_RUN(void);
void PWM0_STOP(void);
void SET_DUTY(uint8_t dem);
#endif