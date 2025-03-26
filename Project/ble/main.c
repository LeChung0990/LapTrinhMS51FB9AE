#include <stdint.h> /*Thu vien bien*/
#include <ms51.h>
#include <macro.h>
#include <delay.h>
//#include <uart.h>
#include "ds18b20.h"

//---------------------DEFINE--------------------------
#define SCK         P10
#define MOSI        P00
#define MISO        P01
#define CE_PIN 		P12
#define CSN_PIN 	P11

/* commands */
#define R_REGISTER                          0x00
#define W_REGISTER                          0x20
#define R_RX_PAYLOAD                        0x61
#define W_TX_PAYLOAD                        0xA0
#define FLUSH_TX                            0xE1
#define FLUSH_RX                            0xE2
#define NOP                                 0xFF
/* registers */
#define CONFIG                              0x00
  #define MASK_RX_DR                        6
  #define MASK_TX_DS                        5
  #define MASK_MAX_RT                       4
  #define EN_CRC                            3
  #define CRCO                              2
  #define PWR_UP                            1
  #define PRIM_RX                           0
#define EN_AA                               0x01
#define EN_RXADDR                           0x02
#define SETUP_AW                            0x03
#define SETUP_RETR                          0x04
#define ARD                                 4
#define ARC                                 0
#define RF_CH                               0x05
#define RF_SETUP                            0x06
  #define RF_PWR                            1
#define STATUS                              0x07
#define RX_DR                               6
#define TX_DS                               5
#define MAX_RT                              4
#define RX_P_NO                             1
#define TX_FULL                             0
#define OBSERVE_TX                          0x08
#define RX_ADDR_P0                          0x0A
#define RX_ADDR_P1                          0x0B
#define RX_ADDR_P2                          0x0C
#define RX_ADDR_P3                          0x0D
#define RX_ADDR_P4                          0x0E
#define RX_ADDR_P5                          0x0F
#define TX_ADDR                             0x10
#define RX_PW_P0                            0x11
#define DYNPD                               0x1C
#define FEATURE                             0x1D

#define PACKET_SIZE                         32

#define EN_RXADDR_MASK                      0x01
#define EN_AA_MASK                          0
#define RF_SETUP_MASK                       (3 << RF_PWR)
#define CONFIG_MASK                         (1 << MASK_RX_DR) | (1 << MASK_TX_DS) | (1 << MASK_MAX_RT) | (1 << PWR_UP)
#define SETUP_RETR_MASK                     0
#define SETUP_AW_MASK                       0x02 
#define STATUS_CLEAR_MASK                   (1 << RX_DR) | (1 << TX_DS) | (1 << MAX_RT) | (1 << TX_FULL)
#define DYNPD_MASK                          0
#define FEATURE_MASK                        0
#define CHANNEL_INIT                        0x02


#define MY_MAC_0  0xEF
#define MY_MAC_1  0xFF
#define MY_MAC_2  0x02
#define MY_MAC_3  0x20
#define MY_MAC_4  0x11
#define MY_MAC_5  0x01

//-----------------------private variable--------------------
uint8_t buf[32];
static const uint8_t chRf[] = {2, 26, 80};
static const uint8_t chLe[] = {37, 38, 39};
uint8_t ch = 0;  // RF channel for frequency hopping
uint8_t i;
uint8_t z;
float temp;

uint8_t LSB;
uint8_t MSB;
uint8_t Tl;
uint8_t Th;
uint8_t conf;
uint8_t debug;
uint8_t debug2;

//-----------------------function----------------------------------
uint8_t spi_byte(uint8_t byte);
void nrf_cmd(uint8_t cmd, uint8_t data);
void nrf_simplebyte(uint8_t cmd);
void nrf_manybytes(uint8_t* data, uint8_t len);
void nrf_wbuf(uint8_t reg,uint8_t* buff ,uint8_t len);
void btLeCrc(const uint8_t* data, uint8_t len, uint8_t* dst);
uint8_t  swapbits(uint8_t a);
void btLeWhiten(uint8_t* data, uint8_t len, uint8_t whitenCoeff);
static inline uint8_t btLeWhitenStart(uint8_t chan);
void btLePacketEncode(uint8_t* packet, uint8_t len, uint8_t chan);
void DS18x20_ReadTemp(void);





