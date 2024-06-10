# 定义编译器和编译选项
CC=mipsel-linux-gnu-gcc
CFLAGS=-static
# 定义目标文件
TARGET=hex2dec
# 定义源文件
SOURCES=hex2dec_main.c hex2dec.S hex2dec_gold.c

# 默认目标
all: $(TARGET) run clean

# 编译目标
$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)
	@echo "Compilation complete."

# 运行目标
run:
	qemu-mipsel-static ./$(TARGET)

# 清理目标
clean:
	rm -f $(TARGET)