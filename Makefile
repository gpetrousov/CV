all:
	docker run --rm -v $(PWD):$(PWD) -w $(PWD) texlive/texlive:latest xelatex resume_cv.tex
	mv -f resume_cv.pdf ioannis_petrousov_cv.pdf
mistral:
	docker run --rm -v $(PWD):$(PWD) -w $(PWD) texlive/texlive:latest xelatex mistral_cv.tex
	mv -f mistral_cv.pdf ioannis_petrousov_mistral_cv.pdf

clean:
	rm -f *.{aux,bbl,blg,log,out,tmp,tui,pdf}
	rm -f *-mpgraph.mp
	rm -f texput.log