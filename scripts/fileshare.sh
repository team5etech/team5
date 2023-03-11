#!/bin/bash
ips=( 172.31.51.176  172.31.63.237 ) 
for i in ${ips[@]}; do
scp -i key scptest.log ubuntu@$i:/tmp
done
