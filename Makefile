name=presentation
TEX := $(shell find . -name '*.tex')
PDF := $(shell find . -name '*.pdf')
PNG := $(shell find . -name '*.png')
all: $(name).pdf
$(name).pdf: refs.bib $(TEX) $(PDF) $(PNG)
	mkdir -p build
	latexmk -halt-on-error -output-directory=build -f -pdf ${name}.tex
	mv build/${name}.pdf .
clean:
	rm -rf build
	rm ${name}.pdf
