#!/bin/bash

if [ $# = 0 ]; then
	echo "Usage: $0 serviceName " 
	exit 1
fi


processName=$1

if { ! pgrep -x "$processName" >/dev/null;}; then
	echo "Alert!!! The process $processName is not running"| wall
else
	echo "process is running as expected"
fi
