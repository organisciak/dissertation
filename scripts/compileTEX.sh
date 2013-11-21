# Convert Chapters to LaTex
ls document/*_*.md | parallel pandoc -f markdown -t latex --smart --chapters -o {.}.tex {}

# Compile to PDF
TEXINPUTS=document/: pdflatex thesis.tex

# Open PDF for viewing
open thesis.pdf

# Update stats
./scripts/createReport.sh
