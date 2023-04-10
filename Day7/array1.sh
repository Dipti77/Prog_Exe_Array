#Generates 10 random 3 digit number
#Store this random number into array
#then find 2nd largest and the 2nd smallest element without sorting the array

for (( i=0; i<10; i++ ))
do
	random_number=$((RANDOM % 900 + 100))
	array[i]+=$random_number
done

echo "Array of random numbers:" ${array[@]}

a=${array[0]}
sec_largest=0
sec_smallest=0

for num in ${array[@]}
do
	if [ $num -gt $a ]
	then
		sec_largest=$a
		a=$num
	elif [ $num -gt $sec_largest ] && [ $num -ne $a ]
	then
		sec_largest=$num
	fi
done

for num1 in ${array[@]}
do
	if [ $num1 -lt $a ]
	then
		sec_smallest=$a
		a=$num1
	elif [ $num1 -lt $sec_smallest ] && [ $num1 -ne $a ]
	then
		sec_smallest=$num1
	fi
done

echo "Second largest number:" $sec_largest
echo "Second smallest number:" $sec_smallest
