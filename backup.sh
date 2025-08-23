#!/bin/bash





<<info

This shell script will take periodic backups


eg.
./backup.sh <source> <dest>
src /home/ubuntu/scripts
dest /home/ubuntu/backups
info


src=$1
dest=$2


timestamp=$(date '+%y-%m_%d_%H-%M')

echo "$timestamp"


zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

#aws s3 sync "$dest" s3://ankitbackup-bucket

echo "backup Completed & uploaded to S3"

