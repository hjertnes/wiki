---
title: "undo-tree"
author: ["Eivind Hjertnes"]
draft: false
---

Undo in emacs are just this ring or long list of changes per buffer. It can be a little bit confusing to understand because a lot of really minor details. The short version is that every time you remove something it is added to the kill ring, and that data can at any point within its configurable limits be brought back.

While I understand how it works, I have never gotten used to it. So I use undo-tree instead. Instead of it just being this list or ringe of changes it breaks it down into a tree. And it even have this visualization thing you run go into, where you can move along the changes and see the buffer update in real time. And let's say you have a buffer with 10 changes, and you go back two changes, and then start to change that, it will branch out from the main one.

You may be fine with the regular kill ring implementation, but undo-tree works a hell of a lot better for me.
