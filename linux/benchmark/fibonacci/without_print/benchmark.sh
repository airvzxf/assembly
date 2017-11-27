#!/bin/bash

echo -e "\n"
echo -e "out_fib_i386_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_i386_nasm_my_solution
#time ./out_fib_i386_nasm_my_solution
time for i in {1..1000}; do ./out_fib_i386_nasm_my_solution; done

echo -e "\n"
echo -e "out_fib_x64_fasm_my_solution (46 numbers) x 1,000 repetitions | FASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_fasm_my_solution
#time ./out_fib_x64_fasm_my_solution
time for i in {1..1000}; do ./out_fib_x64_fasm_my_solution; done

echo -e "\n"
echo -e "out_fib_x64_nasm_a (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_a
#time ./out_fib_x64_nasm_a
time for i in {1..1000}; do ./out_fib_x64_nasm_a; done

echo -e "\n"
echo -e "out_fib_x64_nasm_l (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_l
#time ./out_fib_x64_nasm_l
time for i in {1..1000}; do ./out_fib_x64_nasm_l; done

echo -e "\n"
echo -e "out_fib_x64_nasm_m (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_m
#time ./out_fib_x64_nasm_m
time for i in {1..1000}; do ./out_fib_x64_nasm_m; done

echo -e "\n"
echo -e "out_fib_x64_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_my_solution
#time ./out_fib_x64_nasm_my_solution
time for i in {1..1000}; do ./out_fib_x64_nasm_my_solution; done

echo -e "\n"
echo -e "out_fib_x64_c (46 numbers) x 1,000 repetitions | C"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_c
#time ./out_fib_x64_c
time for i in {1..1000}; do ./out_fib_x64_c; done

echo -e ""
