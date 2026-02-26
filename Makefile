TEX = resume.tex
TEX_ZH = resume_zh.tex
PDF = resume.pdf
PDF_ZH = resume_zh.pdf

.PHONY: all zh clean

all: $(PDF)

zh: $(PDF_ZH)

$(PDF): $(TEX)
	latexmk -pdf -interaction=nonstopmode $(TEX)

$(PDF_ZH): $(TEX_ZH)
	latexmk -xelatex -interaction=nonstopmode $(TEX_ZH)

clean:
	latexmk -C
