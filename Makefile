all:
ifeq (${USER},bcpierce)
	-chmod a+w bcp.bib
	cp $(HOME)/common/bib/bcp.bib .
	chmod a-w bcp.bib
endif
	latexmk -pdf -synctex=1 main
	cp main.pdf temp.pdf

split: all
	-mkdir parts
	cp main.pdf parts/AllPIProvidedDocuments.pdf
	pdfjam main.pdf 2-2 --outfile parts/Parts-ProjectSummary.pdf
	pdfjam main.pdf 3-17 --outfile parts/Parts-ProjectDescription.pdf
	pdfjam main.pdf 18-25 --outfile parts/Parts-ReferencesCited.pdf
	pdfjam main.pdf 26-27 --outfile parts/Parts-CollaborationPlan.pdf
	pdfjam main.pdf 28-29 --outfile parts/Parts-Facilities.pdf
	pdfjam main.pdf 30-33 --outfile parts/Parts-BPC.pdf
	pdfjam main.pdf 34-34 --outfile parts/Parts-DataManagement.pdf
	pdfjam main.pdf 35-35 --outfile parts/Parts-ProjectPersonnel.pdf
	pdfjam main.pdf 36-36 --outfile parts/Parts-RecommendedReviewers.pdf
	pdfjam main.pdf 38-42 --outfile parts/Parts-LettersOfCollaboration.pdf

clean:
	latexmk -c
	-rm *.bbl temp.*

export:
	cp main.pdf ~/pub/draft/pbtproposal.pdf
	unison eniac -path pub/draft -batch
