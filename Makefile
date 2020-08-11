all:
	docker run --rm -v $(PWD):$(PWD) -w $(PWD) xelatex-full xelatex resume_cv.tex

