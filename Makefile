SOURCES = doc.md
CONFIG = config.yml

.PHONY: doc
doc:
	pandoc -s $(SOURCES) -o doc.pdf --pdf-engine=pdflatex --metadata-file=$(CONFIG)

.PHONY: odt
odt:
	pandoc -s $(SOURCES) -o index.odt --metadata-file=$(CONFIG)

.PHONY: html
html:
	pandoc -s $(SOURCES) --mathjax -f markdown -t html -o index.html --metadata-file=$(CONFIG) --template=template.html

clean:
	rm *.pdf *.odt *.html
