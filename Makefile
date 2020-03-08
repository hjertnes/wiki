build:
	cp ~/txt/notes/wiki.org wiki.org
	pandoc -s --template=templates/default.html --toc ~/txt/notes/wiki.org -o index.html --css ./wiki.css --section-div
