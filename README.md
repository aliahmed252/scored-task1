# scored-task1
# 🗃 Daily System Backup Automation (Bash Script)

## 📌 Objective
This project provides a *Bash script* to automate *daily system backups, log management, and failure alerting using **Postfix* for local email delivery. It is designed for easy configuration, reliability, and maintainability.

---

## 🛠 Features

### ✅ 1. Backup Logic
- Backs up a configurable directory (default: /etc)
- Stores backups as compressed .tar.gz files
- Automatically retains the *last N backups* (default: 7 days)
- Backup storage location is configurable

### 🧾 2. Log Rotation
- Generates a log file for every backup run
- Keeps only the latest 5 logs to avoid large disk usage

### 🚨 3. Alerting on Failures
- If the backup process fails (e.g., permission issues, tar errors), an email is sent to the system admin using *Postfix*
- Email subject clearly indicates the error and includes a timestamp

### ⏱ 4. Scheduling
- The script is scheduled via *cron* to run *daily*
- Cron job can be customized easily depending on user needs

---

## 🧪 How to Run and Test the Script

1. *Clone the repo:*
   bash
   git clone https://github.com/yourusername/daily-backup-script.git
   cd daily-backup-script
   

2. *Edit the script variables:*
   - SOURCE_DIR: path to the directory you want to back up
   - BACKUP_DIR: where the backup files will be stored
   - RETENTION_DAYS: how many backups to keep

3. *Make the script executable:*
   bash
   chmod +x daily_backup.sh
   

4. *Run manually for testing:*
   bash
   ./daily_backup.sh
   

---

## ⚙ Configuration

- You can change all configuration variables inside daily_backup.sh
  bash
  SOURCE_DIR="/etc"
  BACKUP_DIR="/home/user/backups"
  RETENTION_DAYS=7
  LOG_DIR="/var/log/backup-script"
  

---

## 🧪 How to Test Failure Alerts

To simulate failure:
- Temporarily set SOURCE_DIR to a non-existent path
- Or, remove write permissions from BACKUP_DIR
- Run the script manually and check email using:
  bash
  mail
  

---

## ⏰ Cron Job Setup

Add this line using crontab -e to schedule daily backup at 2:00 AM:
bash
0 2 * * * /path/to/daily_backup.sh


---

## 📁 Directory Structure


daily-backup-script/
├── daily_backup.sh
├── README.md
└── logs/


---

## 🧑‍💻 Author

- *Ali Ahmed*
- GitHub: [aliahmed252](https://github.com/aliahmed252)

---
