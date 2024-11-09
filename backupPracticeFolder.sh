#!/bin/bash

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backupDir="/home/backups/practiceFolderBackup"
sourceDir="/home/jasonrodriguez/practiceFolder"
sudo mkdir -p "$backupDir"
sudo tar -czf "$backupDir/backup_$timestamp.tar.gz" -C "$sourceDir" .

echo "Backup of $sourceDir completed and saved as $backupDir/backup_$timestamp.tar.gz"
