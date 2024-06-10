# 嵌入式汇编源码分析报告

## 分析对象

我选取的源码来自 MIT 6.828 课程中，为教学开发的操作系统 `xv6` 。它是 Version 6 Unix（也就是 v6 Unix）的现代重写版本，用于教授操作系统的基本概念。

在 `xv6` 源码中， `kernel/riscv.h` 头文件中有诸多嵌入式汇编的函数，我挑选了其中一部分进行分析。

## 实验环境

- 操作系统： `Arch Linux on Windows 10 x86_64`
- 汇编语言： `riscv64`
- 交叉编译工具： `riscv64-linux-gnu-gcc` ，版本 `14.1.0`

## 实验准备

1. 首先将 `riscv.h` 头文件中内容复制到一个新文件 `riscv_head.c` 中，因为源文件有大量嵌入式汇编函数，所以需要删减一些内容。
2. 其次将函数定义部分返回值类型前的关键字 `static inline` 删除，否则汇编时因为编译器优化会导致无法得到正确的汇编代码。
3. 在命令行使用命令 `riscv64-linux-gnu-gcc -S riscv_head.c` ，得到所需汇编文件 `riscv_head.s` 。
4. 将汇编代码中 `.` 开头的部分删掉，便于分析。

## 实验内容

下面选取原 `riscv.h` 头文件中的几个重要函数进行分析。

### r_sstatus

原 C 代码如下，我们可以看到，它是一个读取 `sstatus` 寄存器的函数。

```c
static inline uint64
r_sstatus()
{
  uint64 x;
  asm volatile("csrr %0, sstatus" : "=r" (x) );
  return x;
}
```

其对应的汇编代码如下（已添加注释）：

```asm
r_sstatus:
    addi    sp,sp,-32   # 分配 32 字节栈空间
    sd      ra,24(sp)   # ra：被调用者保存
    sd      s0,16(sp)   # s0：被调用者保存
    addi    s0,sp,32    # s0：帧指针

    csrr    a5, sstatus # 读取 sstatus 寄存器的值，保存在 a5 中
    sd      a5,-24(s0)  # 将 a5 的值保存在栈上
    ld      a5,-24(s0)  # 从栈上读取 a5 的值
    mv      a0,a5       # 将 a5 的值保存在 a0 中

    ld      ra,24(sp)   # 恢复 ra
    ld      s0,16(sp)   # 恢复 s0
    addi    sp,sp,32    # 回收栈空间
    jr      ra          # 返回（ra 存放 riscv64 返回地址）
```

首先，因为 `sstatus` 寄存器是一个 `CSR` （控制和状态寄存器），用于保存和控制特权级别为 `S`（Supervisor）模式下的处理器状态，因此如果要读取它的值，必须要使用 `csrr` 指令（ `CSR read` ），而不能单纯通过普通的 `C` 语言实现，这里体现出了内联汇编的必要性。

其次，我们关注汇编代码与 `C` 代码的对应关系，不难发现`C` 代码中内联汇编部分 `asm volatile("csrr %0, sstatus" : "=r" (x) );` 对应的汇编代码是 `csrr a5, sstatus` 。可以看出编译器选择用 `a5` 寄存器来保存 `sstatus` 寄存器的值，并赋值给 `x` 。

### r_sp

原 C 代码如下，它是一个读取栈指针 `sp` 的函数。

```c
static inline uint64
r_sp()
{
  uint64 x;
  asm volatile("mv %0, sp" : "=r" (x) );
  return x;
}
```

其对应的汇编代码如下：

```asm
r_sp:
    addi    sp,sp,-32   # 分配 32 字节栈空间
    sd      ra,24(sp)   # ra：被调用者保存
    sd      s0,16(sp)   # s0：被调用者保存
    addi    s0,sp,32    # s0：帧指针

    mv      a5, sp      # 将 sp 寄存器的值保存在 a5 中
    sd      a5,-24(s0)  # 将 a5 的值保存在栈上
    ld      a5,-24(s0)  # 从栈上读取 a5 的值
    mv      a0,a5       # 将 a5 的值保存在 a0 中

    ld      ra,24(sp)   # 恢复 ra
    ld      s0,16(sp)   # 恢复 s0
    addi    sp,sp,32    # 回收栈空间
    jr      ra          # 返回
```

可以看到，大体上与 `r_sstatus` 函数类似，只是这里读取的是栈指针 `sp` 寄存器的值。而 `sp` 是一个通用寄存器，所以直接用 `mv` 指令即可。

### sfence_vma

最后一选取的是 `sfence_vma` 函数，它是一个刷新虚拟内存地址的函数。

```c
// flush the TLB.
static inline void
sfence_vma()
{
  // the zero, zero means flush all TLB entries.
  asm volatile("sfence.vma zero, zero");
}
```

对应的汇编代码如下：

```asm
sfence_vma:
    addi    sp,sp,-16       # 分配 16 字节栈空间
    sd      ra,8(sp)        # ra：被调用者保存
    sd      s0,0(sp)        # s0：被调用者保存
    addi    s0,sp,16        # s0：帧指针
    sfence.vma zero, zero   # 刷新 TLB
    nop                     # 空指令
    ld      ra,8(sp)        # 恢复 ra
    ld      s0,0(sp)        # 恢复 s0
    addi    sp,sp,16        # 回收栈空间
    jr      ra              # 返回
```

这里用到了 `sfence.vma` 指令，用于同步虚拟内存地址转换。通过刷新（或同步） `TLB` （Translation Lookaside Buffer，即地址转换高速缓存）条目，确保虚拟地址到物理地址的映射是最新的。

`sfence.vma` 指令的第一个参数是 `rs1` ，第二个参数是 `rs2` ，分别表示虚拟地址和指定地址空间标识符，当二者均为 `zero` 时，表示刷新所有 `TLB` 条目。

## 总结

通过对 `riscv.h` 头文件中的几个嵌入式汇编函数进行分析，我们可以看到，内联汇编可以很好地与 `C` 语言代码结合，实现对特定寄存器的读取、写入等操作。注意到这种方式在操作系统等底层开发中非常常见，因为操作系统需要直接操作硬件，有些特定的操作是无法通过高级语言实现的，所以需要使用汇编语言。这是内联汇编的必要性所在。

我也发现了内联汇编的一些特点。首先是方便，相比于直接编写汇编代码，内联汇编可以嵌入到 `C` 代码中，方便阅读和维护。而且编译器会自动选择合适的寄存器来保存变量的值，且不用手动完成函数的调用、传参以及栈指针管理等繁杂的操作。还有一个特点是简洁，内联汇编代码通常只有几行，而且不需要额外的函数调用开销，所以执行效率也比较高。
