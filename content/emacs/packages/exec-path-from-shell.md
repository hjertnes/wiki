---
title: "exec-path-from-shell"
author: ["Eivind Hjertnes"]
draft: false
---

There is this awesome emacs package called exec-path-from-shell, it solves some issues you see a lot of on OS X, but I have also seen some of them on Linux in some situations. What it does is that it tries to extract enviornment variables from your default shell and use them in Emacs.

This matters because let's say some emacs mode expect the command foobar to be available, but you have installed in a weird location, and added it to your path in your shell of choice. This packages solves that.
