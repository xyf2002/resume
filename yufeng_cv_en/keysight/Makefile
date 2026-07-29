.PHONY: all cv letter clean

all: keysight.pdf cover-letter.pdf

cv: keysight.pdf
letter: cover-letter.pdf

keysight.pdf: keysight.tex header.tex education.tex awards.tex skills.tex experience.tex industry.tex publications.tex extras.tex
	pdflatex -interaction=nonstopmode keysight.tex
	pdflatex -interaction=nonstopmode keysight.tex

cover-letter.pdf: cover-letter.tex
	pdflatex -interaction=nonstopmode cover-letter.tex

clean:
	rm -f *.aux *.out *.log keysight.pdf cover-letter.pdf
