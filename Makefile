# compiler
CC = gcc

# flags
CFLAGS = -Wall -Wextra -pedantic -std=c99

# name fo executable
EXEC = edna
EXEC_DIR = bin

OUT = $(EXEC_DIR)/$(EXEC)

# src files
SRC = edna.c


#default command
all: $(OUT)

run: $(OUT)
	./$(OUT)

$(OUT): $(SRC)
	mkdir -p $(EXEC_DIR)
	$(CC) $(SRC) -o $@ $(CFLAGS)

clean:
	rm -rf $(BIN_DIR)

.PHONY: all run clean
