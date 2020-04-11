build:
	cp ~/txt/notes/websites/wiki.org wiki.org
	pandoc -s --template=templates/default.html --toc ~/txt/notes/websites/wiki.org -o index.html --css ./wiki.css --section-div
