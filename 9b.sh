echo -n "Enter a filename :"
read filename
if [ -f $filename ]
then
n=10
while read line
do
	len=` expr length "$line" `
	if [ $len -le $n ]
	then
	echo $line 
	else
		s=1
		e=$n
		echo "`echo $line | cut -c $s-$e`\\"
		rcl=` expr $len - $e `
	while [ $rcl -ge $n ]
		do
			s=` expr $e + 1 `
			e=` expr $e + $n `
			echo "`echo $line | cut -c $s-$e`\\"
			rcl=` expr $len - $e `
		done
		s=` expr $e + 1 `
		echo $line | cut -c $s-
	fi
done<$filename
else
	echo "$filename : No such file found"
fi

