# Exercise 3: count the even elements of an array

Loops over an 8-element array, tests each element's lowest bit with andi, and counts the even ones (this data gives 4).

| Register | Holds |
|----------|-------|
| t0 | address of arr |
| t1 | n |
| t2 | count |
| t3 | i |
| t4 | address of n (used only to load it) |
| t5 | address of arr[i] |
| t6 | arr[i], then its lowest bit |

Harder than expected: Remembering to multiply i by 4 with slli because each word is 4 bytes.