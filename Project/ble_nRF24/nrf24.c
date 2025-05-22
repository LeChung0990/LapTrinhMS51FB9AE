#include "nrf24.h"

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

/*----------------------BLE----------------------------*/
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

void ble_init(void){
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
}
