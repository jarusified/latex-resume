RESUME = resume.tex
CV = cv.tex
TEX = $(wildcard *.tex)

.PHONY: all clean 

resume:
	pdflatex $(RESUME)

cv:
	xelatex $(CV)

clean:
	rm -f *.ilg *.aux *.log *.out *.brf *.lbl *.dvi *.idx *.toc *.lof *.lot
	rm -f *.blg *.bbl *~

cleanall:
	rm -f *.ilg *.aux *.log *.out *.brf *.lbl *.dvi *.idx *.toc *.lof *.lot
	rm -f *.blg *.bbl *~
	rm -f {RESUME}.pdf
	rm -f {CV}.pdf

update:
	git pull

