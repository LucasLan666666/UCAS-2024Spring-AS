# 汇编复习

## 基础知识

### 什么是汇编语言？

一种基于机器指令助记符的编程语言

## 编程初步

### 汇编语言程序组成

- **汇编指令** 、**数据** 和 **汇编指导指令** 组成
- 主体是 **汇编指令**

### 汇编指导指令

.section
.data
.text
.globl
.ascii

### 系统调用

系统调用即调用操作系统提供的功能，需要在核心态运行

- 中断引发特权态改变，从用户态进入 `核心态`
- `Linux` 约定 `0x80` （128）号软中断为系统调用
- `x86-64` 中， `1` 号为写文件，`60` 号为程序退出

## 基础指令

### MOV 类

```asm
    movl 4(,%esp,2), %eax       esp 不能做 index
    movl %eax, %bx              操作数大小不匹配
    movl %eax, $4               立即数不能为目的操作数
    movb bytevar, 4(%ebx)       太多内存操作数
```

### XCHG 指令

数据交换

### MOVSX MOVZX

- 目的操作数 `必须是寄存器` ，源操作数是寄存器或内存单元
- 目的操作数的大小大于源操作数

### 算术指令

- `inc` 、 `dec` 、 `not` 不改变标志位
- `test` 、 `cmp` 都只改变标志位，不保存计算结果
- `neg` 如果 `destination = 0` ，`CF=0` ，否则 `CF=1`

### 移位指令

- `CF` 保存的都是移出的最后一位
- `OF` 只有移出仅一位时有效，当作有符号数乘除 2 判断如何置位

### 乘除指令

#### MUL：无符号数乘法

- 指令格式（Intel）： `MUL src`
- 语义： `src` 与隐含操作数累加器（AL/AX/EAX）相乘，结果存放在（AX / DX:AX / EDX:EAX），其中高位部分存放在 AH / DX / EDX
- 标志位
  - 如果高位部分为 `0` ， `CF=OF=0` ， 否则， `CF=OF=1`
  - SF、ZF、PF、AF 未定义

#### DIV：无符号数除法

- 指令格式（Intel）： `DIV src`
- 语义：隐含 `dest` （AX / DX:AX / EDX:EAX）除以 `src`，结果存放在 `dest` （ AH:AL / DX:AX / EDX:EAX ），其中商放在低位寄存器，余数放在高位寄存器
- 除法错例外（#DE）
  - 除数为 0 或者商的大小超过低位寄存器的大小
- 标志位
  - CF、OF、SF、ZF、PF、AF 未定义

## 过程调用

### `x86-Linux-32` 的程序栈

- 自顶向下生长的栈
- 栈底地址为 `0xbffffxxx`
- 栈顶指针是 `esp` 寄存器
- 栈单元大小是 `4` 字节

### 栈帧

分配给一个过程使用的栈空间称为栈帧

- 过程的局部变量
- 子过程的形参地址单元
- 调用子过程的返回地址
- 临时保存的寄存器

### 栈帧分配

- 栈桢以 16 字节 为单位分配
- 以容纳所有局部变量和形参数量最多的子函数的形参为限
- 局部变量分配在栈桢底部，形参分配在栈桢的顶部
