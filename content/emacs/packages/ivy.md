---
title: "ivy"
author: ["Eivind Hjertnes"]
draft: false
---

If you know what Helm is, you also know what Ivy is: it is more or less the same thing. Except that helm is much more complete, while ivy is smaller and faster. Ivy is a incremental completion library. If you type C-x C-f to open a file or M-x to run a command in stock emacs you get some tab completion but that's it, or if you type C-x C-b you just get a list of buffers and that's it.

When you set up something like Ivy you can get a much nicer version of them. When I type C-x C-f I get a list of all the files and folders in the current directory and a box to type it in. If I type M-x I first get a list of the most recent commands I have used, and auto completion as I type stuff. And if I type C-x C-b I can search in all the open and recent buffers.

Note, the part of Ivy I'm talking about here is actually called Counsel.
