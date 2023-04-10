# Extend the above program to sort the array and then find the 2nd largest and 2nd smallest element.

declare -a array=()

for (( i=0; i<=9; i++ ))
do
	array+=($((RANDOM%900 + 100)))
done
echo "Random array: " ${array[@]}

for (( i=0; i<=${#array[@]}; i++ ))
do
	for (( j=i+1; j<${#array[@]}; j++ ))
	do
		if [ ${array[$i]} -gt ${array[$j]} ]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Sorted array: " ${array[@]}

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


