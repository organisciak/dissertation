if [ '$1' != 'statsonly' ]; then
	# Convert Chapters to LaTex
	ls document/*_*.md | parallel pandoc -f markdown -t latex --biblatex --bibliography=refs.bib --smart --chapters -o {.}.tex {}
	# Fix underscores in \cite, \autocite, and \textcite commands
	ls document/*_*.md | parallel "perl -i -p -e 's{cite{.*}}{$& =~ s/_/\\\_/gr}ge' {}"

	# Compile to PDF and view
	TEXINPUTS=document/: pdflatex thesis.tex
	biber thesis
	TEXINPUTS=document/: pdflatex thesis.tex
	open thesis.pdf

	cat summary.md document/*_*md | pandoc -f markdown -t html --smart --bibliography=refs.bib --template pandoc-bootstrap-template/template.html --css pandoc-bootstrap-template/template.css -o summary.html
	open summary.html
fi;

if [ '$1' != 'latexonly' ]; then
	# Update stats
	./scripts/createReport.sh

	# Show chart of word count progress
	cat logs/stats.csv | Rscript workspace/vis-progress.r
	open progress.png
fi;
