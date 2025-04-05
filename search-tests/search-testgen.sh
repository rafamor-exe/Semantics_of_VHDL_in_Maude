#!/bin/bash

TEST_NAME0=test3-adder
TEST_NAME1=concurrent-assignment1
TEST_NAME2=concurrent-assignment2
VALUE1=('0' '1' 'Z' 'W' 'L' 'H' 'U' 'X' '-')
VALUE2=('0' '1' 'Z' 'W' 'L' 'H' 'U' 'X' '-')

for val1 in ${VALUE1[@]}
do
    for val2 in ${VALUE2[@]}
    do
        echo "search test3('${val1}', '${val2}') =>! v:VHDLCompleteSim ." >> ./tests_${TEST_NAME0}
    done
done

for val1 in ${VALUE1[@]}
do
    echo "search test4('${val1}') =>! v:VHDLCompleteSim ." >> ./tests_${TEST_NAME1}
done

for val1 in ${VALUE1[@]}
do
    echo "search test5('${val1}') =>! v:VHDLCompleteSim ." >> ./tests_${TEST_NAME2}
done