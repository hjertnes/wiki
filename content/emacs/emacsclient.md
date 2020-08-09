---
title: "Emacsclient"
author: ["Eivind Hjertnes"]
draft: false
---

I have used vim or editors like BBEdit, TextMate or SublimeText (and
recently vscode) for most of my carrer. All of them either is a text
based editor (vim) or has a command that you can use to open stuff in a
GUI edtior.

The advantage to this is that it is fast to open. This is really useful,
if you like me do as much as possible on the command line.

Emacsclient is a command that lets you send a file to a running instance
of Emacs. This is really useful because most realy world configurations
of Emacs takes some time to start. The only thing you need is to run M-x
start-server or enable server-mode, and you can run "emacsclient"
instead of emacs.

In my configs I have aliased emacs and a bunch of other editor command
to it. I think it works great.
