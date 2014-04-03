# Compile DOCX version of dissertation
cat summary.md document/*_*md | pandoc -f markdown -t docx --bibliography=refs.bib --smart -o thesis.docx 
open thesis.docx

# Update stats
./scripts/createReport.sh
