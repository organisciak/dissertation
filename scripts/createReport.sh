data="logs/stats.csv"

date 

echo -e "\nWORD COUNT"
wc -w summary.md document/*_*.md

# Also save a tab-saparated machine-readable version
wc -w summary.md document/*_*md | perl -pe "s/ +/\t/g" | perl -pe "s/^/`date +%s`/g" >>$data
