#! /bin/bash

n1=$((RANDOM%900 + 100))
n2=$((RANDOM%900 + 100))
n3=$((RANDOM%900 + 100))

rem=0
rev=""

arr=($n1 $n2 $n3)

for (( i=0; i<${#arr[@]}; i++))
do
	temp=${arr[$i]}
	while [ ${arr[$i]} -gt 0 ]
	do
	    
	    rem=$(( ${arr[$i]} % 10 ))

	    
	    arr[$i]=$(( ${arr[$i]} / 10 ))

	    
	    
	    rev=$( echo ${rev}${rem} )
	done

	if [ $temp -eq $rev ]; 
	then
	    echo "$temp is palindrome"
	else
	    echo "$temp is NOT palindrome"
	fi
done
