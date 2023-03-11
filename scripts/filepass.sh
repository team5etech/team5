#!/bin/bash
password="team5"
user="peter"
ips=( 172.31.51.176  172.31.63.237 )
for i in ${ips[@]}; do
sshpass -p "$password" scp etech.log $user@$i:/tmp
done
