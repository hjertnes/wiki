---
title: "Shells"
author: ["Eivind Hjertnes"]
draft: false
---

Shells in Emacs is a little bit weird for a number of reasons, most of them has to do with that when you're in a shell that shell might capture a some keyboard input you expected emacs to do and the other way arround. The way it usually works is that it is just passed on to emacs if the shell doesn't do something with it.

If you want to use a regular shell, like zsh or fish, use M-x ansi-term. I don't recommend this. But if you want to this is the best option.

What I use most of the time, except for with stuff I know doesn't work or work that great there is to use eshell. It is not a shell like zsh or fish, but rather a shell implemented in eshell. It is well integrated into emacs and most stuff works like you exepect them to.

This is how I shell in emacs:

-   I don't use it as my shell; but rather when I just need to run a few commands.
-   Most of the time i use eshell, I also have a command defined from [here](https://www.emacswiki.org/emacs/EshellMultipleEshellBuffers) called eshell-new to make it easy to create new eshells, because eshell just send you to the first one if it exist.
