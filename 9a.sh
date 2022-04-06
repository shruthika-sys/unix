if [ $# -eq 3 ]
then
 if [ -f$1 ]
  then
   l=`we -l $1`
   if [ $2 -le $3 -n $2 -le $2 -n $3 -le $l ]
    then
     head -n $3 $1 | tail -n +$2
     else
     echo "Enter a valid startin and ending number"
    fi
   else
    echo "Enter required arguments"
    echo "Usage : Filename StartingLine EndingLine"
  fi
 else
  echo "Enter the inputs"
 fi
