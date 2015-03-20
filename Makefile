name=presentation
TEX := $(shell find . -name '*.tex')
PDF := $(shell find . -name '*.pdf')
PNG := $(shell find . -name '*.png')
all: $(name).pdf
$(name).pdf: refs.bib $(TEX) $(PDF) $(PNG)
	pdflatex ${name}.tex
	bibtex ${name}
	pdflatex ${name}.tex
	pdflatex ${name}.tex
clean:
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.out' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.bbl' -delete
	find . -type f -name '*.blg' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.bak' -delete
	find . -type f -name '*.lot' -delete
	find . -type f -name '*.lof' -delete
	find . -type f -name '*.idx' -delete
	find . -type f -name '*.toc' -delete
	find . -type f -name '*.vrb' -delete
	find . -type f -name '*.nav' -delete
	find . -type f -name '*.toc' -delete
	find . -type f -name '*.snm' -delete
	find . -type f -name '*~' -delete

