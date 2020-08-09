---
title: "Coming to Emacs 27"
author: ["Eivind Hjertnes"]
draft: false
---

Did a "live blog" as I was reading the [news file](https://github.com/emacs-mirror/emacs/blob/master/etc/NEWS.27) yesterday. In my [twtxt](https://hjertnes.social/twtxt.txt).

Here is a more blog posty version, and a little bit longer version of that. Aka a summary of some of the stuff I saw in Emacs 27 that I really look forward to.


## make-empty-file {#make-empty-file}

There is a new elisp-function called make-empty-file that makes it really easy to make a empty file. This will be really useful for a lot of people for a bunch of stuff. For me it will make my emacs config more resillient. There are two files in my emacs config that isn't a part of the git repo (because they are local to that system, and should not be shared) that I today need to manually create for it to work. (personal.el for overriding config on that machine, and custom.el)


## jsx support {#jsx-support}

This will make react development and web dev that use a similar HTML and JavaScript at the same time syntax much better in Emacs.


## Tabs! {#tabs}

There is two kinds, one for having multiple window setups, and one more like regular tabs where it is a bunch of buffers in a tab-bar.


## ISO 8601 date parsing {#iso-8601-date-parsing}

There is a new package making is much easier to parse ISO 8601 stuff.
