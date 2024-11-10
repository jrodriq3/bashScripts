#!/bin/bash
                                                                                                                           
directoryToCheck=$1
maxFileSize=$2

if [ -z "$directoryToCheck" ]; then
    echo "Please provide the directory to check as the first argument."
    exit 1
fi

if [ -z "$maxFileSize" ]; then
    echo "Please provide the maximum file size in megabytes as the second argument."
    exit 1
fi



find "$directoryToCheck" -type f -size +"$maxFileSize"M -exec rm {} \;

echo "Large files have been deleted from $directoryToCheck."
