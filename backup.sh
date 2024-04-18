#!/bin/bash

# MariaDB database credentials
DB_USER="username"
DB_PASSWORD="password"
DB_NAME="database_name"

# Directory to store backups
BACKUP_DIR="/path/to/backup/directory"

# Timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Backup file name
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$TIMESTAMP.sql"

# Create backup
mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE

# Upload backup to Google Drive using rclone
rclone copy $BACKUP_FILE remote:backup/

# Delete old backups (optional)
# find $BACKUP_DIR -type f -name '*.sql' -mtime +7 -exec rm {} \;

# Save the file and make it executable


# Exit
exit 0