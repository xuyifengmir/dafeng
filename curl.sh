#!/bin/bash
web1=1edf25cdd43b37aa54ae824051e44129
web2=6bf1ad9cbf5e22f45b057acdba736217
while ;
do
 A= $(curl http://192.168.4.101 | md5sum)
 B=$(curl http://192.168.4.102 | md5sum)
if [ $A ==  $web1 ];then
echo "没事" > /dev/null
else
 mail -s  "警报"  student  >   "网页被篡改"
fi
if [ $B == $web2 ];then
echo "没事" > /dev/null
else
 mail -s  "警报" student > "网页被篡改"
fi
sleep 1
done

