# Crowdsourcing metadata: Reliably augmenting documents by collecting and interpreting amateur contributions

_Dissertation: Peter Organisciak_

**What's it about?**
Maximizing data quality in using paid crowds for objective and subjective encoding tasks. Read the [Abstract](document/0_abstract.md).

### Chapters

1. [Introduction](document/1_intro.md)
2. [Overview of Crowdsourcing](document/2_crowdsourcing.md)
3. [Design Facets of Crowdsourcing: A Typology for Information Science](document/3_typology.md)
4. [Interpreting Objective Tasks for Paid Crowdsourcing](document/4_posterior_objective.md)
5. (Designing Tasks for Objective Needs)[document/5_design_objective.md] ([Part 2](document/5_5_ams-study.md))
6. [Designing Tasks for Subjective Needs](document/6_subjective.md)
7. [Summary and Conclusions](document/7_conclusions.md)

### Committee

- Michael B. Twidale, Professor, UIUC
- Miles Efron, Associate Professor, UIUC
- J. Stephen Downie, Associate Professor, UIUC
- Jaime Teevan, Principal Researcher, Microsoft Research


## About this Repo

### Dissertation

This project outlines Peter's dissertation research and writing.

Writing can be found in #/documents, one document per chapter. It's written in Markdown (a text-only format), but is easily converted to laTex or HTML with [Pandoc http://johnmacfarlane.net/pandoc/getting-started.html].


## To Compile

```
	make pdf
```

Read the Makefile to understand how the markdown is converted, to Latex then to PDF.

### Compiling Markdown files to laTeX

Pandoc is needed to convert Markdown to Latex
-http://johnmacfarlane.net/pandoc/getting-started.html

```
cd document
pandoc -f markdown -t latex --smart --chapters -o 1_intro.tex 1_intro.md
