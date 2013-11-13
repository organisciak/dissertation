echo "STATS"

echo -e "\tNumber of TODO items: `grep -rPc "(?<=%) ?(TODO|todo).*$" *.tex`"

echo -e "\nTODOS"
grep -roPn "(?<=%) ?(TODO|todo).*$" *.tex
