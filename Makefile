TEX = resume.tex
PDF = resume.pdf

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX)
	latexmk -pdf -interaction=nonstopmode $(TEX)

clean:
	latexmk -C
