#!/bin/bash
#i=`cat count.txt`
#i=$(( $i + 1 ))
#echo $i > count.txt

if [ ! -f messages.raw ]; then 
    touch messages.raw
    chmod a+rw messages.raw
fi
    
echo $QUERY_STRING >> messages.raw

echo "Content-type: text/html"
echo
echo "<html></html>"
