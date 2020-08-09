---
title: "Interactive functions"
author: ["Eivind Hjertnes"]
draft: false
---

In emacs you have two kinds of functions, you have a function, it can be called from other functions and you have a interactive function. A interactive functions can be called from other functions and from M-x. A regular function looks something like this (defun hello-world() "Hello World" (message "Hello World!)) where the form is the name followed by a list of arguments (in this case a empty list) a documentation string and the body of the function.

A interactive function looks almost the same. (defun hello-world() "Hello World" (interactive)(message "Hello World!)). The only difference is the call to interactive between the doc string and the body.

On the surface interactive enables you to call functions from M-x. But that is kind of just the surface of what it can do. You can also give it a string argument with all kinds of [codes](https://www.gnu.org/software/emacs/manual/html%5Fnode/elisp/Interactive-Codes.html#Interactive-Codes) ([<https://www.gnu.org/software/emacs/manual/html%5Fnode/elisp/Interactive-Examples.html#Interactive-Examples>][examples]), that examples you do also capture input before invoking the function.
