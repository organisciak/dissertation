Dissertation
------------

## To Compile
<<<<<<< HEAD
    pdflatex --include-directory=document thesis.tex
Or,
    TEXINPUTS=document/: pdflatex thesis.tex

### Compiling Markdown files to laTeX

Pandoc is needed to convert Markdown to Latex
-http://johnmacfarlane.net/pandoc/getting-started.html

```
cd document
pandoc -f markdown -t latex --chapters -o 1_intro.tex 1_intro.md
```
or simply:

```
ls document/*_*.md | parallel pandoc -f markdown -t latex --chapters -o {.}.tex {}
```
=======
    PDFLatex --include-directory=documents thesis.tex

## Templates
LaTex templates from Electrical and Computer Engineering at UIUC: http://wiki.engr.illinois.edu/display/ECEThesisReview/LaTeX+Resources

See details for using the template at: https://wiki.engr.illinois.edu/download/attachments/31395374/ECE+LaTeX+Guide.pdf?version=1&modificationDate=1316699101000
