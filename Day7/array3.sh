#Extend the prime factorization program to store all the prime factors of a number n into an array and finally display the output.

declare -a factors=()

read -p "Enter a number: " num

for (( i=2; i<$num; i++ ))
do
	while [ $(($num%$i)) -eq 0 ]
	do
		factors+=($i)
		num=$(($num/$i))
	done
done

if [ $num -gt 2 ]
then
	factors+=($num)
fi

echo ${factors[@]}


