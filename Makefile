SOURCES=index.md

.PHONY: doc
doc:
	pandoc -s $(SOURCES) -o fichier.pdf --pdf-engine=pdflatex

.PHONY: odt
odt:
	pandoc -s $(SOURCES) -o fichier.odt

.PHONY: html
html:
	pandoc --toc -s $(SOURCES) --mathjax -f markdown -t html -o fichier.html

clean:
	rm *.pdf *.odt *.html
