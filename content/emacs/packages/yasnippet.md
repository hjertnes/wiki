---
title: "yasnippet"
author: ["Eivind Hjertnes"]
draft: false
---

I used to have my own snippet system implemented as a series of emacs interactive functions. And then I thought about it and started to replace it with something a little bit less hacky. I ended up with yasnippet. It is great, but it has some things I don't like about it.

One of them is that there is no way for me to define a snippet that will be available anywhere. Anyways.

You install the yasnippet package, configure where it should look for snippets and you should also set up some keybindings. There are many different kinds of way to expand them, I use two either I use yas-insert-snippet that give me a dropdown to select from or I use the yas-expand that expands what you just wrote. I have also mapped the yas-next/prev-field commands to be able to use the $1 $2 $3 etc variables. You can basically define places you want input.

The snippets work like this: you make a folder inside the locaiton for your snip for each mode, and then you add a file for each snippet inside them. There is a lot of information about all of this on the yasnippet website. But you can kind of fix this by adding a .yas-parents file; read more about it [here](http://joaotavora.github.io/yasnippet/snippet-organization.html#org7468fa9).
