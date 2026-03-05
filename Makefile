TEX = resume.tex
TEX_ZH = resume_zh.tex
PDF = CV_Yibo_Liu.pdf
PDF_ZH = CV_Yibo_Liu_zh.pdf

.PHONY: all zh clean

all: $(PDF)

zh: $(PDF_ZH)

$(PDF): $(TEX)
	latexmk -pdf -jobname=$(basename $(PDF)) -interaction=nonstopmode $(TEX)

$(PDF_ZH): $(TEX_ZH)
	latexmk -xelatex -jobname=$(basename $(PDF_ZH)) -interaction=nonstopmode $(TEX_ZH)

clean:
	latexmk -C
