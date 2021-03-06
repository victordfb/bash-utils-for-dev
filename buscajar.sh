#!/bin/bash

#This script aims to find the jar that contains a searched class.

declare -x c=0

for ii in $(find -name "*.jar"); do
 
    declare -x filename=$(echo $ii | awk -F/ '{print $NF}')
    unzip -l $ii > $filename-$c.jbc 2>unzip_error.log
    let c+=1
done

egrep -H $1 *.jbc

rm *.jbc
