#!/bin/sh
a=0    
while [ $a -lt 10 ]
do
   echo $a
   if [ $a -eq 7 ]
   then
      break
   fi
   a=$(($a +1)) 
done
