echo "				
				OS DETAILS"
cat /etc/os-release
echo "				
				WORKING SHELLS"
cat /etc/shells
echo " 				
				CPU INFORMATIONS"
lscpu
echo "				
				MEMORY INFORMATIONS"
cat /proc/meminfo
echo "				
				DISK DETAILS"
lsblk -o MODEL,SIZE,NAME -d
echo "				
				FILE SYSTEM "
df -h | grep ^/dev
