all: detector.pdf

detector.pdf: detector.lau Makefile
	xelatex detector.lau

clean:
	rm -r *.aux *.log

wipe:
	rm -r detector.pdf

.PHONY: all clean wipe
