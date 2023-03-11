#!/bin/bash
#script to demo functions
disk_check(){
	df -h
	lscpu
}

memory_check(){
	free -m
	free -g
	sleep 5
}

memory_check
disk_check
disk_check
