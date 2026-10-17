# Exercise 4: factorial as a procedure

main loads N and calls factorial with jal. factorial multiplies 2..n in a loop and returns the result in a0 (N = 5 gives 120).

| Register | Holds |
|----------|-------|
| a0 | argument n going in, result coming out |
| t0 | result (running product) |
| t1 | i |
| t2 | address of N (used only in main) |
| ra | return address, set by jal |

Stack: factorial does not use the stack. It is a leaf procedure (calls nothing, so ra is never overwritten) and uses only temporary registers, which the caller does not expect to be preserved.

Harder than expected: Understanding that jal saves the return address in ra and jr ra uses it to come back