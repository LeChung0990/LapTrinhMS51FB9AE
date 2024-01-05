#include <stdint.h> /*Thu vien bien*/
#include <ms51.h>
#include <macro.h>
#include <delay.h>
#include <uart.h>

// #define PAGE_ERASE_AP 0x22
// #define BYTE_PROGRAM_AP 0x21

__bit BIT_TMP;
// volatile unsigned char code Data_Flash[128] _at_ 0x0200;
// __code __at(0x0200) unsigned char Data_Flash[128]; //flash
uint8_t number= 0x34;
uint8_t Result;
uint8_t page_buffer[64];
const uint8_t u8Data = 56;

void Write_DATAFLASH_BYTE(unsigned int u16EPAddr,unsigned char u8EPData);

unsigned char Read_APROM_BYTE(unsigned int __code* u16_addr)
{
    unsigned char rdata;
    rdata = *u16_addr >> 8;
    return rdata;
}
void main(void)
{
  // TA = 0Xaa;
  // //CHPCON is TA protected
  // TA = 0x55;
  // CHPCON |= 0x01;
  // //IAPEN = 1, enable IAP mode
  // TA = 0Xaa;
  // //IAPUEN is TA protected
  // TA = 0x55;
  // IAPUEN |= 0x01;
  // //APUEN = 1, enable APROM update

  // IAPCN = PAGE_ERASE_AP;
  // //Erase page 200h~27Fh
  // IAPAH = 0x02;
  // IAPAL = 0x00;
  // IAPFD = 0Xff;
  // TA = 0Xaa;
  // //IAPTRG is TA protected
  // TA = 0x55;
  // IAPTRG |= 0x01;
  // //write ‘1’ to IAPGO to trigger IAP process


  // IAPCN = BYTE_PROGRAM_AP; // Program 201h with 55h
  // IAPAH = 0x02;
  // IAPAL = 0x01;
  // IAPFD = 0x28;
  // TA = 0Xaa;
  // TA = 0x55;
  // IAPTRG |= 0x01;
  // //write ‘1’ to IAPGO to trigger IAP process

  // TA = 0Xaa;
  // //IAPUEN is TA protected
  // TA = 0x55;
  // IAPUEN &= ~0x01;
  // //APUEN = 0, disable APROM update
  // TA = 0Xaa;
  // //CHPCON is TA protected
  // TA = 0x55;
  // CHPCON &= ~0x01;
  // //IAPEN = 0, disable IAP mode
  // P0 = Data_Flash[1];
  // //Read content of address 200h+1
  
	// P15_PUSHPULL_MODE;




	UART_Open(UART0_Timer3, BAUD9600);
	DelayT0_Init();
  UART0_STRING("Start:");

  // Write_DATAFLASH_BYTE(0x200, number);

	while (1)
	{
    number = Read_APROM_BYTE(0x200);
    UART0_NUMBER(number);

    
    // delay_tmp();
    // number++;
    // if(number > 200) number = 0;
    // Write_DATAFLASH_BYTE(0x3800, number);
		// UART0_STRING("chung");
		// UART0_NUMBER(number);
		DelayT0(1000, CONFIG_1MS);
	}
}


void Write_DATAFLASH_BYTE(unsigned int u16EPAddr,unsigned char u8EPData)
{
  unsigned char looptmp=0;
  unsigned int u16_addrl_r;
  unsigned int RAMtmp;
  
//Check page start address
  u16_addrl_r=(u16EPAddr/128)*128;
//Save APROM data to XRAM0
  for(looptmp=0;looptmp<0x80;looptmp++)
  {
    RAMtmp = Read_APROM_BYTE((uint16_t  __code*) (u16_addrl_r+looptmp));
    page_buffer[looptmp]=RAMtmp;
  }
// Modify customer data in XRAM
  page_buffer[u16EPAddr&0x7f] = u8EPData;
  
//Erase APROM DATAFLASH page
    IAPAL = u16_addrl_r&0xff;
    IAPAH = (u16_addrl_r>>8)&0xff;
    IAPFD = 0xFF;
    set_CHPCON_IAPEN; 
    set_IAPUEN_APUEN;
    IAPCN = 0x22;     
     set_IAPTRG_IAPGO; 
    
//Save changed RAM data to APROM DATAFLASH
    set_CHPCON_IAPEN; 
    set_IAPUEN_APUEN;
    IAPCN = 0x21;
    for(looptmp=0;looptmp<0x80;looptmp++)
    {
      IAPAL = (u16_addrl_r&0xff)+looptmp;
      IAPAH = (u16_addrl_r>>8)&0xff;
      IAPFD = page_buffer[looptmp];
      set_IAPTRG_IAPGO;      
    }
    clr_IAPUEN_APUEN;
    clr_CHPCON_IAPEN;
}  

// #endif