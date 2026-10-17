# Exercise 2: sum of the first N integers

Adds 1 through N using a counted loop and prints the total (N = 10 gives 55).

| Register | Holds |
|----------|-------|
| t0       |   N   |
| t1       |  sum  |
| t2       |   i   |
| t3        | address of N (used only to load it) |

Harder than expected: working out that i <= N becomes bgt as the exit test.