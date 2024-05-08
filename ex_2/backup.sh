#! /bin/bash

# Date in format DAY##-MONTH##-YEAR####
DATE=$(date +%d-%m-%Y)

# change to parent directory to tar /Documents folder, (compress, preserve permissions, zip using gzip, and name the file with the current date)
cd ~/  && tar -cpzf $DATE.docs.backup.gz /home/chris/
# in mkdir -p flag is used to create the parent directory if it does not exist
mkdir -p ~/archive/ && cp $DATE.docs.backup.gz ~/archive/
# .gz file inside the archive folder is sent on the remote server, the folder content will not be overwritten
scp -P 80 -r ~/archive/ user@192.168.1.100:~/


ssh user@192.168.1.100 -p 80


/home/user/archive/28-04-2024.docs.backup.gz 
/home/user/archive/05-05-2024.docs.backup.gz 
/home/user/archive/12-05-2024.docs.backup.gz 

tar -cpfz $DATE.docs.backup.gz /home/chris && scp -P 80 $DATE.docs.backup.gz user@192.168.1.100:~/archive && rm $DATE.docs.backup.gz