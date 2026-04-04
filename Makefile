.PHONY: all clean cn en

# Output and build directories
OUT_DIR := out
BUILD_DIR := build

# Source files and output
CN_SOURCE := yufeng_cv_cn/yufeng_cn.tex
CN_OUTPUT := $(OUT_DIR)/yufeng_cn.pdf

EN_SOURCE := yufeng_cv_en/yufeng.tex
EN_OUTPUT := $(OUT_DIR)/yufeng.pdf

# Default target
all: $(CN_OUTPUT) $(EN_OUTPUT)

# Create directories if they don't exist
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile Chinese CV
$(CN_OUTPUT): $(CN_SOURCE) | $(OUT_DIR) $(BUILD_DIR)
	cd yufeng_cv_cn && pdflatex -output-directory=../$(BUILD_DIR) yufeng_cn.tex
	cd yufeng_cv_cn && pdflatex -output-directory=../$(BUILD_DIR) yufeng_cn.tex
	cp $(BUILD_DIR)/yufeng_cn.pdf $(CN_OUTPUT)

# Compile English CV
$(EN_OUTPUT): $(EN_SOURCE) | $(OUT_DIR) $(BUILD_DIR)
	cd yufeng_cv_en && pdflatex -output-directory=../$(BUILD_DIR) yufeng.tex
	cd yufeng_cv_en && pdflatex -output-directory=../$(BUILD_DIR) yufeng.tex
	cp $(BUILD_DIR)/yufeng.pdf $(EN_OUTPUT)

# Compile only Chinese CV
cn: $(CN_OUTPUT)

# Compile only English CV
en: $(EN_OUTPUT)

# Clean build artifacts
clean:
	rm -rf $(BUILD_DIR) $(OUT_DIR)

# Clean only build directory (keep PDFs)
clean-build:
	rm -rf $(BUILD_DIR)
