CC=mipsel-linux-gnu-gcc
CFLAGS=-static

TARGET=hex2dec
SOURCES=reverse_main.c reverse.S

all: $(TARGET) run clean

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)
	@echo "Compilation complete."

run:
	qemu-mipsel-static ./$(TARGET)

clean:
	rm -f $(TARGET)
