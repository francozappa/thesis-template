THESIS_OUT = thesis
# NOTE: use LATEX_COLOR if you have installed colorpdflatex
LATEX = pdflatex
LATEX_COLOR = colorpdflatex
LATEX_OPTS = -shell-escape
# NOTE: use LATEX_COLOR if you have installed colorpdflatex
LINUX_OPEN = xdg-open
MACOS_OPEN = open

thesis:
	$(LATEX) main.tex
	$(LATEX) main.tex
	cp main.pdf $(THESIS_OUT).pdf

thesis-bib:
	$(LATEX) main.tex
	$(LATEX) main.tex
	bibtex main
	$(LATEX) main.tex
	$(LATEX) main.tex
	cp main.pdf $(THESIS_OUT).pdf

thesis-open:
	$(LINUX_OPEN) $(THESIS_OUT).pdf &

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f cans.pdf


