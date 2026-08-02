.PHONY: all clean

BUILD_DIR := build

all: yufeng_cn_1p.pdf yufeng_cn_2p.pdf

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

yufeng_cn_1p.pdf: yufeng_cn_1p.tex preamble.tex header_1p.tex education_1p.tex skills.tex projects_1p.tex publications_1p.tex extras_1p.tex $(wildcard proj/*.tex) | $(BUILD_DIR)
	xelatex -output-directory=$(BUILD_DIR) yufeng_cn_1p.tex
	xelatex -output-directory=$(BUILD_DIR) yufeng_cn_1p.tex
	cp $(BUILD_DIR)/yufeng_cn_1p.pdf .

yufeng_cn_2p.pdf: yufeng_cn_2p.tex preamble.tex header.tex education.tex skills.tex projects_2p.tex publications_2p.tex industry.tex extras.tex $(wildcard proj/*.tex) | $(BUILD_DIR)
	xelatex -output-directory=$(BUILD_DIR) yufeng_cn_2p.tex
	xelatex -output-directory=$(BUILD_DIR) yufeng_cn_2p.tex
	cp $(BUILD_DIR)/yufeng_cn_2p.pdf .

clean:
	rm -rf $(BUILD_DIR) yufeng_cn_1p.pdf yufeng_cn_2p.pdf
