#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z "$1" ]
then
    echo "Path of the file not found!!"
    exit 1
elif [ -z "$2" ]
then
    echo "String to search for is not found!!"
    exit 1
elif [ ! -d $1 ]
then
    echo "Path not found!!"
    exit 1
else
    files=$(grep -r -l  ${searchstr} ${filesdir} | wc -l)
    lines=$(grep -r -n  ${searchstr} ${filesdir} | wc -l)
    echo "The number of files are ${files} and the number of matching lines are ${lines}"
fi