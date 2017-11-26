#!/bin/bash

echo -e "\n"
echo -e "out_fib_x64_nasm_a (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_a
#time ./out_fib_x64_nasm_a >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_x64_nasm_a >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_x64_nasm_l (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_l
#time ./out_fib_x64_nasm_l >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_x64_nasm_l >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_x64_nasm_m (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_m
#time ./out_fib_x64_nasm_m >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_x64_nasm_m >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_i386_nasm_my_solution (46 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_i386_nasm_my_solution
#time ./out_fib_i386_nasm_my_solution >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_i386_nasm_my_solution >/dev/null 2>&1; done

echo -e "\n"
echo -e "The scripts which accoumulate the results and at the end
shows the final number, they are he slow scripts
which needs improvments."

echo -e "\n"
echo -e "out_fib_x64_nasm_slow (24 numbers) x 1,000 repetitions | NASM"
echo -e "Very slow"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_slow
#time ./out_fib_x64_nasm_slow >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_x64_nasm_slow >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_x64_nasm_slow_x86_64 (24 numbers) x 1,000 repetitions | NASM"
echo -e "Very slow"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_nasm_slow_x86_64
#time ./out_fib_x64_nasm_slow_x86_64 >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_x64_nasm_slow_x86_64 >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_x64_fasm_a (24 numbers) x 1000 repetitions | FASM"
echo -e "Very slow"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_x64_fasm_a
#time ./out_fib_x64_fasm_a >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_x64_fasm_a >/dev/null 2>&1; done

echo -e ""
