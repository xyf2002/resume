.PHONY: all cv clean

all: huawei.pdf

cv: huawei.pdf

huawei.pdf: huawei.tex header.tex education.tex skills.tex experience.tex industry.tex publications.tex extras.tex
	pdflatex -interaction=nonstopmode huawei.tex
	pdflatex -interaction=nonstopmode huawei.tex

clean:
	rm -f *.aux *.out *.log huawei.pdf
