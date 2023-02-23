all:
ifeq (${USER},bcpierce)
	-chmod a+w bcp.bib
	cp $(HOME)/common/bib/bcp.bib .
	chmod a-w bcp.bib
endif
	latexmk -pdf -synctex=1 main
#	latexmk -pdf main
	cp main.pdf temp.pdf
	$(MAKE) docs

docs:
	cp main.pdf parts/AllPIProvidedDocuments.pdf
	pdfpextr 2 2 main.pdf parts/Parts-ProjectSummary
	pdfpextr 3 22 main.pdf parts/Parts-ProjectDescription
	pdfpextr 23 30 main.pdf parts/Parts-ReferencesCited
	pdfpextr 31 33 main.pdf parts/Parts-Management
	pdfpextr 34 34 main.pdf parts/Parts-Facilities
	pdfpextr 35 36 main.pdf parts/Parts-BPC
	pdfpextr 37 37 main.pdf parts/Parts-DataManagement
	pdfpextr 38 38 main.pdf parts/Parts-ProjectPersonnel
	pdfpextr 39 39 main.pdf parts/Parts-RecommendedReviewers
	pdfpextr 41 44 main.pdf parts/Parts-LettersOfCollaboration

clean:
	latexmk -c
	-rm *.bbl temp.*

export:
	cp main.pdf ~/pub/draft/pbtgrant.pdf
	unison eniac -path pub/draft -batch
