all:
	docker run --rm -v $(PWD):$(PWD) -w $(PWD) texlive/texlive:latest xelatex resume_cv.tex
	mv -f resume_cv.pdf ioannis_petrousov_cv.pdf

clean:
	rm -f *.{aux,bbl,blg,log,out,tmp,tui,pdf}
	rm -f *-mpgraph.mp
	rm -f texput.log

WEBSITE_DIR ?= ../petrousoft.github.io

deploy: all
	@echo "Copying CV to website repository..."
	cp -f ioannis_petrousov_cv.pdf $(WEBSITE_DIR)/ioannis_petrousov_cv.pdf
	@echo "Committing and pushing to website..."
	cd $(WEBSITE_DIR) && \
	git add ioannis_petrousov_cv.pdf && \
	git commit -m "chore: update CV from LaTeX source" || true && \
	git push
