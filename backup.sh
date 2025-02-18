#!/bin/bash

<< info

This shell scripts will take periodic backups

eg .
./backup.sh <source> <dest>

src = /home/ubuntu/scripts
dest = /home/ubuntu/backups

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip -r "$dest/backup$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://sh.scripting-backup

echo "backup completed and uploaded to s3"

`
