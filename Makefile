NAME=detector
DATA=$(wildcard data/*)

all: $(NAME).pdf

$(NAME).pdf: $(NAME).lau bibliography.bib Makefile $(DATA) ecos.sty
	xelatex $<
	biber $(basename $<).bcf
	texfot xelatex $<

clean:
	rm -f $(NAME).aux $(NAME).log $(NAME).out $(NAME).bbl $(NAME).bcf $(NAME).blg $(NAME).run.xml

wipe:
	rm -r $(NAME).pdf

.PHONY: all clean wipe
