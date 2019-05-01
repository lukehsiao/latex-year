SRC=$(wildcard *.tex)
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex
	latexmk -outdir=build -xelatex $<
	latexmk -outdir=build -xelatex -c 
clean: ; latexmk -outdir=build -C; rm -f build/*.bbl
