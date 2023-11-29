#makefile ms51fb9ae
#Ngo Hung Cuong

CC = sdcc
PRJ = I2Cms51
FLASH_SIZE = 16384

#do not edit
OBJ_DIR = obj

SRC = main.c
SRC += i2c.c

OBJS = $(patsubst %.c,obj/%.rel,$(SRC))

all: $(OBJS)
	$(CC) $(OBJS) -o $(PRJ).ihx
	packihx $(PRJ).ihx > $(PRJ).hex
	makebin -s $(FLASH_SIZE) $(PRJ).ihx $(PRJ).bin

obj/%.rel: %.c
	$(CC) -c $< -I. -o $@

clean:
	rm -f obj/*.*
	rm -f $(PRJ).*
