.global _start

_start:

        li.d  $a0, 1          # 1 = StdOut
        la    $a1, helloworld # load address of helloworld
        li.d  $a2, 18         # length of our string
        li.d  $a7, 64         # linux write system call
        syscall 0             # Call linux to output the string

# Setup the parameters to exit the program
# and then call Linux to do it.

        li.d    $a0, 0       # Use 0 return code
        li.d    $a7, 93      # Service command code 93 terminates
        syscall 0            # Call linux to terminate the program

.data
helloworld:      .ascii "University of CAS\n"
