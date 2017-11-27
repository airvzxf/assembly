# Conclusions

The speed for the ASM binaries are between 0.550s and 0.480s.

The speed for the C binary is between 0.850s and 0.780s.


## Speed time.

Run 46 iterations to obtain the 2,971,215,073 Fibonacci number and
this benchmark repeats this operation 1,000 times.

0.503s | out_fib_i386_nasm_my_solution <br>
0.496s | out_fib_x64_fasm_my_solution <br>
0.552s | out_fib_x64_nasm_a <br>
0.490s | out_fib_x64_nasm_l <br>
0.534s | out_fib_x64_nasm_m <br>
0.541s | out_fib_x64_nasm_my_solution <br>
0.826s | out_fib_x64_c <br>


## Sort by size

176B | out_fib_x64_fasm_my_solution <br>
1.4K | out_fib_i386_nasm_my_solution <br>
1.8K | out_fib_x64_nasm_l <br>
1.9K | out_fib_x64_nasm_my_solution <br>
2.0K | out_fib_x64_nasm_a <br>
2.2K | out_fib_x64_nasm_m <br>
8.0K | out_fib_x64_c <br>


## Results

out_fib_i386_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM

real    0.503s <br>
user    0.365s <br>
sys     0.196s <br>

---

out_fib_x64_fasm_my_solution (46 numbers) x 1,000 repetitions | FASM

real    0.496s <br>
user    0.357s <br>
sys     0.200s <br>

---

out_fib_x64_nasm_a (46 numbers) x 1,000 repetitions | NASM

real    0.552s <br>
user    0.416s <br>
sys     0.200s <br>

---

out_fib_x64_nasm_l (46 numbers) x 1,000 repetitions | NASM

real    0.490s <br>
user    0.357s <br>
sys     0.203s <br>

---

out_fib_x64_nasm_m (46 numbers) x 1,000 repetitions | NASM

real    0.534s <br>
user    0.398s <br>
sys     0.203s <br>

---

out_fib_x64_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM

real    0.541s <br>
user    0.407s <br>
sys     0.198s <br>

---

out_fib_x64_c (46 numbers) x 1,000 repetitions | NASM

real    0.826s <br>
user    0.575s <br>
sys     0.338s <br>

---
