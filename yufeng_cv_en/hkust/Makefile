.PHONY: all cv toolchain github clean

all: hkust.pdf toolchain.pdf github.pdf

cv: hkust.pdf
toolchain: toolchain.pdf
github: github.pdf

COMMON = preamble.tex

hkust.pdf: hkust.tex $(COMMON) header.tex education.tex publications.tex experience.tex skills.tex extras.tex
	pdflatex -interaction=nonstopmode hkust.tex
	pdflatex -interaction=nonstopmode hkust.tex

toolchain.pdf: toolchain.tex $(COMMON)
	pdflatex -interaction=nonstopmode toolchain.tex
	pdflatex -interaction=nonstopmode toolchain.tex

github.pdf: github.tex $(COMMON)
	pdflatex -interaction=nonstopmode github.tex
	pdflatex -interaction=nonstopmode github.tex

clean:
	rm -f *.aux *.out *.log hkust.pdf toolchain.pdf github.pdf
