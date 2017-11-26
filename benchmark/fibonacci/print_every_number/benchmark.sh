#!/bin/bash

echo -e "\n"
echo -e "out_fib_64a (91 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64a
#time ./out_fib_64a >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64a >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_64l (91 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64l
#time ./out_fib_64l >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64l >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_64m (91 numbers) x 1,000 repetitions | NASM"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64m
#time ./out_fib_64m >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64m >/dev/null 2>&1; done

echo -e "\n"
echo -e "The scripts which accoumulate the results and at the end
shows the final number, they are he slow scripts
which needs improvments."

echo -e "\n"
echo -e "out_fib_64slow (24 numbers) x 1,000 repetitions | NASM"
echo -e "Very slow"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64slow
#time ./out_fib_64slow >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64slow >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_64slow_x86_64 (24 numbers) x 1,000 repetitions | NASM"
echo -e "Very slow"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64slow_x86_64
#time ./out_fib_64slow_x86_64 >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64slow_x86_64 >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_F64a (24 numbers) x 1000 repetitions | FASM"
echo -e "Very slow"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_F64a
#time ./out_fib_F64a >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_F64a >/dev/null 2>&1; done

echo -e ""
