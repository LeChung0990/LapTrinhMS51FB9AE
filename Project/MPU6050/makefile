#makefile ms51fb9ae
#Ngo Hung Cuong

CC = sdcc
PRJ = mpu6050
FLASH_SIZE = 16384
XRAM_SIZE = 1024
IRAM_SIZE = 256

#do not edit
OBJ_DIR = obj

SRC = main.c
SRC += i2c.c
SRC += delay.c
SRC += uart0.c


OBJS = $(patsubst %.c,obj/%.rel,$(SRC))

all: $(OBJS)
	$(CC) --xram-loc 0 --iram-size $(IRAM_SIZE) --xram-size $(XRAM_SIZE) --code-size $(FLASH_SIZE) $(OBJS) -o $(PRJ).ihx
	packihx $(PRJ).ihx > $(PRJ).hex
	makebin -s $(FLASH_SIZE) $(PRJ).ihx $(PRJ).bin

obj/%.rel: %.c
	$(CC) --xram-loc 0 --xram-size $(XRAM_SIZE) -c $< -I. -o $@

clean:
	rm -f obj/*.*
	rm -f $(PRJ).*
