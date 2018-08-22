SRC=$(wildcard *.tex)
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex
	latexmk -outdir=build --pdf $<
	latexmk -outdir=build -c 
	write-good $< || true
clean: ; latexmk -outdir=build -C; rm -f build/*.bbl
