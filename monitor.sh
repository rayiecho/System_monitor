#!/bin/bash
echo "system monitor starting..."


DATE=$(date +"%Y-%m-%d_%H-%M-%S")
echo "Report Date: $DATE"

mkdir -p reports
REPORT="reports/report_$DATE.txt"
echo "System Monitor Report" > $REPORT
echo "Date: $DATE" >> $REPORT
echo "Report saved to $REPORT"

echo "======================" >> $REPORT
echo "DISK SPACE" >> $REPORT
df -h >> $REPORT
echo "MEMORY USAGE:" >>$REPORT
free -h >> $REPORT
echo "=====================" >> $REPORT
echo "UPTIME" >> $REPORT
uptime >> $REPORT

echo "====================" >> $REPORT
echo "WEBSITE STATUS:" >> $REPORT
if ping -c 1 youngafricansnetwork.org > /dev/null 2>&1; then
    echo "youngafricansnetwork.org is UP" >> $REPORT
else 
    echo "youngafricansnetwork.org is DOWN" >> $REPORT
fi
