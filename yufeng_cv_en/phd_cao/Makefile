.PHONY: all clean

all: yufeng_cv_phd.pdf

yufeng_cv_phd.pdf: yufeng_cv_phd.tex header.tex education.tex experience.tex publications.tex skills.tex extras.tex
	pdflatex -interaction=nonstopmode yufeng_cv_phd.tex
	pdflatex -interaction=nonstopmode yufeng_cv_phd.tex

clean:
	rm -f *.aux *.out *.log yufeng_cv_phd.pdf
