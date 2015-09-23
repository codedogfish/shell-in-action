#!/bin/bash

old="$IFS"
IFS='
'
echo "search missing package..."
npm ls -g > /dev/null 2> missing_packages
wc -l missing_packages
for line in $( grep "npm ERR! missing:" missing_packages )
do
   (
   IFS="$old"
   line=${line/npm ERR! missing:/}
   line=${line/@*/}
   #line=${line/@*/}
   echo "Install missing package:$line"
   npm install -g "$line"
   )
done
rm -rf missing_packages
echo "fix complete"
