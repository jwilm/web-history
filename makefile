# This is my first attempt at a makefile for latex
#
#

# UPDATE FILE WITH .tex file prefix
FILE = assignment

all: pdf_out clean

pdf_out: $(FILE).ps
	ps2pdf $(FILE).ps 

$(FILE).ps: $(FILE).dvi
	dvips -t letter -Ppdf $(FILE).dvi

$(FILE).dvi: $(FILE).tex
	# latex $(FILE)
	# bibtex $(FILE)
	latex $(FILE)
	latex $(FILE)

clean:
	@echo
	@echo Removing garbage
	/bin/rm -f *.dvi *.ps *.aux *.bbl *.blg *.log
	@echo

