CFLAGS = -std=c99 -O3 -W -Wall -D_GNU_SOURCE=1
LDFLAGS = -lasound

all: main

test: main
	./main scrap.vgm

main: main.o alsa.o pcm.o wav.o mmap_file.o

clean:
	rm -f *.o main
