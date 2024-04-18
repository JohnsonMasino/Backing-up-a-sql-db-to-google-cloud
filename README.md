# Introduction
This is a step by step guide on how to back up a sql database on ubuntu server to a cloud stoerage like google drive or the likes.

## STEP 0
- Install and Configure "sqldump":
"sqldump" is a command-line utility that allows you to backup MySQL databases. You have to install it using the below command
[sql.sh](sql.sh)

## STEP 1
- Create a Backup Script:
Create a shell script that'll e responsible for backing up the database to the cloud storage platform chosen.
Here is the script:
[backup.sh](backup.sh)

## STEP 2
- Finally, add the following line of code to the script to automate the backup process and make it repeatedly every night.
[ending.sh](ending.sh)

## STEP 3
- Now Install and Configure "rclone":
This is also a command line interpreter that allows you to manage files on icloud storage. You can install it from their website: [https://rclone.org/intall/](https://rclone.org/install)

## STEP 4
- Configure this "rclone" for Google drive or One drive.
You can simply run "rclone config" and follow the process to set up your cloud storage provider 

## STEP 5
- Schedule The Backup Script:
You can use "cron" to schedule the nack up script to run daily. Edit the crontab file usiing 'crontab -e' and add the following line to schedule the backup at midnight every day.

## STEP 6
- Test your automated backup system before totally relying on it
You can use the following command:
bash /path/to/backup.sh

## Conclusion
By following these steps, you should be able to back up your databases on any of the cloud storage systems.