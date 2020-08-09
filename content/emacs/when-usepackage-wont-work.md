---
title: "Installing packages when use-package won't work"
author: ["Eivind Hjertnes"]
draft: false
---

When you use something like (use-package foobar :ensure t) it only works if the package you want to load and the name of it on the melpa or what ever is the same. And while that is the case most of the time, it isn't always. Or somethimes you just want to install something before everything else.

I have three packages in my emacs configuration that is installed outside use-package for various reasons. There are some ways to get around it, either by nesting things. All of them are messy, and all of them sucks.

You can see both ways in my personal emacs [config](https://git.sr.ht/~hjertnes/emacs.d). Sometimes I install them in my package manager module using the built in package-install command. And other times I first run a (use-package) to install the package and then I require what I want or need to load inside its :config. I don't have a lot of packages like this but there is a small handful.

I do the nesting with smartparens, while I install org-plus-contrib, request and use-package in my package-manager module. The reason I do that is for different reasons. Use-package because it have to be there before I use it, request because it makes things simpler and org-plus-contrib because it is the only good way to do it. I could nest it, but I hate it as much.
