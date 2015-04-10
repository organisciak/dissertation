PAPER=crowd-taxonomy-iconf

all: ${PAPER}

${PAPER}: 
	python gdoc2latex.py ${PAPER}.gdoc > ${PAPER}.tex
	pdflatex ${PAPER}
	pdflatex ${PAPER}

bib: ${PAPER}
	perl -pe "s:^(@.*{.*_)\?*:\1:g" refs.bib | perl -pe "s/^(@.*{.*):_/\1_/g" >refs.bib2
	mv refs.bib2 refs.bib
	bibtex ${PAPER}
	pdflatex ${PAPER}
	pdflatex ${PAPER}

mostlyclean:
	rm -f ${PAPER}.aux ${PAPER}.bbl ${PAPER}.blg ${PAPER}.log ${PAPER}.out ${PAPER}.lot ${PAPER}.lof 
	
clean: mostlyclean	
	rm -f ${PAPER}.pdf 
