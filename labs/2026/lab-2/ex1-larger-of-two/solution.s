.data
a:  .word 17
b:  .word 42

.text
main:
    la   t2, a
    lw   t0, 0(t2)
    la   t2, b
    lw   t1, 0(t2)
        bge  t1, t0, print_b     # if b >= a, jump to print_b
    mv   a0, t0              # otherwise the larger is a
    j    print
print_b:
    mv   a0, t1              # the larger is b
print:
    li   a7, 1               # ecall 1 = print integer
    ecall
    li   a7, 10              # ecall 10 = exit
    ecall
