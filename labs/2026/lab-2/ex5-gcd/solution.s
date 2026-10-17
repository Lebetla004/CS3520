.data
x: .word 48
y: .word 18

.text
main:
    la   t2, x
    lw   a0, 0(t2)       # a0 = x, first argument
    la   t2, y
    lw   a1, 0(t2)       # a1 = y, second argument
    jal  ra, gcd         # call gcd(x, y); result comes back in a0
    li   a7, 1           # ecall 1 = print integer (prints a0)
    ecall
    li   a7, 10          # ecall 10 = exit
    ecall
gcd:
loop:
    beq  a1, x0, done    # if b == 0, exit the loop
    rem  t0, a0, a1      # r = a % b
    mv   a0, a1          # a = b
    mv   a1, t0          # b = r
    j    loop
done:
    jr   ra              # return; the answer is already in a0