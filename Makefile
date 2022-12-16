all:
ifeq (${USER},bcpierce)
	-chmod a+w bcp.bib
	cp $(HOME)/common/bib/bcp.bib .
	chmod a-w bcp.bib
endif
	latexmk --pdf main
	cp main.pdf temp.pdf

clean:
	latexmk -c
	-rm *.bbl temp.*
