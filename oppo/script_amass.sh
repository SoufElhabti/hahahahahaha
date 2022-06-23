#!/bin/bash

filename=$1
n=1
while read line; do 
       	echo "[+] enumerating $line"
	amass enum -d $line -config ~/amassconfig/config.ini -o $n+'.txt'
n=$((n+1))
done < $filename
