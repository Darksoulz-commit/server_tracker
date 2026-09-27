#!/bin/bash

disk_space=$(df -h / | awk 'NR==2 {print$5}'| sed 's/%//')
current_date=$(date)
echo $disk_space $current_date  >> report.txt

git add .
git commit -m  "Space updated"
git push origin main
