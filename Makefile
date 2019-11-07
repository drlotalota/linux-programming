# Initial Makefile

all: main.c
	gcc main.c -o fantastic

clean:
	rm -f ./fantastic
