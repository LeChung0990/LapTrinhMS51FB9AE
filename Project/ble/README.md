## BLE tempature using nRF24L01 

## Reference :
> https://youtu.be/kFgn1lJ1uQE?si=A9cN94U7j9QWmDRG

## Result
```c
~/laptrinh/msprog/LapTrinhMS51FB9AE/Project/ble$ make
sdcc --xram-loc 0 --code-loc 0x00 --iram-size 256 --xram-size 1024 --code-size 16384 -c main.c -I. -o obj/main.rel
main.c:453: warning 112: function 'OneWireRead' implicit declaration
main.c:453: warning 84: 'auto' variable 'OneWireRead' may be used before initialization
main.c:453: warning 84: 'auto' variable 'OneWireRead' may be used before initialization
sdcc --xram-loc 0 --code-loc 0x00 --iram-size 256 --xram-size 1024 --code-size 16384 -c delay.c -I. -o obj/delay.rel
sdcc --xram-loc 0 --code-loc 0x00 --iram-size 256 --xram-size 1024 --code-size 16384 -c ds18b20.c -I. -o obj/ds18b20.rel
sdcc --xram-loc 0 --code-loc 0x00 --iram-size 256 --xram-size 1024 --code-size 16384 obj/main.rel obj/delay.rel obj/ds18b20.rel -o ble.ihx
packihx ble.ihx > ble.hex
packihx: read 120 lines, wrote 200: OK.
makebin -s 16384 ble.ihx ble.bin
```
