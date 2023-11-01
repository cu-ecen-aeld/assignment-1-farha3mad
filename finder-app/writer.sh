#!/bin/bash

writefile=$1
writestr=$2

if [ -z $# ]
then
    echo "argument not found!!"
    exit 1
else
    echo ${writestr} > ${writefile}
fi