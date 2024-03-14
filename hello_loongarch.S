# LoongArch Assembler program to print "Hello World!"
# to stdout.
#
# a0-a2 - parameters to linux syscall services
# a7 - linux syscall number
#

.global _start      # Provide program starting address to linker

# Setup the parameters to print hello world
# and then call Linux to do it.

_start:

        li.d  $a0, 1          # 1 = StdOut
        la    $a1, helloworld # load address of helloworld
        li.d  $a2, 17         # length of our string
        li.d  $a7, 64         # linux write system call
        syscall 0             # Call linux to output the string

# Setup the parameters to exit the program
# and then call Linux to do it.

        li.d    $a0, 0       # Use 0 return code
        li.d    $a7, 93      # Service command code 93 terminates
        syscall 0            # Call linux to terminate the program

.data
helloworld:      .ascii "Hello LoongArch!\n"
