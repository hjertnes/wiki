---
title: "When Emacs gets confused about packages"
author: ["Eivind Hjertnes"]
draft: false
---

So, you have your typical emacs installation with a few or a lot of packages installed. It all works fine, then you add another one and you get a shit load of errors, about some package version not exisitng or something.

The simple solution to this problem is to delete the elpa folder in your .emacs.d and restart emacs. This will force emacs to (if everything is set up correctly) to refresh the package lists (when you run the package-refresh-contents command it stores a local copy of the list of packages on each package mirror you have in your config), then it will install everything you have told it to install.

If you don't want to do that, or you manually install packages instead of doing it in your config (bad idea), then doing the steps as described [here](/emacs/packages) should fix it.

I usually just nuke elpa and restart because it is faster.
