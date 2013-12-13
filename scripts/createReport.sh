data="logs/stats.csv"

date 

echo -e "\nWORD COUNT"
wc -w document/*_*.md

# Also save a tab-saparated machine-readable version
wc -w document/*_*md | perl -pe "s/ +/\t/g" | perl -pe "s/^/`date +%s`/g" >>$data
