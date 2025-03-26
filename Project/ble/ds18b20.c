#include <ds18b20.h>
#include "macro.h"
//chan noi voi DS18B20 la chan 1, P05
#define PinSensor   P05

void OneWireHigh(void){
    // digitalWrite(PinSensor, HIGH);
    P14 = 1;
}
void OneWireRelease(void){
    // pinMode(PinSensor, OUTPUT);
    // digitalWrite(PinSensor, LOW);
    P14 = 0;
}
uint8_t OneWireRead(void){
    // // pinMode(PinSensor, INPUT);
    // uint8_t Status;
    
    // if(P05) Status = 0x01;
    // else Status = 0x00;
    return P14;
}
uint16_t OneWireReset(void){
    uint16_t Status;

    P14_OPENDRAIN_MODE;
    OneWireRelease();
    DelayT0(480, CONFIG_1US);
    OneWireHigh();
    // DelayT0(70, CONFIG_1US);
    DelayT0(60, CONFIG_1US);
    Status = OneWireRead();
    // delayMicroseconds(480);
    DelayT0(480, CONFIG_1US);
    // OneWireHigh();
    return Status;
}
void OneWireWriteBit(unsigned char b){
    if(b){
        OneWireRelease();
        // DelayT0(6, CONFIG_1US);
         __asm__("nop\n");
        // delayMicroseconds(6);
        OneWireHigh();
        // delayMicroseconds(64);
        DelayT0(60, CONFIG_1US);
    }else {
        OneWireRelease();
        // delayMicroseconds(60);
        DelayT0(60, CONFIG_1US);
        OneWireHigh();
        // delayMicroseconds(10);
        // DelayT0(10, CONFIG_1US);
        __asm__("nop\n");
    }
}
uint8_t OneWireReadBit(void){
    unsigned char out;

    OneWireRelease();
    // delayMicroseconds(6);
    // DelayT0(6, CONFIG_1US);
    __asm__("nop\n");
    OneWireHigh();
    // delayMicroseconds(9);
    // DelayT0(9, CONFIG_1US);
    out = OneWireRead();

    // if(out){
    //     out = 0x01;
    // } else {
    //     out = 0x00;
    // }
    // delayMicroseconds(55);
    // DelayT0(55, CONFIG_1US);
    DelayT0(60, CONFIG_1US);
    return out;
}
void OneWireWriteByte(unsigned char b){
    uint8_t i;

    for(i=0; i < 8; ++i)    {
        OneWireWriteBit(b & 0x01);
        b = b >> 1;
    }
}
uint8_t OneWireReadByte(void){
    uint8_t out;
    uint8_t i;

    out = 0;
    for(i=0; i < 8; ++i){
        out = out >> 1;
        if(OneWireReadBit() & 0x01){
            out = out | 0x80;
        }
    }
    return out;
}