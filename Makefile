NAME=detector
DATA=$(wildcard data/*)
AUXDIR=aux

all: $(NAME).pdf

$(NAME).pdf: $(NAME).lau bibliography.bib Makefile $(DATA) ecos.sty
	latexmk -pdfxe -auxdir=$(AUXDIR) $<

clean:
	rm -rf $(AUXDIR)

wipe: clean
	rm -r $(NAME).pdf

.PHONY: all clean wipe
