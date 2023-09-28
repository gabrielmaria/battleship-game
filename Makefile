CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -Wno-sign-compare

SRC = main.c
OBJ = bn.o
EXECUTABLE = batalha_naval

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $<

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJ) $(EXECUTABLE)
