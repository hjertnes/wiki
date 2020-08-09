---
title: "Understanding it"
author: ["Eivind Hjertnes"]
draft: false
---

This is intended as a short introduction into some of the core concepts of emacs. If you want a deeper dive I recommend [Mastering Emacs](https://www.masteringemacs.org/), it's a great book I've read many times.

A lot of terminology in emacs is a little bit weird, and crash with what the rest of the world calls it. The reason for this is that Emacs started in the 70s before this terminology existed.

-   Frame: what everyone else calls a window
-   Window: a frame is divded into one or more windows.
-   Buffer: everything that is visible in emacs is a buffer, it can be a file or something interactive like a Git app or just some text that isn't saved yet.

The emacs window layout is very confusing in the beginning, this is because lisp functions you call may change it. In most other editors it is something a little bit more fixed. This is very powerful because a command can set up the layout to be taylored to something you're going to do and then close it when you're done. This is for it is when you open magit, commit some stuff and then you quit it.

Another thing you should understand about emacs is that buffers and windows are not one to one. Let's say you are working on a big C# class. For example with some properties on the top, a bunch of contructors in the middle and some private validation methods on the bottom. This is by the way not how I would write it. I would make the properties as a class, then a builder class instead of the constructors and then a seperate validation class. What you could do in emacs, and I do it a lot, is to show the same buffer in multiple windows. To avoid having to jump up and down all the time.
