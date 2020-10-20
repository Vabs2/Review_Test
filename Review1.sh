function check() {

num1=$1
#num1=777
#num1=414
rem=0
rev=""
temp=$num1

while [ $num1 -gt 0 ]
do

	rem=$(( $num1 % 10 ))
	num1=$(( $num1 / 10 ))
	rev=$( echo ${rev}${rem} )
done

if [ $temp -eq $rev ]
then
	echo "$temp is a palindrome Number"
else
	echo "$temp is not a palindrome number"
fi

}

check $((RANDOM%900+100))
check $((RANDOM%900+100))
check $((RANDOM%900+100))
