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
	pdfjam main.pdf 2-2 --outfile parts/Parts-ProjectSummary.pdf
	pdfjam main.pdf 3-22 --outfile parts/Parts-ProjectDescription.pdf
	pdfjam main.pdf 23-30 --outfile parts/Parts-ReferencesCited.pdf
	pdfjam main.pdf 31-33 --outfile parts/Parts-Management.pdf
	pdfjam main.pdf 34-34 --outfile parts/Parts-Facilities.pdf
	pdfjam main.pdf 35-36 --outfile parts/Parts-BPC.pdf
	pdfjam main.pdf 37-37 --outfile parts/Parts-DataManagement.pdf
	pdfjam main.pdf 38-38 --outfile parts/Parts-ProjectPersonnel.pdf
	pdfjam main.pdf 39-39 --outfile parts/Parts-RecommendedReviewers.pdf
	pdfjam main.pdf 41-44 --outfile parts/Parts-LettersOfCollaboration.pdf

clean:
	latexmk -c
	-rm *.bbl temp.*

export:
	cp main.pdf ~/pub/draft/pbtgrant.pdf
	unison eniac -path pub/draft -batch
