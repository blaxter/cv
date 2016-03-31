FILE=cv
TEX=xelatex

all: $(FILE).pdf

%.pdf: %.tex
	$(TEX) $<

open: $(FILE).pdf
	xdg-open $<

clean:
	rm *.aux *.log *.out *.pdf

reload: clean open
