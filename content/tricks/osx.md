---
title: "OSX"
author: ["Eivind Hjertnes"]
draft: false
---

## Hide Dock {#hide-dock}

```bash
defaults write com.apple.dock tilesize -integer 1 && killall Dock
```


## Disable OSX icons {#disable-osx-icons}

```bash
defaults write com.apple.finder CreateDesktop -bool false && killall Dock
```


## If Emacs can't read some of your folder {#if-emacs-can-t-read-some-of-your-folder}

If you run OS X, and you for some reason struggle with opening files in some of the folders in your home folder, it is because of some dumb ass OS X security crap. The short reason is that Ruby is involved somehwere in launching Emacs.app, so you need to whitelist /usr/bin/ruby in Full Disk Access. Makes a lot of sense? Not for me either, but it works.

If you don't figure out how to do this:

-   Open a terminal
-   cd /usr/bin
-   open .
-   Drag ruby to the full disk access list
