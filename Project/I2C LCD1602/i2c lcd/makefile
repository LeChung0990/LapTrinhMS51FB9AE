#makefile ms51fb9ae
#Ngo Hung Cuong

CC = sdcc
PRJ = i2c_lcd
FLASH_SIZE = 16384

#do not edit
OBJ_DIR = obj

SRC = main.c
SRC += delay.c
SRC += i2c.c
SRC += i2c_lcd.c

OBJS = $(patsubst %.c,obj/%.rel,$(SRC))

all: $(OBJS)
	$(CC) $(OBJS) -o $(PRJ).ihx
	packihx $(PRJ).ihx > $(PRJ).hex
	makebin -s $(FLASH_SIZE) $(PRJ).ihx $(PRJ).bin

obj/%.rel: %.c
	$(CC) -c $< -I. -o $@

clean:
	rm -f obj/*.*
	rm -f $(PRJ).bin
	rm -f $(PRJ).hex
	rm -f $(PRJ).ihx
	rm -f $(PRJ).lk
	rm -f $(PRJ).map
	rm -f $(PRJ).mem
