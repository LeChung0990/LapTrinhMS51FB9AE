#include <MS51.h>
#include <stdint.h> /*Thu vien bien*/
#include <stdio.h>
#include <delay.h>
#include <macro.h>


void APROM(void);
/*Cau hinh chan ngat ngoai*/
void External_Int_Config(void)
{
	/*chon chan P1.1, PORT1, PIT1  chan so 14*/
	set_PICON_PIT1;	  /*Edge triggered.*/
	set_PINEN_PINEN1; /*Low-level/falling edge detect Enabled*/
	set_PICON_PIPS0;

	// /*chan P3.0 , PORT3, PIT0, chan so 5*/
	// set_PICON_PIT0;
	// set_PINEN_PINEN0;
	// set_PICON_PIPS0;
	// set_PICON_PIPS1;
}

void main(void)
{

	/* P1.5, Chan 10 */
	/* Push-pull */
	P15_PUSHPULL_MODE;

	P15 = 0;
	External_Int_Config();
	// P14_INPUT_MODE;
	APROM();
	while (1)
	{
		// if (P12)
		// {
		// 	P15 = 0; /*Chan 10*/
		// }
		// else
		// {
		// 	P15 = 1; /*Chan 10*/
		// }
	}
}

/*Ham ngat ngoai*/
void Exti_ISR(void) __interrupt(7)
{
	PIF &= ~(1 << 1); /*clear Interrupt Flags*/
					  /*code do something........*/
	P15 = 1;
}
void APROM(void)
{
	TA = 0xAA; // CHPCON is TA protected
	TA = 0x55;
	CHPCON |= 0x01; // IAPEN = 1, enable IAP mode
	TA = 0Xaa;		// IAPUEN is TA protected
	TA = 0x55;
	IAPUEN |= 0x01; // APUEN = 1, enable APROM update
	IAPCN = 0x22;	// Erase page 200h~27Fh
	IAPAH = 0x02;
	IAPAL = 0x00;
	IAPFD = 0Xff;
	TA = 0Xaa; // IAPTRG is TA protected
	TA = 0x55;
	IAPTRG |= 0x01; // write ‘1’ to IAPGO to trigger IAP process
	IAPCN = 0x21;	// Program 201h with 55h
	IAPAH = 0x02;
	IAPAL = 0x01;
	IAPFD = 0x55;
	TA = 0Xaa;
	TA = 0x55;
	IAPTRG |= 0x01; // write ‘1’ to IAPGO to trigger IAP process
	TA = 0Xaa;		// IAPUEN is TA protected
	TA = 0x55;
	IAPUEN &= ~0x01; // APUEN = 0, disable APROM update
	TA = 0Xaa;		 // CHPCON is TA protected
}