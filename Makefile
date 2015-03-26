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
	find . -type f -name '*.aux' -not -path "./.git/*" -delete
	find . -type f -name '*.out' -not -path "./.git/*" -delete
	find . -type f -name '*.log' -not -path "./.git/*" -delete
	find . -type f -name '*.bbl' -not -path "./.git/*" -delete
	find . -type f -name '*.blg' -not -path "./.git/*" -delete
	find . -type f -name '*.log' -not -path "./.git/*" -delete
	find . -type f -name '*.bak' -not -path "./.git/*" -delete
	find . -type f -name '*.lot' -not -path "./.git/*" -delete
	find . -type f -name '*.lof' -not -path "./.git/*" -delete
	find . -type f -name '*.idx' -not -path "./.git/*" -delete
	find . -type f -name '*.toc' -not -path "./.git/*" -delete
	find . -type f -name '*.vrb' -not -path "./.git/*" -delete
	find . -type f -name '*.nav' -not -path "./.git/*" -delete
	find . -type f -name '*.toc' -not -path "./.git/*" -delete
	find . -type f -name '*.snm' -not -path "./.git/*" -delete
	find . -type f -name '*~' -not -path "./.git/*" -delete
	rm ${name}.pdf
