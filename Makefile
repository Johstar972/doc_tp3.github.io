SOURCES=index.md

.PHONY: doc
doc:
	pandoc -s $(SOURCES) -o index.pdf --pdf-engine=pdflatex

.PHONY: odt
odt:
	pandoc -s $(SOURCES) -o index.odt

.PHONY: html
html:
	pandoc --toc -s $(SOURCES) --mathjax -f markdown -t html -o index.html

clean:
	rm *.pdf *.odt *.html
