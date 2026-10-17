.data
N:  .word 10

.text
main:
    la   t3, N
    lw   t0, 0(t3)      # t0 = N
    li   t1, 0          # sum = 0
    li   t2, 1          # i = 1
    loop:
    bgt  t2, t0, done    # if i > N, exit the loop
    add  t1, t1, t2      # sum = sum + i
    addi t2, t2, 1       # i++
    j    loop            # back to the test
done: