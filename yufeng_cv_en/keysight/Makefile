.PHONY: all clean

all: keysight.pdf

keysight.pdf: keysight.tex header.tex education.tex awards.tex skills.tex experience.tex industry.tex publications.tex extras.tex
	pdflatex -interaction=nonstopmode keysight.tex
	pdflatex -interaction=nonstopmode keysight.tex

clean:
	rm -f keysight.aux keysight.out keysight.log keysight.pdf
