# Exercise 5: greatest common divisor

main loads x and y and calls gcd with jal. gcd applies Euclid's algorithm in a loop (r = a % b; a = b; b = r) until b is 0, and returns a in a0 (48 and 18 give 6).

| Register | Holds |
|----------|-------|
| a0 | a going in, the GCD coming out |
| a1 | b |
| t0 | r (the remainder) |
| t2 | address of x and y (used only in main) |
| ra | return address, set by jal |

Stack: gcd does not use the stack. It is a leaf procedure (calls nothing, so ra is never overwritten) and uses only temporary and argument registers.

Harder than expected: Keeping a = b; b = r in the right order so no value gets overwritten before it’s used.