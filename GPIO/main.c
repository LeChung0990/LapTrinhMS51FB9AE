#include <MS51.h>
#include <stdint.h>		/*Thu vien bien*/
#include <stdio.h>
#include <delay.h>
#include <macro.h>

/*Cau hinh chan ngat ngoai*/
void External_Int_Config(void){
	/*chon chan P1.1, PORT1, PIT1  chan so 14*/
	set_PICON_PIT1;		/*Edge triggered.*/
	set_PINEN_PINEN1;	/*Low-level/falling edge detect Enabled*/
	set_PICON_PIPS0;

	// /*chan P3.0 , PORT3, PIT0, chan so 5*/
	set_PICON_PIT0;
	set_PINEN_PINEN0;
	set_PICON_PIPS0;
	set_PICON_PIPS1;

 
}
/*Ham ngat ngoai*/
void Exti_ISR(void) __interrupt (7) {
	PIF &= ~(1<<1);	/*clear Interrupt Flags*/
	/*code do something........*/
}
int ch = 9;
void main(void)
{

	/* P1.5, Chan 10 */
	/* Push-pull */
	set_P1M1_5;
	set_P1M2_1; 
	while (1) {
        P15 = 0; /*Chan 10*/
        Delay_Ms(50);
        P15 = 1; /*Chan 10*/
        Delay_Ms(50);
	}
}
// __asm__("nop\n");
