log="logs/stats.log"
data="logs/stats.csv"

date | tee -a $log

echo -e "\nWORD COUNT"
wc -w document/*_*.md | tee -a $log

# Also save a tab-saparated machine-readable version
wc -w document/*_*md | perl -pe "s/ +/\t/g" | perl -pe "s/^/`date +%s`/g" >>$data

echo -e "\nSTATS"

echo -e "\nTODOS"
echo -e "Count\t`grep -rPc "(?<=%) ?(TODO|todo).*$" *.tex`" | tee -a $log
echo "----" | tee -a $log
grep -roPn "(?<=%) ?(TODO|todo).*$" *.tex
