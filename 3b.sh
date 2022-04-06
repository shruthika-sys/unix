echo -n "Enter the password :"
stty -echo
read p1
stty echo
echo -n "\nConfirm the password :"
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
echo -n "\nPassword doesn't match:Re-enter the password"
stty -echo
read p2
stty echo
done
clear
echo "--------------Terminal Locked------------------"
echo -n "\nEnter the password to Unlock :"
stty -echo
read p3
stty echo
while [ "$p1" != "$p3" ]
do
clear
echo "--------------Terminal Locked------------------"
echo -n "\nPassword doesn't match:Re-enter the password\n"
stty -echo
read p3
stty echo
done
echo "--------------Terminal Unlocked------------------"
