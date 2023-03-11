#!/bin/bash
# Search for auth.log file in /var/log directory

#variable for the script
team_members=("Joyce" "Brenda" "Benis" "Ben" "Joseph" "Edward")
log=kern.log
directory=/var/log/
groupname=Team4_Techops
ip=172.31.63.237


#Create a file with the group name
touch $groupname

sleep 2
#Check filename kern.log exists in /var/log file
#logfile=$(ls $directory | awk 'NR==26 {print $1}')
logfile=$(ls $directory | grep -x $log)

#check log file exist and file
if [ "$logfile" == "$log" ]; then
     echo "Successfully find filename $logfile in $directory directory"
 else
    echo "The exit status captured was echo $?"
    echo "Listing $directory and pipe with awk command failed to locate $log file"
    echo "Filename $log not in $directory directory"
    exit 1
fi

sleep 3

# Collect logs from /var/log/kern.log
    echo "Start to Cat $logfile and append to $groupname file"
cat $directory$logfile >> $groupname
    echo "Successfully cat $logfile and append to $groupname file"

#Write the name of each team member to the file
   echo "Ready to write all team5_group4_Techops memebers to $groupname file"

   sleep 2
for member in ${team_members[@]}
do
    echo "$member" >> $groupname
done

echo "Successfully append all team5_group4_TechnOps memebers on $groupname file"

#Check all team5 group 4 Technops appended in grouupname file
    echo "Checking team5 group 4 members appended in $groupname file"
namesappend=$(cat $groupname | tail -6)
    echo "All team5 group4 Techops members appended are: $namesappend"

    sleep 2
    echo "copy file $groupname into a remote server"
scp -i key $groupname ubuntu@$ip:/tmp
    echo "successfully transfered $groupname into /tmp directory in remote server"
