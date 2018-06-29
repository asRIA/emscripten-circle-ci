CC=emcc
CFLAGS=-O2
MKDIR_P = mkdir -p
OUT_DIR=out

.PHONY: directories clean

all: directories main

directories: ${OUT_DIR}

${OUT_DIR}:
	${MKDIR_P} ${OUT_DIR}

main: src/main.cpp
	$(CC) src/main.cpp -o out/main.js

clean:
	rm -fr out
