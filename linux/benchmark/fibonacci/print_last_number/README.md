# Conclusions

The speed for my ASM binary is between ~0.600s.

The speed for the ASM binaries are between 1.000s and 1.090s.

The speed for the C binary is between 1.020s and 1.100s.


## Speed time

Run 46 iterations to obtain the 2,971,215,073 Fibonacci number and
this benchmark repeats this operation 1,000 times.

0.573s | out_fib_i386_nasm_my_solution <br>
1.037s | out_fib_x64_nasm_a <br>
1.025s | out_fib_x64_nasm_l <br>
1.056s | out_fib_x64_nasm_m <br>
1.058s | out_fib_x64_c <br>


## Sort by size

1.9K | out_fib_i386_nasm_my_solution <br>
6.9K | out_fib_x64_nasm_l <br>
7.0K | out_fib_x64_nasm_a <br>
7.2K | out_fib_x64_nasm_m <br>
8.2K | out_fib_x64_c <br>


## Results

out_fib_i386_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM

real    0.573s <br>
user    0.411s <br>
sys     0.220s <br>

---

out_fib_x64_nasm_a (46 numbers) x 1,000 repetitions | NASM

real    1.037s <br>
user    0.727s <br>
sys     0.396s <br>

---

out_fib_x64_nasm_l (46 numbers) x 1,000 repetitions | NASM

real    1.025s <br>
user    0.694s <br>
sys     0.421s <br>

---

out_fib_x64_nasm_m (46 numbers) x 1,000 repetitions | NASM

real    1.056s <br>
user    0.704s <br>
sys     0.441s <br>

---

out_fib_x64_c (46 numbers) x 1,000 repetitions | C

real    1.058s <br>
user    0.728s <br>
sys     0.419s <br>

---
