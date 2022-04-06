d=`date +%d`
d=`expr $d + 0`
if [ $d -gt 9 ]
then
l=`cal | tr -d "[\137][\010]" | grep -wn "$d" | head -c 1`
   cal | tr -d "[\137][\010]" | sed "$l s/$d/**/"
  else
l=`cal | tr -d "[\137][\010]" | grep -wn "$d" | head -c 1`
   cal | tr -d "[\137][\010]" | sed "$l s/$d/*/"
fi
