.PHONY: all clean

all: academic.pdf

academic.pdf: academic.tex header.tex education.tex experience.tex publications.tex awards.tex
	pdflatex academic.tex
	pdflatex academic.tex

clean:
	rm -f academic.aux academic.out academic.log academic.pdf