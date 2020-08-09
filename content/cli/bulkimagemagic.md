---
title: "Bulk converting images with ImageMagick."
author: ["Eivind Hjertnes"]
draft: false
---

This works with most images, but it will not work with raw files because they are not really images, but rather something you can create a image with

for f in $(find . -iname '\*.HEIC'); do convert $f $(sed "s/HEIC/JPG/g" <<< "$f"); done

Just rename HEIC to what ever you are converting from and JPG to what ever you are converting to. The only thing you need to have installed is image magick.
