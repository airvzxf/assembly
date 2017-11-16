#!/bin/bash

echo -e "\n"
echo -e "out_fib_64a (91 numbers) x 1,000 repetitions"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64a
#time ./out_fib_64a >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64a >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_64l (91 numbers) x 1,000 repetitions"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64l
#time ./out_fib_64l >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64l >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_64m (91 numbers) x 1,000 repetitions"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64m
#time ./out_fib_64m >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64m >/dev/null 2>&1; done

echo -e "\n"
echo -e "out_fib_64slow (24 numbers) x 1,000 repetitions"
echo -e "----------------------------------------------------------------------"
#time ./out_fib_64slow
#time ./out_fib_64slow >/dev/null 2>&1
time for i in {1..1000}; do ./out_fib_64slow >/dev/null 2>&1; done

echo -e ""
