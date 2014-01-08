# Convert Chapters to LaTex
ls document/*_*.md | parallel pandoc -f markdown -t latex --biblatex --bibliography=refs.bib --smart --chapters -o {.}.tex {}
# Fix underscores in \cite, \autocite, and \textcite commands
# ls document/*_*.md | parallel "perl -i -p -e 's{cite{.*}}{$& =~ s/_/\\\_/gr}ge' {}"

# Compile to PDF and view
TEXINPUTS=document/: pdflatex thesis.tex
biber thesis
TEXINPUTS=document/: pdflatex thesis.tex
open thesis.pdf

# Update stats
./scripts/createReport.sh
