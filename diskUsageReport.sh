#!/bin/bash

threshold=70
percentageUsed=$(df / | awk 'NR>1 {print $5}' | sed 's/%//g')
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
if [ $percentageUsed -ge $threshold ]; then
	echo "ALERT!!! STORAGE TOO FULL" | wall
	echo "ALERT!!! STORAGE TOO FULL $timestamp" >> ~/statusReports/diskUsageReport.txt

else
	echo "Storage is good $timestamp" >> ~/statusReports/diskUsageReport.txt
fi
