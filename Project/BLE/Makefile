#makefile ms51fb9ae
#Ngo Hung Cuong

CC = sdcc
PRJ = nrf
FLASH_SIZE = 14336
XRAM_SIZE = 1024
IRAM_SIZE = 256

#do not edit
OBJ_DIR = obj

SRC = main.c
SRC += delay.c
SRC += ds18b20.c
SRC += nrf24.c
SRC += uart0.c


OBJS = $(patsubst %.c,obj/%.rel,$(SRC))

all: $(OBJS)
	$(CC) --xram-loc 0 --code-loc 0x00 --iram-size $(IRAM_SIZE) --xram-size $(XRAM_SIZE) --code-size $(FLASH_SIZE) $(OBJS) -o $(PRJ).ihx
	packihx $(PRJ).ihx > $(PRJ).hex
	makebin -s $(FLASH_SIZE) $(PRJ).ihx $(PRJ).bin

obj/%.rel: %.c
	$(CC) --xram-loc 0 --code-loc 0x00 --iram-size $(IRAM_SIZE) --xram-size $(XRAM_SIZE) --code-size $(FLASH_SIZE) -c $< -I. -o $@

clean:
	rm -f obj/*.*
	rm -f $(PRJ).*
