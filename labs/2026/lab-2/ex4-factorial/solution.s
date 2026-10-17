.data
N: .word 5

.text
main:
    la   t2, N
    lw   a0, 0(t2)       # a0 = N, the argument
    jal  ra, factorial   # call factorial(N); result comes back in a0
    li   a7, 1           # ecall 1 = print integer (prints a0)
    ecall
    li   a7, 10          # ecall 10 = exit
    ecall
factorial:
    li   t0, 1           # result = 1
    li   t1, 2           # i = 2
loop:
    bgt  t1, a0, done    # if i > n, exit the loop
    mul  t0, t0, t1      # result = result * i
    addi t1, t1, 1       # i++
    j    loop
done:
    mv   a0, t0          # return value goes in a0
    jr   ra              # return to the caller (jalr x0, 0(ra))