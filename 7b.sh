for filename in $*
do
 if [ $filename = $1 ]
 then
  continue
 fi
  for w in `cat $1`
  do
  lc=`grep -oiw "$w" $filename |wc -l`
  echo "$w is $lc times in $filename"
  done
 done
