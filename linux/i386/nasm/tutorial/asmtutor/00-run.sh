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
