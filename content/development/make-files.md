---
title: "Makefiles and similar"
author: ["Eivind Hjertnes"]
draft: false
---

Both makefils and npm to a lesser degree let you declare tasks that are commonly done to a software project. Like "run", "clean", "build" or "lint".

I think they are awesome, because "npm run lint" or "make lint" is possible to remember after seeing it once, while npx eslint --fix "some blob of patterns of files to include" is not.

I personally prefer make files to the package.json format for a number of reasons. For one it is a old and well known standard way of doing things, it is a lot more flexible in terms of writing the tasks. And it works on more or less anything.
