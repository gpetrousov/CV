all:
	docker run --rm -v $(PWD):$(PWD) -w $(PWD) texlive/texlive:latest xelatex resume_cv.tex
	mv -f resume_cv.pdf ioannis_petrousov_cv.pdf
clean:
	rm resume_cv.{aux,bbl,blg,log,out,tmp,tui}
	rm resume_cv-mpgraph.mp
	rm  rm texput.log
