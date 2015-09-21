pandoc_args = -f markdown --filter pandoc-tablenos --filter pandoc-fignos --bibliography=refs.bib --smart
name=dissertation
data= logs/stats.csv
progressfile='./progress/data.csv'

all: mostlyclean docx

all.md:
	cat writing-files.txt | parallel -n1 -j1 cat {} " && " echo "" >all.md

stats:
	# Show chart of word count progress
	cat logs/stats.csv | Rscript workspace/vis-progress.r

refs:
	perl -pe "s:^(@.*{.*_)\?*:\1:g" refs.bib | perl -pe "s/^(@.*{.*):_/\1_/g" | perl -pe "s/co-cre/cocre/g" >refs.bib2
	mv refs.bib2 refs.bib

defense:
	pandoc -t revealjs \
		-s proposal-defense/talk.md \
		-o proposal-defense/talk.html \
		--slide-level=2 \
		-V theme=moon \
		--mathjax \
		$(pandoc_args)

defensepdf:
	pandoc -t beamer \
		-s proposal-defense/talk.md \
		-o proposal-defense/talk.pdf \
		--mathjax \
		$(pandoc_args)

count:
	./count.sh >> $(progressfile)
	tail $(progressfile)

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
	cat writing-files.txt | parallel pandoc  -t latex $(pandoc_args) --id-prefix={.} --biblatex --chapters -o {.}.tex {}
	# Fix underscores in \cite, \autocite, and \textcite commands
	# ls document/*_*.md | parallel "perl -i -p -e 's{cite{.*}}{$& =~ s/_/\\\_/gr}ge' {}"

pdf: refs tex
	# Compile to PDF and view
	export TEXINPUTS=document//:texstyles//
	pdflatex --include-directory=document --include-directory=texstyles $(name)
	biber $(name)
	pdflatex --include-directory=document --include-directory=texstyles $(name)
	# Check if I'm using any ill-advised subsubsubheadings
	# grep -q "#####" document/*md

html: refs all.md
	pandoc $(pandoc_args) -t html --table-of-contents \
	--template pandoc-bootstrap-template/template.html \
	--css pandoc-bootstrap-template/template.css -o $(name).html all.md

docx: refs all.md
	sed "s:../images/:images/:g" all.md >all-links-fixed.md
	pandoc $(pandoc_args) -t docx -o $(name).docx all-links-fixed.md
	rm all-links-fixed.md

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
