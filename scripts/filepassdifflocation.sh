#!/bin/bash
password="team5"
user="peter"
ips=( 172.31.51.176  172.31.63.237 )
locations=( /tmp /home )
for i in ${ips[@]}; do
  for index in ${locations[@]}; do
sshpass -p "$password" scp etech6.log $user@$i:$index
done
done
