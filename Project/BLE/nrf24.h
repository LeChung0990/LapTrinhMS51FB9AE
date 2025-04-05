#include <stdint.h>
#include <ms51.h>
#include <macro.h>
#include <delay.h>

/*	pin nrf24l01 with ms51fb9ae*/
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
void ble_init(void);

