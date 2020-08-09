---
title: "Emacs packages"
author: ["Eivind Hjertnes"]
draft: false
---

## Ace-window {#ace-window}

Ace-window is a emacs package that makes it easy to jump between "windows" in Emacs, just like ace-jump is a emacs package that makes it easy to jump in a document.

These are all the default commands and keybindings, the way it works is that you press M-o, then a number will be shown in each "window", if you press it focus will be moved to it. And if you for example press x before the number it will instead delete that window.

-   x - delete window
-   m - swap windows
-   M - move window
-   c - copy window
-   j - select buffer
-   n - select the previous window
-   u - select buffer in the other window
-   c - split window fairly, either vertically or horizontally
-   v - split window vertically
-   b - split window horizontally
-   o - maximize current window
-   ? - show these command bindings


## projectile {#projectile}

Projectile is a emacs package for juggling multiple projects in emacs. Think of a project as a git repository. You configure it to search for new project in a path; on my systems it is in ~/Code, and then you give it a shortcut; mine i M-p. Then you can for example git M-p p to switch project or M-p SPC to search for a file in the current project. Projectile can do a lot of other stuff as well, and there are many different other stuff that integrate into it.


## ivy {#ivy}

If you know what Helm is, you also know what Ivy is: it is more or less the same thing. Except that helm is much more complete, while ivy is smaller and faster. Ivy is a incremental completion library. If you type C-x C-f to open a file or M-x to run a command in stock emacs you get some tab completion but that's it, or if you type C-x C-b you just get a list of buffers and that's it.

When you set up something like Ivy you can get a much nicer version of them. When I type C-x C-f I get a list of all the files and folders in the current directory and a box to type it in. If I type M-x I first get a list of the most recent commands I have used, and auto completion as I type stuff. And if I type C-x C-b I can search in all the open and recent buffers.

Note, the part of Ivy I'm talking about here is actually called Counsel.


## counsel-projectile {#counsel-projectile}

If you're a projectile user and a ivy / counsel user. You probably also want to use counsel for projectile stuff. This package enable just that; if you type M-p p with it on you get a ivy version of.


## deft {#deft}

I'm not using this at the moment, but I have used it a lot in the past. Deft is a emacs package that adds functionality that is more or less like nvAlt. For those who don't know what that is:

-   An app that use a folder of text files as their database
-   One note per file
-   You have a search field, list of notes and a content area
-   As you type into the search area the list of notes are filtered
-   When you hit enter you either open the selected note or create a new one with the current search as filename if none matches exist.

