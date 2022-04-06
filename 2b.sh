if [ $# -eq 1 ]
then
	grep $1 /etc/passwd >ud
	if [ $? -eq 0 ]
	then
		echo "User exit"
		h=`cut -d ":" -f 6 ud`
		echo "Home directory of $1 is $h"
	else
		echo "User not found"
	fi
else
	echo "Enter a login/ user name"
fi

