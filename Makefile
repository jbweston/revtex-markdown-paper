paper.tex:
	pandoc -s --filter pandoc-fignos --filter pandoc-citeproc --filter pandoc-crossref --natbib paper.md -o paper.tex --bibliography paper.bib --template revtex.template

paper.pdf:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
