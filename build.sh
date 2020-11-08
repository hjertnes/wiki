#!/bin/sh

rm -rf public

cp -R ~/txt/roam public

find . -name ".DS_Store" -print0 | while read -d $'\0' file
do
    rm "$file"
done

find . -name "*.org" -print0 | while read -d $'\0' file
do
    if ! grep -q "^#+private: true" "$file";
    then
	gsed -i "s/\.org/\.html/g" "$file";
	pandoc "$file" -s -o "${file/.org/.html}" --template hjertnes.html
    fi
    rm "$file"
done

find . -name "*.html" -print0 | while read -d $'\0' file
do
    gsed -i "s/class=\"sourceCode\ /class=\"lang-/g" "$file";
done

find public/ -empty -type d -delete

cd public/ && ~/bin/wiki-index-builder . > index.html && cd ..

cp style.css public/
cp prism.css public/
cp prism.js public/
