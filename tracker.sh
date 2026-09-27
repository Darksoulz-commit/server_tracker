#!/bin/bash

disk_space=$(df -h / | awk 'NR==2 {print$5}'| sed 's/%//')
echo $disk_space >> report.txt

git add .
git commit -m  "Space updated"
git push origin main
