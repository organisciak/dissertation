Dissertation
------------

This project outlines Peter's dissertation research and writing.

Writing can be found in #/documents, one document per chapter. It's written in Markdown (a text-only format), but is easily converted to laTex or HTML with [Pandoc http://johnmacfarlane.net/pandoc/getting-started.html].


## To Compile
    pdflatex --include-directory=document thesis.tex
Or,
    TEXINPUTS=document/: pdflatex thesis.tex

### Compiling Markdown files to laTeX

Pandoc is needed to convert Markdown to Latex
-http://johnmacfarlane.net/pandoc/getting-started.html

```
cd document
pandoc -f markdown -t latex --smart --chapters -o 1_intro.tex 1_intro.md
```

## Templates
LaTex templates from Electrical and Computer Engineering at UIUC: http://wiki.engr.illinois.edu/display/ECEThesisReview/LaTeX+Resources

See details for using the template at: https://wiki.engr.illinois.edu/download/attachments/31395374/ECE+LaTeX+Guide.pdf?version=1&modificationDate=1316699101000
