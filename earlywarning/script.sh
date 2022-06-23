#!/bin/bash

filename=$1
n=1
while read line; do 
       	echo "[+] resolving $line"
	sudo masscan $line -p0-65535 --rate 1000000 > $n+'.txt'
n=$((n+1))
done < $filename
