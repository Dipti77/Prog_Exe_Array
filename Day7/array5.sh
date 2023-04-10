# Take a range from 0-100, find the digits that are repeated twice like 33, 77, etc and store them in an array.

declare -a array=( )

for (( i=1; i<=100; i++ ))
do
	if [ $(($i%11)) -eq 0 ]
	then
		array+=($i)
fi
done

echo "The twice reapeted numbers from 0 to 100 are: "
echo ${array[@]}


