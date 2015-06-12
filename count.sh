#!/usr/bin/env bash
date=`date +'%B %d %Y'`
count=`cat writing-files.txt | parallel wc -w | awk '{total+=\$0}END{print total}'`
lastcount=$( grep -v "${date}" ../dissertation-progress/data.csv | tail -n 1 | grep -Po "\d+$" )
progress=$((count-lastcount))
echo $date,$progress,$count
