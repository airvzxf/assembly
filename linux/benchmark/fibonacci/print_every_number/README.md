# Conclusions

The speed for my ASM binary is between ~0.750s.

The speed for the ASM binaries are between 1.020s and 1.100s.

The speed for the C binary is between 1.020s and 1.100s.


## Speed time

Run 46 iterations to obtain the 2,971,215,073 Fibonacci number and
this benchmark repeats this operation 1,000 times.

0.758s | out_fib_i386_nasm_my_solution <br>
1.030s | out_fib_x64_nasm_a <br>
1.082s | out_fib_x64_nasm_l <br>
1.073s | out_fib_x64_nasm_m <br>
1.172s | out_fib_x64_c <br>


## Sort by size

1.9K | out_fib_i386_nasm_my_solution <br>
6.9K | out_fib_x64_nasm_l <br>
7.1K | out_fib_x64_nasm_a <br>
7.2K | out_fib_x64_nasm_m <br>
8.2K | out_fib_x64_c <br>


## Results

out_fib_i386_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM

real    0.758s
user    0.577s
sys     0.246s

---

out_fib_x64_nasm_a (46 numbers) x 1,000 repetitions | NASM

real    1.030s
user    0.712s
sys     0.400s

---

out_fib_x64_nasm_l (46 numbers) x 1,000 repetitions | NASM

real    1.082s
user    0.752s
sys     0.423s

---

out_fib_x64_nasm_m (46 numbers) x 1,000 repetitions | NASM

real    1.073s
user    0.753s
sys     0.407s

---

out_fib_x64_c (46 numbers) x 1,000 repetitions | C

real    1.172s
user    0.794s
sys     0.475s

---
