Step2
Q1- #RISC-V branch instructions only branch on true- there is no built-in "loop while true" contrust like c++'s for. So a c++ loop continues to while i<n has to be rewritten as: "if the opposite condition holds, jump out of the loop."
     The opposite of i < n is i >= n, which is exactly what bge tests. This inversion pattern (branch out on the negated condition, fall through to the loop body) is the standard way loops are compiled in assembly.#
Q2- li rd, imm  becomes addi rd, x0,imm for small values
    mv rd, rs   becomes addi rd, rs,0
    la rd, label becomes auipc rd, offset_high + addi rd, rd, offset_low
    ble rs1, rs2, label becomes bge rs2, rs1, label
Q3- s1 must be saved because find_max is a leaf procedure- it doesn't call      