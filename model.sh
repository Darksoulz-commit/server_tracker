disk_space=$(df -h / | awk 'NR==2 {print$5}'| sed 's/%//')
echo "Disk_space is : $disk_space%"
