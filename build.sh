#!/bin/sh
# TODO
# find all the stuff I don't want public
# fix the naming stuff I fucked up

rm -rf public
cp -R ~/txt/roam public

# TODO styling

find . -name ".DS_Store" -print0 | while read -d $'\0' file
do
    rm "$file"
done

find . -name "*.org" -print0 | while read -d $'\0' file
do
    echo "$file"
    if ! grep -q "^#+private: true" "$file";
    then
	pandoc "$file" -s -o "${file/.org/.html}" --template hjertnes.html
    else
	echo "$file contains private"
    fi




    rm "$file"
done    

cd public/ && ~/bin/wiki-index-builder . > index.html && cd ..

cp style.css public/
