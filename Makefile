FILE=cv
TEX=xelatex

all: $(FILE).pdf

%.pdf: %.tex
	$(TEX) $<

open: $(FILE).pdf
	xdg-open $<

%.tex: %.tex.in
	./insert_personal_data.sh

clean:
	rm *.aux *.log *.out *.pdf

reload: clean open
