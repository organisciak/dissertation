pandoc_args = -f markdown --bibliography=refs.bib --smart
name =thesis
data= logs/stats.csv

all: mostlyclean docx
	
all.md:
	cat summary.md document/*_*md >all.md
	
stats:
	# Show chart of word count progress
	cat logs/stats.csv | Rscript workspace/vis-progress.r
	
refs: 
	perl -pe "s:^(@.*{.*_)\?*:\1:g" refs.bib >refs.bib2
	mv refs.bib2 refs.bib

report:
	# Update stats

	echo -e "\nWORD COUNT"
	wc -w summary.md document/*_*.md

	# Also save a tab-saparated machine-readable version
	wc -w summary.md document/*_*md | perl -pe "s/ +/\t/g" | \
		perl -pe "s/^(\d)/\t\1/g" | perl -pe "s/^/`date +%s`/g" >>$(data)

	# Visualize
	# Run stats ./scripts/visualizeStats.sh
	
tex: refs
	# Convert Chapters to LaTex
	ls document/*_*.md | parallel pandoc  -t latex --biblatex $(pandoc_args) --chapters -o {.}.tex {}
	# Fix underscores in \cite, \autocite, and \textcite commands
	# ls document/*_*.md | parallel "perl -i -p -e 's{cite{.*}}{$& =~ s/_/\\\_/gr}ge' {}"

	# Compile to PDF and view
	TEXINPUTS=document/: pdflatex thesis.tex
	biber thesis
	TEXINPUTS=document/: pdflatex thesis.tex
	
html: refs all.md
	pandoc $(pandoc_args) -t html --table-of-contents \
	--template pandoc-bootstrap-template/template.html \
	--css pandoc-bootstrap-template/template.css -o $(name).html all.md

docx: refs all.md
	pandoc $(pandoc_args) -t docx -o $(name).docx all.md

mostlyclean:
	rm -f all.md
	rm -f document/[1-5]_*.tex
	rm -f *.aux
	rm -f $(name).lof
	rm -f $(name).lot
	rm -f $(name).dvi
	rm -f $(name).bbl
	rm -f $(name).blg
	
clean: mostlyclean
	rm -f *~
	rm -f document/*~
	rm -f $(name).docx
	rm -f $(name).html
