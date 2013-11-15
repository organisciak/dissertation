log="logs/stats.log"

date | tee -a $log

echo -e "\nWORD COUNT"
wc -w document/*_*.md | tee -a $log

echo -e "\nSTATS"

echo -e "\nTODOS"
echo -e "Count\t`grep -rPc "(?<=%) ?(TODO|todo).*$" *.tex`" | tee -a $log
echo "----" | tee -a $log
grep -roPn "(?<=%) ?(TODO|todo).*$" *.tex
