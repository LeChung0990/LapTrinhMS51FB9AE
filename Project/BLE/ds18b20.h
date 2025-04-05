#include <stdint.h>
#include <ms51.h>
#include <macro.h>
#include <delay.h>
/* ROM COMMANDS */
#define SEARCH_ROM         (uint8_t)0XF0
#define READ_ROM           (uint8_t)0x33
#define MATCH_ROM          (uint8_t)0x55
#define SKIP_ROM           (uint8_t)0xCC
#define ALARM_SEARCH       (uint8_t)0XEC
/* FUNCTION COMMANDS */
#define CONVERT_T          (uint8_t)0x44
#define WRITE_SCRATCHPAD   (uint8_t)0x4E
#define READ_SCRATCHPAD    (uint8_t)0xBE
#define COPY_SCRATCHPAD    (uint8_t)0X48
#define RECALL_EE          (uint8_t)0XB8
#define READ_POWER_SUPPLY  (uint8_t)0XB4

uint16_t OneWireReset(void);
void OneWireWriteBit(unsigned char b);
uint8_t OneWireReadBit(void);
void OneWireWriteByte(unsigned char b);
uint8_t OneWireReadByte(void);
