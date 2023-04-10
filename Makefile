all:
	docker run --rm -v $(PWD):$(PWD) -w $(PWD) texlive/texlive:latest xelatex resume_cv.tex
