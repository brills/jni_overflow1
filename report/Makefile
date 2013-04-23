
TEXFILE := main.tex \
abstract.tex \
relwork.tex \
future.tex \
disc.tex \
intro.tex \
methodology.tex \
result.tex \
main.bib

TEX:=pdflatex -shell-escape
BIBTEX:=bibtex

main.pdf: $(TEXFILE)
	$(TEX) main.tex
	$(BIBTEX) main
	$(TEX) main.tex
	$(TEX) main.tex

#main.pdf: main.dvi
#	dvipdf main.dvi

evince: main.pdf
	evince main.pdf &

clean:
	rm -f *.aux *.log *.bbl
