.data
arr: .word 3, 8, 15, 22, 7, 10, 9, 4
n:   .word 8

.text
main:
    la   t0, arr        # t0 = address of arr
    la   t4, n
    lw   t1, 0(t4)      # t1 = n
    li   t2, 0          # count = 0
    li   t3, 0          # i = 0
loop:
    bge  t3, t1, done    # if i >= n, exit the loop
    slli t5, t3, 2       # t5 = i * 4 (each word is 4 bytes)
    add  t5, t0, t5      # t5 = address of arr[i]
    lw   t6, 0(t5)       # t6 = arr[i]
    andi t6, t6, 1       # t6 = lowest bit of arr[i]
    bne  t6, x0, skip    # if the bit is 1, it's odd, skip the count
    addi t2, t2, 1       # count++
skip:
    addi t3, t3, 1       # i++
    j    loop
done:
    mv   a0, t2          # a0 = count
    li   a7, 1           # ecall 1 = print integer
    ecall
    li   a7, 10          # ecall 10 = exit
    ecall