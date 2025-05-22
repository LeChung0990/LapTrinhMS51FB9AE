#include <stdint.h> /*Thu vien bien*/
#include <ms51.h>
#include <macro.h>
#include <tm1628.h>
#include "ds18b20.h"
#include "delay.h"
#include "i2c.h"
//#include <uart.h>
unsigned char buffer[14]= {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
uint16_t i =0;
uint16_t a = 0;
//-------------------ds18b20----------------
uint8_t LSB;
uint8_t MSB;
uint8_t Tl;
uint8_t Th;
uint8_t conf;
uint8_t debug; //check ds18b20
uint8_t debug2; //check ds18b20
float temp;

void DS18x20_ReadTemp(void) {
    debug = OneWireReset();             // Reset Pulse
    OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command (CCh)
    OneWireWriteByte(CONVERT_T);        // Convert T command (44h)

    while( OneWireRead() == 0);              // DQ will hold line low while making measurement
    debug2 = OneWireReset();             // Start new command sequence
    OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command
    OneWireWriteByte(READ_SCRATCHPAD);  // Read Scratchpad (BEh) - 15 bits
    LSB = OneWireReadByte();
    MSB = OneWireReadByte();
    Tl = OneWireReadByte();
    Th = OneWireReadByte();
    conf = OneWireReadByte();

    OneWireReset();                       // Stop Reading
    temp = ((MSB << 8) | LSB) / 16.0;
}
//----------------------------ds1307----------
uint8_t hour;
uint8_t minute;
uint8_t second;
// Giay, phut, gio, thu, ngay, thang
uint8_t u8Time[6] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

uint8_t decimal_to_bcd(uint8_t value)
{
	uint8_t hex;
	hex = (((value / 10) << 4) + (value % 10));
	return hex;
}
uint8_t bcd_to_decimal(uint8_t data){
	/*BCD to Decimal*/
	uint8_t temp;
	temp = (data >> 4) & 0x0F;
	data = data & 0x0F;
	return ((temp*10)+data);
}
void writeTime(uint8_t giay, uint8_t phut, uint8_t gio){
    uint8_t u8Data[3];
    u8Data[0] = decimal_to_bcd(giay);
    u8Data[1] = decimal_to_bcd(phut);
    u8Data[2] = decimal_to_bcd(gio);
    data_write(ADDR_DS13, 0x00, 3, u8Data);
}
void writeDay(uint8_t date, uint8_t month){
    uint8_t u8Data[2];
    u8Data[0] = decimal_to_bcd(date);
    u8Data[1] = decimal_to_bcd(month);
    data_write(ADDR_DS13, 0x04, 2, u8Data);
}
void readTime(void){
    uint8_t temp;
    data_read(ADDR_DS13, 0x00, 6, u8Time);
    for(i=0; i<6; ++i){
        /*BCD to Decimal*/
        if((u8Time[i] >=0) && (u8Time[i] < 90) ){
            temp = (u8Time[i] >> 4) & 0x0F;
            u8Time[i] = u8Time[i] & 0x0F;
            u8Time[i] = (temp * 10) + u8Time[i];
        } else {
            u8Time[i] = 0;
        }
    }
}

void main(void)
{
	/* P1.5, Chan 10 */
	// P15_PUSHPULL_MODE;
	// P06 = 1;
	// P0M1 &= ~(1 << 6);
	// P0M2 |= (1 << 6);
	// P07 = 1;
	// P0M1 &= ~(1 << 7);
	// P0M2 &= ~(1 << 7);
	
	i2c_init();
	DelayT0_Init();
    OneWireReset();
    DelayT0(100, CONFIG_1MS);
	TM1628_INIT(1, 7);

	// for(i=0; i< 14; ++i)
	// {
	// 	TM1628_display_segments(i,0,0); 
	// }

	DelayT0(1000, CONFIG_1MS);

	// writeTime(34,36,14);
	// writeDay(26,4);

	while (1)
	{	
		
		// DS18x20_ReadTemp();

		// buffer[0] = (uint16_t) (temp / 10) %10;
		// buffer[2] = (uint16_t) (temp / 1)  %10;
		// buffer[4] = (uint16_t) (temp * 10) %10;
		// buffer[6] = (uint16_t) (temp * 100) %10;
		// for(i=0; i< 14; ++i)
		// {
		// 	TM1628_display_segments(i,buffer[i],2); 
		// }
		// 	DelayT0(1000, CONFIG_1MS);

		// if (a> 5) {
		// 	writeTime(a,35,14); a = 0;
		// }


		readTime();

		buffer[0] = (uint8_t) (u8Time[1] / 10) %10;
		buffer[2] = (uint8_t) (u8Time[1] / 1)  %10;
		buffer[4] = (uint8_t) (u8Time[0] / 10) %10;
		buffer[6] = (uint8_t) (u8Time[0] / 1) %10;
		for(i=0; i< 14; ++i)
		{
			
			//if( a % 2 ){
				TM1628_display_segments(i,buffer[i],1); 
			//}
			//else {
				//TM1628_display_segments(i,buffer[i],0); 
			//}
		}
		//a++;
		//if(a>99) a =0;
		DelayT0(250, CONFIG_1MS);
		a++;
			/*
		__asm 
		setb	_P15;
		nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;
		clr		_P15;
		nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;nop;
		__endasm; 
			*/
		//P15 = 1;
		//P15 = 0;

	}
}




/*
unsigned char _sdcc_external_startup (void)  
{  
    __asm  
    mov 0xC7, #0xAA  
    mov 0xC7, #0x55  
    mov 0xFD, #0x5A  
    mov 0xC7, #0xAA  
    mov 0xC7, #0x55  
    mov 0xFD, #0xA5  
    __endasm;  
    return 0;  
} 
*/