void WKT_ISR(void) __interrupt (17)            // Vector @  0x8B
{
    
    clr_WKCON_WKTF;
	clr_WKCON_WKTR;

}
//---------------------------------------MAIN-----------------------------------
int number= 9876;
void main(void)
{
	/* P1.5, Chan 10 */
	P15_PUSHPULL_MODE;
	// P06 = 1;
	// P0M1 &= ~(1 << 6);
	// P0M2 |= (1 << 6);
	// P07 = 1;
	// P0M1 &= ~(1 << 7);
	// P0M2 &= ~(1 << 7);

	P00_PUSHPULL_MODE;  //MOSI
    P10_PUSHPULL_MODE;  //CLK
    P01_QUASI_MODE;     //MISO

    P11_PUSHPULL_MODE;  //CSN
    P12_PUSHPULL_MODE;  //CE
	
	// P15_PUSHPULL_MODE; //led

	P14_OPENDRAIN_MODE;

	WKCON = 0x04;
	RWK = 156;
	
	set_EIE1_EWKT;
	set_IE_EA;
	
    
    CE_PIN = 0;
    CSN_PIN = 1;

    SCK=0;              //SPI clock line init high 

    DelayT0_Init();
    OneWireReset();
    DelayT0(100, CONFIG_1MS);


     // Now initialize nRF24L01+, setting general parameters
    nrf_cmd(W_REGISTER|CONFIG, 0x12);  //on, no crc, int on RX/TX done
    nrf_cmd(W_REGISTER|EN_AA, 0x00);  //no auto-acknowledge
    nrf_cmd(W_REGISTER|EN_RXADDR, 0x00);  //no RX
    nrf_cmd(W_REGISTER|SETUP_AW, 0x02);  //4-byte address
    nrf_cmd(W_REGISTER|SETUP_RETR, 0x00);  //no auto-retransmit
    nrf_cmd(W_REGISTER|RF_SETUP, 0x06);  //1MBps at 0dBm
    //0x06
    nrf_cmd(W_REGISTER|STATUS, 0x3E);  //clear various flags
    nrf_cmd(W_REGISTER|DYNPD, 0x00);  //no dynamic payloads
    nrf_cmd(W_REGISTER|FEATURE, 0x00);  //no features
    nrf_cmd(W_REGISTER|RX_PW_P0, 32);    //always RX 32 bytes
    nrf_cmd(W_REGISTER|EN_RXADDR, 0x01);  //RX on pipe 0

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
	
	


	while (1)
	{
		DS18x20_ReadTemp();
		// P05 = ! P05;
		// debug = OneWireRead();

		for(z = 0; z < 30; ++z){

            //P15=1;

            

            // ADC_StartConv();
            // while (ADC_IsBusy());
            // float u16AdcValue = ADC_GetData();
            // ADC_ClearFlag();
            // float temprature =  98.9;
            int32_t ret;
            int32_t exponent = -2;
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
            
            // if(++ch == sizeof(chRf)) ch = 0;
            
            nrf_cmd(W_REGISTER|RF_CH, chRf[ch]);

            nrf_cmd(W_REGISTER|STATUS, 0x6E);
            // nrf_cmd(0x27, 0x6E);  //clear flags

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
            
            /*
            for(uint8_t i=0; i<9; i++){
                P15 = !P15;
                DelayT0(100, CONFIG_1MS);
            }
            P15 = 0;
            //set_WKTR;
            WKCON|=0x08;
            //set_PD;
            PCON|=0x02;
            
            for(uint8_t i=0; i<9; i++){
                P15 = !P15;
                DelayT0(500, CONFIG_1MS);
            }
            P15 = 0;
            */
            //P15=0;
		}
		//set_WKTR;
		WKCON|=0x08;
		//set_PD;
		PCON|=0x02;
		
		
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


void btLeCrc(const uint8_t* data, uint8_t len, uint8_t* dst) {
  // implementing CRC with LFSR
  uint8_t v, t, d;

    while (len--) {
    d = *data++;
        for (v = 0; v < 8; v++, d >>= 1) {
            t = dst[0] >> 7;
            dst[0] <<= 1;
            if (dst[1] & 0x80) dst[0] |= 1;
            dst[1] <<= 1;
            if (dst[2] & 0x80) dst[1] |= 1;
            dst[2] <<= 1;

            if (t != (d & 1)) {
                dst[2] ^= 0x5B;
                dst[1] ^= 0x06;
            }
        }
    }
}

uint8_t  swapbits(uint8_t a) {
  // reverse the bit order in a single byte
    uint8_t v = 0;
    if (a & 0x80) v |= 0x01;
    if (a & 0x40) v |= 0x02;
    if (a & 0x20) v |= 0x04;
    if (a & 0x10) v |= 0x08;
    if (a & 0x08) v |= 0x10;
    if (a & 0x04) v |= 0x20;
    if (a & 0x02) v |= 0x40;
    if (a & 0x01) v |= 0x80;
    return v;
}

void btLeWhiten(uint8_t* data, uint8_t len, uint8_t whitenCoeff) {
  // Implementing whitening with LFSR
    uint8_t  m;
    while (len--) {
        for (m = 1; m; m <<= 1) {
            if (whitenCoeff & 0x80) {
                whitenCoeff ^= 0x11;
                (*data) ^= m;
            }
            whitenCoeff <<= 1;
        }
        data++;
    }
}

static inline uint8_t btLeWhitenStart(uint8_t chan) {
  //the value we actually use is what BT'd use left shifted one...makes our life easier
    return swapbits(chan) | 2;
}


void btLePacketEncode(uint8_t* packet, uint8_t len, uint8_t chan) {
    // Assemble the packet to be transmitted
    // Length is of packet, including crc. pre-populate crc in packet with initial crc value!
    uint8_t i, dataLen = len - 3;
    btLeCrc(packet, dataLen, packet + dataLen);
    for (i = 0; i < 3; i++, dataLen++)
    packet[dataLen] = swapbits(packet[dataLen]);
    btLeWhiten(packet, len, btLeWhitenStart(chan));
    for (i = 0; i < len; i++)
    packet[i] = swapbits(packet[i]); // the byte order of the packet should be reversed as well
}

uint8_t spi_byte(uint8_t byte) {
		
    uint8_t buffer;
	uint8_t counter;
    buffer=byte;
    for(counter = 8; counter; counter--)
    {
        if (buffer & 0x80)   MOSI=1;
        else  MOSI=0;
        buffer <<= 1;
        SCK=1;
        DelayT0(3, CONFIG_1US);
        buffer &= 0xfe;                //Clear 0th bit
        buffer|=MISO;
        SCK=0;  
    }
    return buffer;
		
}

void nrf_cmd(uint8_t cmd, uint8_t data) {
    // Write to nRF24's register
    CSN_PIN = 0; 
    spi_byte(cmd);
    spi_byte(data);
    CSN_PIN = 1; 
}

void nrf_simplebyte(uint8_t cmd) {
    // transfer only one byte
    CSN_PIN = 0; 
    spi_byte(cmd);
    CSN_PIN = 1; 
}

void nrf_manybytes(uint8_t* data, uint8_t len) {
    // transfer several bytes in a row
    CSN_PIN = 0; 
    do {
        spi_byte(*data++);
    } while (--len);
    CSN_PIN = 1; 
}

void nrf_wbuf(uint8_t reg,uint8_t* buff ,uint8_t len)
{
    uint8_t sp;
    CSN_PIN = 0; 
    spi_byte(reg);
    for(sp=0;sp<len;sp++)
    {
        spi_byte(buff[sp]);
    }
    CSN_PIN = 1; 
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


    // Serial.print("READ_SCRATCHPAD: LSB = ");
    // Serial.print(LSB);
    // Serial.print(" | MSB = ");
    // Serial.print(MSB);
    temp = ((MSB << 8) | LSB) / 16.0;
    // Serial.print(" | temp = ");
    // Serial.print(temp);
    // Serial.print(" | CONFIG:");
    // Serial.println(conf);
}

