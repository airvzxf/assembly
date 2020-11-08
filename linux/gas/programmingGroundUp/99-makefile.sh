#!/bin/bash -e

rm -f *.o
rm -f *-bin

#as --statistics --warn -ag -L -o 01-exit.o 01-exit.s
#as --warn -al -L -o 01-exit.o 01-exit.s
#as -L -o 01-exit.o 01-exit.s

FILES=(
        01-exit 02-maxNumber 02-maxNumber_concept_01 02-maxNumber_concept_02 02-maxNumber_concept_03
        02-maxNumber_concept_04 02-maxNumber_concept_05 02-maxNumber_concept_06 02-maxNumber_further_01
)

for FILE in "${FILES[@]}"
do
    echo "Assembling: ${FILE}"
    as -gstabs+ ${FILE}.s -o ${FILE}.o
    ld ${FILE}.o -o ${FILE}-bin
done

rm -f *.o
