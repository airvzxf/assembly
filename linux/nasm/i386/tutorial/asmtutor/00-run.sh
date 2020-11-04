#!/bin/bash

./99-makefiles.sh

echo ""
echo "Lesson 01 | Hello world!"
echo "------------------------------------------------------------"
./out_01-hello_world

echo ""
echo "Lesson 02 | Proper program exit"
echo "------------------------------------------------------------"
./out_02-exit

echo ""
echo "Lesson 03 | Calculate string length"
echo "------------------------------------------------------------"
./out_03-string_length

echo ""
echo "Lesson 04 | Subroutines"
echo "------------------------------------------------------------"
./out_04-subroutines

echo ""
echo "Lesson 05 | External include files"
echo "------------------------------------------------------------"
./out_05-include_files

echo ""
echo "Lesson 06 | NULL terminating bytes"
echo "------------------------------------------------------------"
./out_06-null_terminating_bytes

echo ""
echo "Lesson 07 | Linefeeds"
echo "------------------------------------------------------------"
./out_07-linefeeds

echo ""
echo "Lesson 08 | Passing arguments"
echo "------------------------------------------------------------"
./out_08-passing_arguments "This is one argument" "This is another" 101

echo ""
echo "Lesson 09 | User input"
echo "------------------------------------------------------------"
./out_09-user_input <<< "Mr. Robot"

echo ""
echo "Lesson 10 | Count to 10"
echo "------------------------------------------------------------"
./out_10-count_to_10

echo ""
echo "Lesson 11 | Count to 10 (itoa)"
echo "------------------------------------------------------------"
./out_11-count_to_10_itoa

echo ""
echo "Lesson 12 | Calculator - addition"
echo "------------------------------------------------------------"
./out_12-calculator_addition

echo ""
echo "Lesson 13 | Calculator - subtraction"
echo "------------------------------------------------------------"
./out_13-calculator_subtraction

echo ""
echo "Lesson 14 | Calculator - multiplication"
echo "------------------------------------------------------------"
./out_14-calculator_multiplication

echo ""
echo "Lesson 15 | Calculator - division"
echo "------------------------------------------------------------"
./out_15-calculator_division

echo ""
echo "Lesson 16 | Calculator atoi"
echo "------------------------------------------------------------"
./out_16-calculator_atoi 20 1000 317

echo ""
echo "Lesson 17 | Namespace"
echo "------------------------------------------------------------"
./out_17-namespace

echo ""
echo "Lesson 18 | Fizz Buzz"
echo "------------------------------------------------------------"
./out_18-fizz_buzz

echo ""
echo "Lesson 19 | Execute Command"
echo "------------------------------------------------------------"
./out_19-execute_command

echo ""
echo "Lesson 20 | Process Forking"
echo "------------------------------------------------------------"
./out_20-process_forking

echo ""
echo "Lesson 21 | Telling the time"
echo "------------------------------------------------------------"
./out_21-telling_the_time

echo ""
echo "Lesson 22 | File Handling - Create"
echo "------------------------------------------------------------"
./out_22-file_handling_create
rm -f readme.txt

echo ""
echo "Lesson 23 | File Handling - Write"
echo "------------------------------------------------------------"
./out_23-file_handling_write
rm -f readme.txt

echo ""
echo "Lesson 24 | File Handling - Open"
echo "------------------------------------------------------------"
./out_24-file_handling_open
rm -f readme.txt

echo ""
echo "Lesson 25 | File Handling - Read"
echo "------------------------------------------------------------"
./out_25-file_handling_read
rm -f readme.txt

echo ""
echo "Lesson 26 | File Handling - Close"
echo "------------------------------------------------------------"
./out_26-file_handling_close

echo ""
echo "Lesson 27 | File Handling - Seek"
echo "------------------------------------------------------------"
./out_27-file_handling_seek

echo ""
echo "Lesson 28 | File Handling - Delete"
echo "------------------------------------------------------------"
./out_28-file_handling_delete

echo ""
echo "Lesson 29 - 35 | Sockets"
echo " -> Create, Bind, Listen, Accept, Read, Write and Close"
echo "------------------------------------------------------------"
./out_29_35-sockets &
sleep 1
curl http://localhost:9001 || (killall out_29_35-sockets && echo "Killed: out_29_35-sockets";)

echo ""
echo "Lesson 36 | Download a Webpage"
echo "------------------------------------------------------------"
./out_36-download_a_webpage
