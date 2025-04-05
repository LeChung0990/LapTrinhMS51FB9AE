/* main.c */
#include <ms51.h>
#include "delay.h"
#include "macro.h"
#include "ds18b20.h"
#include "nrf24.h"
#include "uart0.h"
// #include "stdlib.h" //rand()

#define MY_MAC_0  0xEF
#define MY_MAC_1  0xFF
#define MY_MAC_2  0x02
#define MY_MAC_3  0x20
#define MY_MAC_4  0x11
#define MY_MAC_5  0x01


//-----------------------ble nrf24l01------------------------
uint8_t buf[32];
static const uint8_t chRf[] = {2, 26, 80};
static const uint8_t chLe[] = {37, 38, 39};
uint8_t ch = 0;  // RF channel for frequency hopping
uint8_t i;
uint8_t z = 0;
int32_t ret;
int32_t exponent = -2;
//-------------------ds18b20----------------
uint8_t LSB;
uint8_t MSB;
uint8_t Tl;
uint8_t Th;
uint8_t conf;
uint8_t debug; //check ds18b20
uint8_t debug2; //check ds18b20
float temp;
//-------------------clock---------------
uint16_t ms = 0;
uint8_t s = 0;
//-------------------mode--------------------------
uint8_t mode = 2;

void WKT_ISR(void) __interrupt (17)            // Vector @  0x8B
{
    clr_WKCON_WKTF;
	clr_WKCON_WKTR;
}
/*
void UART0_ISR(void) __interrupt (4)
{
	if (UART0_GetFlag(UART0_RX_FLAG)) {
 		// your code here 
 		UART0_ClearFlag(UART0_RX_FLAG);
 	}
}
*/

void DS18x20_ReadTemp(void);

