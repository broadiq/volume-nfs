#! /bin/sh

while true
do

if [ -d "/exports" ]; then

echo "directory exist...";


 chmod -R 777 /exports;

break;
fi

sleep $(($RANDOM % 5 + 5));

done

echo "done with update....";
