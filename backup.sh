#!/bin/bash
log_file="/home/aliahmed/logs/backup.log"
backup_source="/var/www"
filename="backup-$(date +%F_%H-%M-%S).tar.gz"
backup_dir="/home/aliahmed/backup"
backup_dest="$backup_dir/$filename"
echo "Backup started at $(date)" >> "$log_file"
tar -czf "$backup_dest" "$backup_source" >> "$log_file" 2>&1
status=$?
echo $status
if [ $status -eq 0 ]; then
        echo "return to dir $backup_dir" for result | mail -s "backup succeeded" securevbn999@gmail.com
else
        echo "return to $log_file to know the reason" | mail -s "backup failed" securevbn999@gmail.com
fi
find "$backup_dir" -name "*.tar.gz" -type f -mtime +7 -exec rm -f {} \;

