#!/bin/bash

./makefiles.sh

echo ""
echo "Lesson 01 | Hello world!"
echo "------------------------------------------------------------"
./out_01-hello

echo ""
echo "Lesson 02 | Hello world!"
echo "------------------------------------------------------------"
./out_02-helloworld

echo ""
echo "Lesson 03 | Calculate string length"
echo "------------------------------------------------------------"
./out_03-helloworld-len

echo ""
echo "Lesson 04 | Subroutines"
echo "------------------------------------------------------------"
./out_04-subroutines

echo ""
echo "Lesson 05 | External include files"
echo "------------------------------------------------------------"
./out_05-helloworld-inc

echo ""
echo "Lesson 06 | NULL terminating bytes"
echo "------------------------------------------------------------"
./out_06-helloworld-inc

echo ""
echo "Lesson 07 | Linefeeds"
echo "------------------------------------------------------------"
./out_07-helloworld-lf

echo ""
echo "Lesson 08 | Passing arguments"
echo "------------------------------------------------------------"
./out_08-helloworld-args "This is one argument" "This is another" 101

echo ""
echo "Lesson 09 | User input"
echo "------------------------------------------------------------"
./out_09-helloworld-input <<< "Mr. Robot"

echo ""
echo "Lesson 10 | Count to 10"
echo "------------------------------------------------------------"
./out_10-helloworld-10

echo ""
echo "Lesson 11 | Count to 10 (itoa)"
echo "------------------------------------------------------------"
./out_11-helloworld-itoa
