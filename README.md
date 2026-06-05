PERSONAL SYSTEM MONITOR

The system monitor checks the RAM usage, Disk Space, CPU usage, check if the website is up, save reports and run aumatically
every morning.

How to run it.
bash monitor.sh

How to set the cron
Run crontab -e in your terminal,
set as per your requirement, mine was 08*** bash ~/projects/System_monitor/monitor.sh
