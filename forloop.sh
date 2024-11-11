#!/usr/bin/env bash

#for loop creation
<< mycom
for a in 1 2 3 4 5
do 
echo "welcome $a times"
done


for a in eat run jump play
do
echo "Manoj can $a"
done

mycom

for a in {1..10}
do
    touch Dir_$a
done
