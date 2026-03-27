# compiler
CC = gcc

# flags
CFLAGS = -Wall -Wextra -pedantic -std=c99

# name fo executable
EXEC = edna

# src files
SRC = edna.c


#default command
all: $(EXEC)

run: $(EXEC)
	./$(EXEC)

$(EXEC): $(SRC)
	$(CC) $(SRC) -o $@ $(CFLAGS)

clean:
	rm -f $(EXEC)

.PHONY: all run clean
