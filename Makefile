TEX = CV.tex
TEX_ZH = CV_zh.tex
PDF = CV_Yibo_Liu.pdf
PDF_ZH = CV_Yibo_Liu_zh.pdf

.PHONY: en all zh clean

en: $(PDF)

all: $(PDF) $(PDF_ZH)

zh: $(PDF_ZH)

$(PDF): $(TEX)
	latexmk -pdf -jobname=$(basename $(PDF)) -interaction=nonstopmode $(TEX)

$(PDF_ZH): $(TEX_ZH)
	latexmk -xelatex -jobname=$(basename $(PDF_ZH)) -interaction=nonstopmode $(TEX_ZH)

clean:
	latexmk -C
