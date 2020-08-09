---
title: "flycheck"
author: ["Eivind Hjertnes"]
draft: false
---

Flycheck is a generic mode for validating the buffer your're working on. It comes with a lot of stuff built in, and you can also install additional ones if you need to. What you use flycheck for is to run some kind of "check" or validation or linter on a buffer to show errors.

It is a great way to show errors as you work, to catch them early instead of ending up like in some projects I have seen out in the wild with 100 000+ warnings that nobody tries to fix.

Note: it can be slow as fuck on windows, especially together with javascript and eslint.
