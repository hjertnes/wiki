---
title: "OSX"
author: ["Eivind Hjertnes"]
draft: false
---

Just a super short list of things I have done to make using Emacs under OSX better

-   [exec-path-from-shell](https://github.com/purcell/exec-path-from-shell) makes sure emacs inherits path from your shell.
-   (when (eq system-type 'darwin) (setq mac-right-option-modifier 'none mac-right-command-modifier 'none)) this makes sure that the right option and command keys on your keyboard isn't handled by Emacs. This enables you to access certain symbols that are under cmd and cmd+option combos on OSX
-   I use [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus) with all the options enabled, becuase i prefer that, the regular emacs cask is the recommended method. I don't do that because I prefer having mailtuils being a part of emacs because of mu4e.
