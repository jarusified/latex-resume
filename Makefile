RESUME = resume.tex
TEX = $(wildcard *.tex)

.PHONY: all clean 

paper:
	pdflatex $(RESUME)

clean:
	rm -f *.ilg *.aux *.log *.out *.brf *.lbl *.dvi *.idx *.toc *.lof *.lot
	rm -f *.blg *.bbl *~

cleanall:
	rm -f *.ilg *.aux *.log *.out *.brf *.lbl *.dvi *.idx *.toc *.lof *.lot
	rm -f *.blg *.bbl *~
	rm -f {RESUME}.pdf

update:
	git pull

