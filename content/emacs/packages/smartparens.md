---
title: "smartparens"
author: ["Eivind Hjertnes"]
draft: false
---

Smartparens is this crazy emacs package that helps you deal with parens pairs. In programming you have various "stuff" you put arround expressions, in lisps they are mostly (), but also "", '' etc. And in other languages you also have {}, [] etc. Smartparens adds these intelligent commands to work with them. You can move, wrap, unwrap, delete etc. It even has a strict mode that tries to keep you from ending up with code that is unbalanced (more closing or opening than the other)

I can't really git it justice here, check out the [website](https://github.com/Fuco1/smartparens).

This isn't that straightforward to install with use-package, so check out my emacs [config](https://git.sr.ht/~hjertnes/emacs.d) for details. The TLDR is that I install it outside use-package together with use-package and request and then I load it with use-package later.
