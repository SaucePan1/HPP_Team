#!/bin/bash
#basic

counter=1
while [ $counter -le 100 ]
do 
	make 
	make compare
	echo $counter
	((counter++))
done
python3 print_mean_std.py
make clean
echo ALL done
