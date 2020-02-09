build:
	pandoc -s --template=templates/default.html --toc ~/txt/notes/wiki.org -o index.html --css ./wiki.css --section-divs