void main(void)
{   
    P00_PUSHPULL_MODE;  //MOSI
    P10_PUSHPULL_MODE;  //CLK
    P01_QUASI_MODE;     //MISO

    P11_PUSHPULL_MODE;  //CSN
    P12_PUSHPULL_MODE;  //CE
	
	// P15_PUSHPULL_MODE; //led
	// P15 = 0;

	P14_OPENDRAIN_MODE;	//pin ds18b20

	
			/*
	WKCON = 0x04;
	RWK = 156;
	
	set_EIE1_EWKT;
	set_IE_EA;
		*/
    
    

    DelayT0_Init();
    OneWireReset();
    DelayT0(100, CONFIG_1MS);
    // ADC_Init(); // Channel 4, Chan so 1 cua IC 
    // ADC_SelectChannel(4);
	UART0_Init(); //9600

	CE_PIN = 0;
	CSN_PIN = 1;
	SCK=0;              //SPI clock line init high 

	
	ble_init();
	// Set access addresses (TX address in nRF24L01) to BLE advertising 0x8E89BED6
	// Remember that both bit and byte orders are reversed for BLE packet format
	buf[0] = 0x30;
	buf[1] = swapbits(0x8E);
	buf[2] = swapbits(0x89);
	buf[3] = swapbits(0xBE);
	buf[4] = swapbits(0xD6);
	nrf_manybytes(buf, 5);
	buf[0] = 0x2A;    // set RX address in nRF24L01, doesn't matter because RX is ignored in this case
	nrf_manybytes(buf, 5); 
		/*
	UART0_STRING("===========================\n");
	UART0_STRING("chon cac che do:\n");
	UART0_STRING("1.ble\n");
	UART0_STRING("2.read memory\n");
	UART0_STRING("3.check time\n");
	UART0_STRING("===========================\n");
		*/
	while (1) 
	{
			/*
		if(UART0_Receive() == 0x31){
			UART0_STRING("===========================\n");
			UART0_STRING("1. che do ble\n");
			UART0_STRING("! da khoi dong ble...\n");
			mode = 2;
		}else if (UART0_Receive() == 0x32){	
			UART0_STRING("===========================\n");
			UART0_STRING("2. che do doc du lieu tu at24c02\n");
		} 
			*/

		if (mode == 2)
		{
			 
        DS18x20_ReadTemp();
        // P05 = ! P05;
        // debug = OneWireRead();
		
		//for( z = 0; z < 30; ++z){            
            ret = ((exponent & 0xff) << 24) | (((int32_t)((temp) * 100)) & 0xffffff);
            
            buf[0] = 0x42;  //PDU type, given address is random
            buf[1] = 0x11  + 10; //17 bytes of payload
            
            buf[2] = MY_MAC_0;
            buf[3] = MY_MAC_1;
            buf[4] = MY_MAC_2;
            buf[5] = MY_MAC_3;
            buf[6] = MY_MAC_4;
            buf[7] = MY_MAC_5;
            
            buf[8] = 2;   //flags (LE-only, limited discovery mode)
            buf[9] = 0x01;
            buf[10] = 0x05;
            
            buf[11] = 7;// + 8;
            buf[12] = 0x08;

            buf[13] = 'B';
            buf[14] = 'L';
            buf[15] = 'E';
            buf[16] = '-';
            buf[17] = '0';
            buf[18] = '9';
            

            buf[19] = 7;
            buf[20] = 0x16;

            buf[21] = 0x09;
            buf[22] = 0x18;
            

            buf[23] = (unsigned char)(ret);
            buf[24] = (unsigned char)(ret >> 8);
            buf[25] = (unsigned char)(ret >> 16);
            buf[26] = (unsigned char)(ret >> 24);
            
            buf[27] = 0x00;
            buf[28] = 0x00;    
            
            buf[29] = 0x55;  //CRC start value: 0x555555
            buf[30] = 0x55;
            buf[31] = 0x55;
            
            if(++ch == sizeof(chRf)) ch = 0;
            
            nrf_cmd(W_REGISTER|RF_CH, chRf[ch]);

            nrf_cmd(W_REGISTER|STATUS, 0x6E); //clear flags
              
            btLePacketEncode(buf, 32, chLe[ch]);
            
            
            nrf_simplebyte(FLUSH_RX); //Clear RX Fifo
            nrf_simplebyte(FLUSH_TX); //Clear TX Fifo
        
            // CSN_PIN = 0;
            // spi_byte(0xA0);
            // for(i = 0 ; i < 32 ; i++) spi_byte(buf[i]);
            // CSN_PIN = 1;
            nrf_wbuf(W_TX_PAYLOAD, buf, 32);
        
            nrf_cmd(W_REGISTER, 0x12);  //tx on
            CE_PIN = 1;    //do tx
            DelayT0(10, CONFIG_1MS); //delay_ms(10);
            CE_PIN = 0; // (in preparation of switching to RX quickly)
            
		}
			/*
		//set_WKTR;
		WKCON|=0x08;
		//set_PD;
		PCON|=0x02;

			*/
		
	}
}

void DS18x20_ReadTemp(void) {
    debug = OneWireReset();             // Reset Pulse
    OneWireWriteByte(SKIP_ROM);         // Issue skip ROM command (CCh)
    OneWireWriteByte(CONVERT_T);        // Convert T command (44h)

    while( !OneWireRead() );              // DQ will hold line low while making measurement
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


/*

void ADC_Init(void)
{
	// ADCCON1 |= (1 << 0);
    set_ADCCON1_ADCEN;
	// Clock 
	ADCCON1 &= ~(0x30);
	ADCCON1 |= 0x30;
	// Channel 0 
	P1M1 |= (1 << 7);
	P1M2 &= ~(1 << 7);
	AINDIDS |= (1 << 0);
	EADC = 1;
}
void ADC_value(void){
	ADC_StartConv();
	while (ADC_IsBusy());
	float u16AdcValue = ADC_GetData();
	ADC_ClearFlag();
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
    return  (ADCRH * 16 + (ADCRL & 0x0F));
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
*/
