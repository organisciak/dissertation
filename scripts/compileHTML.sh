# Compile HTML version of dissertation
cat summary.md document/*_*md | pandoc -f markdown -t html --smart --bibliography=refs.bib --table-of-contents --template pandoc-bootstrap-template/template.html --css pandoc-bootstrap-template/template.css -o summary.html
open summary.html

# Update stats
./scripts/createReport.sh
