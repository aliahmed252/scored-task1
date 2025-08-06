#!/bin/bash
log_file="/home/aliahmed/logs/backup.log"
backup_source="/var/www"
backup_dest="/home/aliahmed/backup"
echo "Backup started at $(date)" >> "$log_file"
tar -czf "$backup_dest"-$(date +%F_%H-%M-%S).tar.gz "$backup_source" >> "$log_file" 2>&1
status=$?
echo $status
if [ $status -eq 0 ]; then
	echo "backup succsseded" | mail -s "backup result" securevbn999@gmail.com
else
	echo "backup failed" | mail -s "backup result" securevbn999@gmail.com
fi	
find "$backup_dest" -name "*.tar.gz" -type f -mtime +7 -exec rm -f {} \;
