#!/bin/bash

./makefiles.sh

echo -e ""
echo -e "Lesson 01 | Hello world!"
echo -e "------------------------------------------------------------"
./out_01-hello

echo -e ""
echo -e "Lesson 02 | Hello world!"
echo -e "------------------------------------------------------------"
./out_02-helloworld

echo -e ""
echo -e "Lesson 03 | Calculate string length"
echo -e "------------------------------------------------------------"
./out_03-helloworld-len

echo -e ""
echo -e "Lesson 04 | Subroutines"
echo -e "------------------------------------------------------------"
./out_04-subroutines

echo -e ""
echo -e "Lesson 05 | External include files"
echo -e "------------------------------------------------------------"
./out_05-helloworld-inc

echo -e ""
echo -e "Lesson 06 | NULL terminating bytes"
echo -e "------------------------------------------------------------"
./out_06-helloworld-inc

echo -e ""
echo -e "Lesson 07 | Linefeeds"
echo -e "------------------------------------------------------------"
./out_07-helloworld-lf

echo -e ""
echo -e "Lesson 08 | Passing arguments"
echo -e "------------------------------------------------------------"
./out_08-helloworld-args "This is one argument" "This is another" 101

echo -e ""
echo -e "Lesson 09 | User input"
echo -e "------------------------------------------------------------"
echo "Mr. Robot" | ./out_09-helloworld-input

echo -e ""
echo -e "Lesson 10 | Count to 10"
echo -e "------------------------------------------------------------"
./out_10-helloworld-10

echo -e ""
echo -e "Lesson 11 | Count to 10 (itoa)"
echo -e "------------------------------------------------------------"
./out_11-helloworld-itoa