Most of my notes these days are larger org files instead of a lot of tiny text files. But if this is your thing I recommend checking it out. But you should also look at the [website](https://jblevins.org/projects/deft/) because there are a lot of information about how to configure it there.


## treemacs {#treemacs}

Treemacs is a emacs package that adds this interesting file browser view on the left of your emacs frame. Kind of like how you get with neotree or what you have in Visual Studio Code or Sublime Text or most other editors.

I was never a fan of Neotree for a number of reasons. Mainly because when I use emacs I jump between MANY different projects all the time because emacs is made for managing a ton of different shit without having to create new instance. Unlike most other editors. Especially if you use projectile. And Neotree never had any way of keeping up to date with what ever project was active in the active buffer. And the only way I found to solve it was to kill and start it again. That got old fast when you switch projects hundreds of times a day.

The way treemacs works on the other hand is that you have a similar project explorer on the left. But instead of just being one folder you can add projects to it, so if you can you manage it how ever you like it. It works great, if this is your kind of thing.

I usually don't use it. But sometimes I do. And when I do I love it. Because it is just this thing on the left that keeps up with what ever project the currently active file is a part of.  The one thing I don't like about it is that the default configuration is rather big.


## smartparens {#smartparens}

Smartparens is this crazy emacs package that helps you deal with parens pairs. In programming you have various "stuff" you put arround expressions, in lisps they are mostly (), but also "", '' etc. And in other languages you also have {}, [] etc. Smartparens adds these intelligent commands to work with them. You can move, wrap, unwrap, delete etc. It even has a strict mode that tries to keep you from ending up with code that is unbalanced (more closing or opening than the other)

I can't really git it justice here, check out the [website](https://github.com/Fuco1/smartparens).

This isn't that straightforward to install with use-package, so check out my emacs [config](https://git.sr.ht/~hjertnes/emacs.d) for details. The TLDR is that I install it outside use-package together with use-package and request and then I load it with use-package later.


## neotree {#neotree}

Neotree a emacs package I'm not a huge fan of. It is fine, but I never liked it a lot. It is basically a port of a vim plugin called Nerdtree. If you're looking for a simple show a directly structure file explorer I guess it is fine. But I would recommend looking into [treemacs](/emacs/treemacs)instead, because it is a LOT better.


## golden-ratio {#golden-ratio}

Another package I don't use at the moment because it doesn't work that great together with treemacs, but it is really interesting. The basic idea is that it will automaticly resize according to the golden ratio to make the active one as readable as possible.


## ace-jump {#ace-jump}

Ace jump mode is this weird mode everyone should learn. Mine is set up to trigger on C-c SPC. So the basic idea is that you hit the keyboard command and a character. Then each place that character is you see a character starting from a. Then you hit the character representing where you want to go and wolla. You're there.

It is very simple, and awesome. Also: it seems like most people have it installed.


## yasnippet {#yasnippet}

I used to have my own snippet system implemented as a series of emacs interactive functions. And then I thought about it and started to replace it with something a little bit less hacky. I ended up with yasnippet. It is great, but it has some things I don't like about it.

One of them is that there is no way for me to define a snippet that will be available anywhere. Anyways.

You install the yasnippet package, configure where it should look for snippets and you should also set up some keybindings. There are many different kinds of way to expand them, I use two either I use yas-insert-snippet that give me a dropdown to select from or I use the yas-expand that expands what you just wrote. I have also mapped the yas-next/prev-field commands to be able to use the $1 $2 $3 etc variables. You can basically define places you want input.

The snippets work like this: you make a folder inside the locaiton for your snip for each mode, and then you add a file for each snippet inside them. There is a lot of information about all of this on the yasnippet website. But you can kind of fix this by adding a .yas-parents file; read more about it [here](http://joaotavora.github.io/yasnippet/snippet-organization.html#org7468fa9).


## no-easy-keys {#no-easy-keys}

So, I love this package: no-easy-keys. It is the package that really got me into learning the emacs way of life. The short version is that there are keybindings in emacs that make it work as much as you expect it would from other programs like arrow keys etc. And then you have the emacs way of life. Like like C-b for moving backwards or C-f for forward.

It sounds weird, but it is a lot better once you get used to it.

So there is this package called no-easy-keys that just disable them. It was really useful for me to get all the emacs stuff into my fingers when I started out learning emacs keybindings.

I strongly recommend it if you're starting out learning.


## smex {#smex}

Smex is this little package that gives you one killer feature in the ivy/counsel M-x command: above everything else you see the commands you used last.


## rainbow {#rainbow}

I use two different emacs packages called rainbow-identifiers and rainbow-delimiters to colorize two different things in Emacs to make code more readable.

-   identifiers gives different identifiers like variables, functions or operators different colors so you can easier to distinguish between them and see where something is used.
-   delimiters on the other hands makes sure that deliminers like (), [], {} have different colors. This can be very useful in a number of sitations, especially in lips where you often see a lot of them. And it makes it possible with a glance to identify where an expression starts and ends.


## ident-guide {#ident-guide}

This is another package that makes the act of writing code a **lot** better for me. What ident-guide does is to place visual marker for each ident level when you are coding. It isn't super important, but it is one of those things that make it easier to orient yourself.


## company-mode {#company-mode}

There are many different completion modes for emacs, but I think company mode is one of the major ones. It did at least seem like the standard when I started out. I still use it today, because I can't see that any of the others are any better.

Company is a mode that give you dropdowns that complete works or code as you write. It is very configurable, and can be extended. It has a backend arcitecture that makes it easy to add support for more or less anything. It comes with a few out of the box and other emacs packages or lisp files are free to provider their own.

I have packages installed that does this for Javascript/node, C# and Clojure to mention a few.


## flycheck {#flycheck}

Flycheck is a generic mode for validating the buffer your're working on. It comes with a lot of stuff built in, and you can also install additional ones if you need to. What you use flycheck for is to run some kind of "check" or validation or linter on a buffer to show errors.

It is a great way to show errors as you work, to catch them early instead of ending up like in some projects I have seen out in the wild with 100 000+ warnings that nobody tries to fix.

Note: it can be slow as fuck on windows, especially together with javascript and eslint.


## exec-path-from-shell {#exec-path-from-shell}

There is this awesome emacs package called exec-path-from-shell, it solves some issues you see a lot of on OS X, but I have also seen some of them on Linux in some situations. What it does is that it tries to extract enviornment variables from your default shell and use them in Emacs.

This matters because let's say some emacs mode expect the command foobar to be available, but you have installed in a weird location, and added it to your path in your shell of choice. This packages solves that.


## magit {#magit}

Magit is a git client for emacs. It is really great. It is one of a few git apps I think is good. It just let you do your job, and everything you expect to be there is available without any issues. You should check it out, even if you are one of us git on the command line die hards.


## ox-hugo {#ox-hugo}

OX-hugo is a emacs package that lets you write your website as this large org file or multiple large org files and it exports it all to markdown files that hugo understands how to work with(or you can wrangle it to work with more or less anything that use markdwn frontmatter files like jekyll etc).

All of my sites are powered by it, and I think it is awesome.

The reason I love it is that it takes care of one thing I always thought was a realy pain in the ass with all the static site systems, and that was to name the file in the right way. With ox-hugo I just define it as a property that mostly gets autofilled by yasnippet. I just expand, write and export followed by a git commit and push.


## hl-todo {#hl-todo}

This is another really dumb one that I love a lot. It does something really simple, it highlight TODO commends in code. I think it is really useful because then I fix them as I see them when it is possible to do.


## dired {#dired}

Emacs has a bunch of shit in it that is freaking awesome, and how awesome it is only comes to light as you start see how they work together. Dired is a file manager in emacs. You can start it with C-x d. I use it all the time to do stuff I previously used to do with terminal. Like moving and deleting files.


## tramp {#tramp}

Tramp enables you to do some awesome stuff in emacs. It is a way that enables any part of emacs to do "stuff" through protocols like SSH, or files you don't have access to through su or sudo and even inside docker containers with some third party packages.

I use it all the time together with dired.

More [info](https://www.emacswiki.org/emacs/TrampMode)


## helm {#helm}

Helm is very similar to Ivy. The big difference is that Helm came first, and that Helm is more like you install it and activate a global mode and that's more or less it. It is really great. But I prefer Ivy because its faster and can be customized more.


## undo-tree {#undo-tree}

Undo in emacs are just this ring or long list of changes per buffer. It can be a little bit confusing to understand because a lot of really minor details. The short version is that every time you remove something it is added to the kill ring, and that data can at any point within its configurable limits be brought back.

While I understand how it works, I have never gotten used to it. So I use undo-tree instead. Instead of it just being this list or ringe of changes it breaks it down into a tree. And it even have this visualization thing you run go into, where you can move along the changes and see the buffer update in real time. And let's say you have a buffer with 10 changes, and you go back two changes, and then start to change that, it will branch out from the main one.

You may be fine with the regular kill ring implementation, but undo-tree works a hell of a lot better for me.


## multicursor {#multicursor}

Multiple cursors is a emacs package that gives you the option to use the feature popularized by Sublime Text. It is to instead of using search and replace to search for something and just place a cursor at each place and edit it directly.


## restart-emacs {#restart-emacs}

This is a emacs package I can't live without when I'm changing a lot in my config, because then I restart a lot to make sure it works. It just add a interactive function that restarts emacs.


## aggressive-indent {#aggressive-indent}

Makes emacs ident work more like you expect


## git-gutter {#git-gutter}

Shows git status inline
