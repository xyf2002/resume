.PHONY: all cv letter clean

all: industry-cv.pdf

cv: industry-cv.pdf
letter: cover-letter.pdf

industry-cv.pdf: industry-cv.tex header.tex education.tex skills.tex experience.tex industry-experience.tex publications.tex extras.tex
	pdflatex -interaction=nonstopmode industry-cv.tex
	pdflatex -interaction=nonstopmode industry-cv.tex

# NOTE: cover-letter.tex is still the Keysight-specific letter carried over from
# keysight/. A cover letter has to be rewritten per employer, so it is deliberately
# not part of the default target. Build it with `make letter` once retargeted.
cover-letter.pdf: cover-letter.tex
	pdflatex -interaction=nonstopmode cover-letter.tex

clean:
	rm -f *.aux *.out *.log industry-cv.pdf cover-letter.pdf
