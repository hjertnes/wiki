---
title: "Emacs"
author: ["Eivind Hjertnes"]
draft: false
---

## Built-in modes I use {#built-in-modes-i-use}

I'm not going to sum it all up here, but look [here](https://github.com/hjertnes/emacs.d/blob/master/lisp/pre-modes.el) for all the modes that come with emacs I have enabled, with some short comments.


## Cheatsheet {#cheatsheet}

This is mostly for me, but this is a growing list of keyboard shortcusts for Emacs. Some because I never recommend them others because others might find them useful.

M=meta/alt, C=control, S=super/windows/cmd, SPC=space.

-   C-x C-s: save
-   C-x s: save as
-   C-x C-f: open file
-   C-x h: mark entire buffer
-   C-x C-b: list buffers
-   C-x b: select buffer
-   Note: I have both(C-x b and C-x C-b) bound to ivy-switch-buffer on my system.
-   C-g: cancel what ever you're doing
-   M-x: run interactive command
-   M-m: first non whitespace character on a line
-   C-x [: page up
-   C-x ]: page down


## Coming to Emacs 27 {#coming-to-emacs-27}

Did a "live blog" as I was reading the [news file](https://github.com/emacs-mirror/emacs/blob/master/etc/NEWS.27) yesterday. In my [twtxt](https://hjertnes.social/twtxt.txt).

Here is a more blog posty version, and a little bit longer version of that. Aka a summary of some of the stuff I saw in Emacs 27 that I really look forward to.


### make-empty-file {#make-empty-file}

There is a new elisp-function called make-empty-file that makes it really easy to make a empty file. This will be really useful for a lot of people for a bunch of stuff. For me it will make my emacs config more resillient. There are two files in my emacs config that isn't a part of the git repo (because they are local to that system, and should not be shared) that I today need to manually create for it to work. (personal.el for overriding config on that machine, and custom.el)


### jsx support {#jsx-support}

This will make react development and web dev that use a similar HTML and JavaScript at the same time syntax much better in Emacs.


### Tabs! {#tabs}

There is two kinds, one for having multiple window setups, and one more like regular tabs where it is a bunch of buffers in a tab-bar.


### ISO 8601 date parsing {#iso-8601-date-parsing}

There is a new package making is much easier to parse ISO 8601 stuff.


## Elfeed {#elfeed}

I started to use elfeed as an experiment, because I was very much not sure about it. But I'm going to continue with it because I really like how easy it is to manage everything. And it have gotten me out of the "can't miss a post" phase. me a double. And I usually give 5 or 6 pages to the daily log collection at a time.

This system is a lot more work than something like OmniFocus would be. But the work gives me a lot of natural opertunities to review things and it is easy to experiment and figure out what stuff works and does not. And my favourite thing about it is that it works for me.

And I get to use a lot of notebooks and pens all the time.


## Emacs {#emacs}

Emacs is my go to editor these days, and have been for a couple of years at this point. I don't really imagine going to back to anything else at this point. I started out using Spacemacs with evil, before I finally moved over to Doom and then after a while ended up rolling my own configuration. And then finally I ditched evil and started learning proper emacs keybinding one year into it. My personal configuration is on [Github](https://git.sr.ht/~hjertnes/emacs.d). It contains some basic information, and I change it a lot. If I see something cool I add it, and if I don't use it I just remove it.

I have added some pages with information about emacs packages, but my goal is that I add a page about all the packages I use in time. If you want a place to start look at my list of starter [projects](/emacs/starters). All the emacs related pages on this wiki start with Emacs:. And all of them should also be tagged with Emacs and be in this [list](/tags/emacs) or if you just want the [packages](/tags/emacspackage)


## Emacs Config as a org document. {#emacs-config-as-a-org-document-dot}

Emacs configurations can be really strange, and unlike a lot of other config files they can contain hundreds if not thousands of lines of comments and code.

Org have something called org-babel that let you extract code from org documents. This enable you to write your config as a org document.

The reason you might want to do this is because it enables you to focus more on commenting and writing how and why for everything in your configuration.

I did it a while back (and have a starter repo for you here) and I think my config is a hell of a lot better for it.


## Emacs for everything {#emacs-for-everything}

A lot of emacs users have an urge to use emacs for almost anything. And I'm one of them. If I'm going to type more than a little, I want it to be inside Emacs because I'm really good at manage it and everything inside it. It have slowly been adjusted to work as close to how I want it to be as possible.

This is my strategy for making it possible:

-   Almost everything in my life is folders and files, most of them managed by Git repos.
-   If I'm going to type I do it in emacs
-   If something like running unit tests or debugging or showing code coverage is easier or better in a IDE I write the code in Emacs and do the other stuff in the IDE
-   When I see something, and I know it isn't compatible with emacs I always think long and hard about if it is worth it (both sides of it), and usually end up using a less fancy version that works with emacs.

To do everyhting in Emacs is in a lot of cases worse, but it makes my life a lot saner to do it this way.


## Emacs memory usage {#emacs-memory-usage}

Emacs has a garbadge collector. The way it works is that every time some threshold is crossed it tries to free up memory. The higher this number is the less often it runs, and the more stuff it has to check per time.

Over the time I have used emacs I have tried both default, low, high and very high. And I currently keep mine at 25% of my total system memory. And when I see it reching that point I restart it.

My recommendation however is not a direct reflection of my own setup. I would start with the default settings. This results in slower startup and that things take more time when you install a lot of packages etc. But my experience is that the GC process will bother you less.

But if you see that you hit the threshold much faster than you'd like to restart emacs. I'd increase it.

For me it is not a problem to give emacs 2GB and just restart when I reach that once a week or so.


## Emacs packages {#emacs-packages}


### Ace-window {#ace-window}

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


### projectile {#projectile}

Projectile is a emacs package for juggling multiple projects in emacs. Think of a project as a git repository. You configure it to search for new project in a path; on my systems it is in ~/Code, and then you give it a shortcut; mine i M-p. Then you can for example git M-p p to switch project or M-p SPC to search for a file in the current project. Projectile can do a lot of other stuff as well, and there are many different other stuff that integrate into it.


### ivy {#ivy}

If you know what Helm is, you also know what Ivy is: it is more or less the same thing. Except that helm is much more complete, while ivy is smaller and faster. Ivy is a incremental completion library. If you type C-x C-f to open a file or M-x to run a command in stock emacs you get some tab completion but that's it, or if you type C-x C-b you just get a list of buffers and that's it.

When you set up something like Ivy you can get a much nicer version of them. When I type C-x C-f I get a list of all the files and folders in the current directory and a box to type it in. If I type M-x I first get a list of the most recent commands I have used, and auto completion as I type stuff. And if I type C-x C-b I can search in all the open and recent buffers.

Note, the part of Ivy I'm talking about here is actually called Counsel.


### counsel-projectile {#counsel-projectile}

If you're a projectile user and a ivy / counsel user. You probably also want to use counsel for projectile stuff. This package enable just that; if you type M-p p with it on you get a ivy version of.


### deft {#deft}

I'm not using this at the moment, but I have used it a lot in the past. Deft is a emacs package that adds functionality that is more or less like nvAlt. For those who don't know what that is:

-   An app that use a folder of text files as their database
-   One note per file
-   You have a search field, list of notes and a content area
-   As you type into the search area the list of notes are filtered
-   When you hit enter you either open the selected note or create a new one with the current search as filename if none matches exist.

Most of my notes these days are larger org files instead of a lot of tiny text files. But if this is your thing I recommend checking it out. But you should also look at the [website](https://jblevins.org/projects/deft/) because there are a lot of information about how to configure it there.


### treemacs {#treemacs}

Treemacs is a emacs package that adds this interesting file browser view on the left of your emacs frame. Kind of like how you get with neotree or what you have in Visual Studio Code or Sublime Text or most other editors.

I was never a fan of Neotree for a number of reasons. Mainly because when I use emacs I jump between MANY different projects all the time because emacs is made for managing a ton of different shit without having to create new instance. Unlike most other editors. Especially if you use projectile. And Neotree never had any way of keeping up to date with what ever project was active in the active buffer. And the only way I found to solve it was to kill and start it again. That got old fast when you switch projects hundreds of times a day.

The way treemacs works on the other hand is that you have a similar project explorer on the left. But instead of just being one folder you can add projects to it, so if you can you manage it how ever you like it. It works great, if this is your kind of thing.

I usually don't use it. But sometimes I do. And when I do I love it. Because it is just this thing on the left that keeps up with what ever project the currently active file is a part of.  The one thing I don't like about it is that the default configuration is rather big.


### smartparens {#smartparens}

Smartparens is this crazy emacs package that helps you deal with parens pairs. In programming you have various "stuff" you put arround expressions, in lisps they are mostly (), but also "", '' etc. And in other languages you also have {}, [] etc. Smartparens adds these intelligent commands to work with them. You can move, wrap, unwrap, delete etc. It even has a strict mode that tries to keep you from ending up with code that is unbalanced (more closing or opening than the other)

I can't really git it justice here, check out the [website](https://github.com/Fuco1/smartparens).

This isn't that straightforward to install with use-package, so check out my emacs [config](https://git.sr.ht/~hjertnes/emacs.d) for details. The TLDR is that I install it outside use-package together with use-package and request and then I load it with use-package later.


### neotree {#neotree}

Neotree a emacs package I'm not a huge fan of. It is fine, but I never liked it a lot. It is basically a port of a vim plugin called Nerdtree. If you're looking for a simple show a directly structure file explorer I guess it is fine. But I would recommend looking into [treemacs](/emacs/treemacs)instead, because it is a LOT better.


### golden-ratio {#golden-ratio}

Another package I don't use at the moment because it doesn't work that great together with treemacs, but it is really interesting. The basic idea is that it will automaticly resize according to the golden ratio to make the active one as readable as possible.


### ace-jump {#ace-jump}

Ace jump mode is this weird mode everyone should learn. Mine is set up to trigger on C-c SPC. So the basic idea is that you hit the keyboard command and a character. Then each place that character is you see a character starting from a. Then you hit the character representing where you want to go and wolla. You're there.

It is very simple, and awesome. Also: it seems like most people have it installed.


### yasnippet {#yasnippet}

I used to have my own snippet system implemented as a series of emacs interactive functions. And then I thought about it and started to replace it with something a little bit less hacky. I ended up with yasnippet. It is great, but it has some things I don't like about it.

One of them is that there is no way for me to define a snippet that will be available anywhere. Anyways.

You install the yasnippet package, configure where it should look for snippets and you should also set up some keybindings. There are many different kinds of way to expand them, I use two either I use yas-insert-snippet that give me a dropdown to select from or I use the yas-expand that expands what you just wrote. I have also mapped the yas-next/prev-field commands to be able to use the $1 $2 $3 etc variables. You can basically define places you want input.

The snippets work like this: you make a folder inside the locaiton for your snip for each mode, and then you add a file for each snippet inside them. There is a lot of information about all of this on the yasnippet website. But you can kind of fix this by adding a .yas-parents file; read more about it [here](http://joaotavora.github.io/yasnippet/snippet-organization.html#org7468fa9).


### no-easy-keys {#no-easy-keys}

So, I love this package: no-easy-keys. It is the package that really got me into learning the emacs way of life. The short version is that there are keybindings in emacs that make it work as much as you expect it would from other programs like arrow keys etc. And then you have the emacs way of life. Like like C-b for moving backwards or C-f for forward.

It sounds weird, but it is a lot better once you get used to it.

So there is this package called no-easy-keys that just disable them. It was really useful for me to get all the emacs stuff into my fingers when I started out learning emacs keybindings.

I strongly recommend it if you're starting out learning.


### smex {#smex}

Smex is this little package that gives you one killer feature in the ivy/counsel M-x command: above everything else you see the commands you used last.


### rainbow {#rainbow}

I use two different emacs packages called rainbow-identifiers and rainbow-delimiters to colorize two different things in Emacs to make code more readable.

-   identifiers gives different identifiers like variables, functions or operators different colors so you can easier to distinguish between them and see where something is used.
-   delimiters on the other hands makes sure that deliminers like (), [], {} have different colors. This can be very useful in a number of sitations, especially in lips where you often see a lot of them. And it makes it possible with a glance to identify where an expression starts and ends.


### ident-guide {#ident-guide}

This is another package that makes the act of writing code a **lot** better for me. What ident-guide does is to place visual marker for each ident level when you are coding. It isn't super important, but it is one of those things that make it easier to orient yourself.


### company-mode {#company-mode}

There are many different completion modes for emacs, but I think company mode is one of the major ones. It did at least seem like the standard when I started out. I still use it today, because I can't see that any of the others are any better.

Company is a mode that give you dropdowns that complete works or code as you write. It is very configurable, and can be extended. It has a backend arcitecture that makes it easy to add support for more or less anything. It comes with a few out of the box and other emacs packages or lisp files are free to provider their own.

I have packages installed that does this for Javascript/node, C# and Clojure to mention a few.


### flycheck {#flycheck}

Flycheck is a generic mode for validating the buffer your're working on. It comes with a lot of stuff built in, and you can also install additional ones if you need to. What you use flycheck for is to run some kind of "check" or validation or linter on a buffer to show errors.

It is a great way to show errors as you work, to catch them early instead of ending up like in some projects I have seen out in the wild with 100 000+ warnings that nobody tries to fix.

Note: it can be slow as fuck on windows, especially together with javascript and eslint.


### exec-path-from-shell {#exec-path-from-shell}

There is this awesome emacs package called exec-path-from-shell, it solves some issues you see a lot of on OS X, but I have also seen some of them on Linux in some situations. What it does is that it tries to extract enviornment variables from your default shell and use them in Emacs.

This matters because let's say some emacs mode expect the command foobar to be available, but you have installed in a weird location, and added it to your path in your shell of choice. This packages solves that.


### magit {#magit}

Magit is a git client for emacs. It is really great. It is one of a few git apps I think is good. It just let you do your job, and everything you expect to be there is available without any issues. You should check it out, even if you are one of us git on the command line die hards.


### ox-hugo {#ox-hugo}

OX-hugo is a emacs package that lets you write your website as this large org file or multiple large org files and it exports it all to markdown files that hugo understands how to work with(or you can wrangle it to work with more or less anything that use markdwn frontmatter files like jekyll etc).

All of my sites are powered by it, and I think it is awesome.

The reason I love it is that it takes care of one thing I always thought was a realy pain in the ass with all the static site systems, and that was to name the file in the right way. With ox-hugo I just define it as a property that mostly gets autofilled by yasnippet. I just expand, write and export followed by a git commit and push.


### hl-todo {#hl-todo}

This is another really dumb one that I love a lot. It does something really simple, it highlight TODO commends in code. I think it is really useful because then I fix them as I see them when it is possible to do.


### dired {#dired}

Emacs has a bunch of shit in it that is freaking awesome, and how awesome it is only comes to light as you start see how they work together. Dired is a file manager in emacs. You can start it with C-x d. I use it all the time to do stuff I previously used to do with terminal. Like moving and deleting files.


### tramp {#tramp}

Tramp enables you to do some awesome stuff in emacs. It is a way that enables any part of emacs to do "stuff" through protocols like SSH, or files you don't have access to through su or sudo and even inside docker containers with some third party packages.

I use it all the time together with dired.

More [info](https://www.emacswiki.org/emacs/TrampMode)


### helm {#helm}

Helm is very similar to Ivy. The big difference is that Helm came first, and that Helm is more like you install it and activate a global mode and that's more or less it. It is really great. But I prefer Ivy because its faster and can be customized more.


### undo-tree {#undo-tree}

Undo in emacs are just this ring or long list of changes per buffer. It can be a little bit confusing to understand because a lot of really minor details. The short version is that every time you remove something it is added to the kill ring, and that data can at any point within its configurable limits be brought back.

While I understand how it works, I have never gotten used to it. So I use undo-tree instead. Instead of it just being this list or ringe of changes it breaks it down into a tree. And it even have this visualization thing you run go into, where you can move along the changes and see the buffer update in real time. And let's say you have a buffer with 10 changes, and you go back two changes, and then start to change that, it will branch out from the main one.

You may be fine with the regular kill ring implementation, but undo-tree works a hell of a lot better for me.


### multicursor {#multicursor}

Multiple cursors is a emacs package that gives you the option to use the feature popularized by Sublime Text. It is to instead of using search and replace to search for something and just place a cursor at each place and edit it directly.


### restart-emacs {#restart-emacs}

This is a emacs package I can't live without when I'm changing a lot in my config, because then I restart a lot to make sure it works. It just add a interactive function that restarts emacs.


### aggressive-indent {#aggressive-indent}

Makes emacs ident work more like you expect


### git-gutter {#git-gutter}

Shows git status inline


## Emacsclient {#emacsclient}

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


## Escape rope {#escape-rope}

So you have gotten yourself into a weird command and you have no idea how and what will blow up if you continue. I get into it all the time.

In emacs you can git C-g anywhere to cancel what ever you're in the middle of. I use it hundred times a day.


## Getting started {#getting-started}

A super short getting started with emacs guide.

If you're just starting out, I strongly recommend to pick a [starter](/emacs/starters). Unless you have a good reason for doing so, I recommend using the emacs keybindings. I didn't start there, but I think it is the only way to really get emacs.

Then I recommend not doing a lot yet, just get to know how to move around and get some work done. After you're more comfortable I recommend learning how to configure emacs, not from scratch but learn how to install packages and configure them from your starter.

If you are using emacs keybindings I also recommend you to install no-easy-keys. It is the easiest way to get used to emacs keybindings as fast as possible.

At some point you probably get the urge to roll your own config. I have a really good super minimal starter for that. It is what I have based my config on. Or it was a result of my config. If you look at spacemacs or prelude or any other fancy emacs configuration system it is just packages that are set up in a particular way plus a system to handle their weird config stuff. That's it

You just need to figure out how to include the right packages to get the same s.


## Helm and ivy {#helm-and-ivy}

Helm and ivy are two very popular emacs packages, that for the most part does the same thing. They provide partical completion / search stuff. Like for example when you tyype M-x. Helm is bigger, heavier and slower. But it works out of the box, and the initial setup is much easier. Ivy on the other hand feels much faster, but requires more config. Most people probably start with Helm. I used it for a long time, but once I got into it and figured out the config I greatly prefer Ivy because of how snappy it is


## How does one even start with Emacs? {#how-does-one-even-start-with-emacs}

This is a question I have wondered a lot about recently.

One way is to start with Spacemacs or Prelude or some of the other starter packs or systems. The other is to just start with a more or less empty init.el and build from there.

There are good things about either strategy. If you go with the former you probably have everything you need working within an hour. The bad thing about it is that everything looks more complicated than it is and you learn way less.

I started with Spacemacs and slowly ended up with my custom init.el file that I am way happier with than I ever were with Spacemacs, Doom or any other system.

I recommend just starting with a init.el file where the basic package management and use package have been set up and start from there. If yo have the time. But if this seems like a stopper and something that will keep you from going for it I recommend going for a starter project.


## Installing packages when use-package won't work {#installing-packages-when-use-package-won-t-work}

When you use something like (use-package foobar :ensure t) it only works if the package you want to load and the name of it on the melpa or what ever is the same. And while that is the case most of the time, it isn't always. Or somethimes you just want to install something before everything else.

I have three packages in my emacs configuration that is installed outside use-package for various reasons. There are some ways to get around it, either by nesting things. All of them are messy, and all of them sucks.

You can see both ways in my personal emacs [config](https://git.sr.ht/~hjertnes/emacs.d). Sometimes I install them in my package manager module using the built in package-install command. And other times I first run a (use-package) to install the package and then I require what I want or need to load inside its :config. I don't have a lot of packages like this but there is a small handful.

I do the nesting with smartparens, while I install org-plus-contrib, request and use-package in my package-manager module. The reason I do that is for different reasons. Use-package because it have to be there before I use it, request because it makes things simpler and org-plus-contrib because it is the only good way to do it. I could nest it, but I hate it as much.


## Interactive functions {#interactive-functions}

In emacs you have two kinds of functions, you have a function, it can be called from other functions and you have a interactive function. A interactive functions can be called from other functions and from M-x. A regular function looks something like this (defun hello-world() "Hello World" (message "Hello World!)) where the form is the name followed by a list of arguments (in this case a empty list) a documentation string and the body of the function.

A interactive function looks almost the same. (defun hello-world() "Hello World" (interactive)(message "Hello World!)). The only difference is the call to interactive between the doc string and the body.

On the surface interactive enables you to call functions from M-x. But that is kind of just the surface of what it can do. You can also give it a string argument with all kinds of [codes](https://www.gnu.org/software/emacs/manual/html%5Fnode/elisp/Interactive-Codes.html#Interactive-Codes) ([<https://www.gnu.org/software/emacs/manual/html%5Fnode/elisp/Interactive-Examples.html#Interactive-Examples>][examples]), that examples you do also capture input before invoking the function.


## Learning emacs {#learning-emacs}

Learning emacs will be a life long project, or at least for as long as you continue to use it. Before we continue, if you want to do anything with emacs other than how it comes out of the box will require you to write some Emacs lisp. And while emacs is great out of the box, the true power comes from making it the best possible for you and your needs.

-   Read [this](https://www.gnu.org/software/emacs/tour/). It is a gentle introduction.
-   After that I recommend reading the [introduction to emacs lisp](https://www.gnu.org/software/emacs/manual/html%5Fnode/eintr/index.html).
-   When you have all of that I recommend that you find a good emacs cheet sheet like [this](https://www.gnu.org/software/emacs/refcards/index.html), and start using it. Google is your friend. Install a million packages and learn why it's not a great idea.

When you are more familiar with emacs I strongly recommend that you read [Mastering emacs](https://www.masteringemacs.org/), I have read it many times and it is awesome for learning emacs but also understanding it. I first read it in the hostpital after removing my appendix.

And every serious emacs user or addict or whatever we are calling ourselves will read the [Manual](https://www.gnu.org/software/emacs/manual/html%5Fnode/emacs/index.html) at some point. You can also get a meat space [version](https://shop.fsf.org/books/gnu-emacs-manual-18th-edition-v-261).

I'm going to get one of them, but there are a few books from there I want to get (the emacs manual, the elisp manual and Stallman's books) but when I go there to check at least one of them have been out of stock.

And I'm always happy to answer questions about emacs at [Micro.blog](https://micro.blog/hjertnes).


## Lisp: let and let\* {#lisp-let-and-let}

Let is probably the feature of lisp that I miss the most in other languages. A let is how you define local variables in a lisp. It is a function that takes two arguments, the first is a list of two element lists and the second is the code where the variables are available. And the first is a list of lists, where the inner list has two elements the variable name and then the expression or value to assign to the value.

They are weird in the start, but you learn to love them when you start to write a lot of lisps.

Now, if you are used to Clojure, then a assignment in a let expression can reference variables defined earlier in the same let expression. This is not possible in let in emacs, but it is in let\*.


## M-x: the true power of Emacs. {#m-x-the-true-power-of-emacs-dot}

Anyone who has used emacs seriously must aknowledge its imense power. The place most users see this is in the M-x command. Everything you do in emacs is a lisp function, and some of these functions are so called "interactive" functions. This means that they can be invoked from M-x.

If something is a keyboard shortcut, it will amost always also be available from M-x. When I don't remember how to do something or don't know how to do something I start searching M-x.

This is where you see the immense power of Emacs. And when you understand that you could in a few seconds write a lisp function, and evaulate it and have it avilable in M-x you see the insane flexibility of it.


## Manuals and modern book formats {#manuals-and-modern-book-formats}

I do not understand why, but for some weird reason none of the GNU manuals that I have been reading are available in ePub or anything like it. They're available as HTML in various forms and PDF. But some times you want to read it on your iPhone, iPad or a ebook reader like a Kindle.

This have been something of a pain point for me for a long time. So I have tried countless different ways to deal with it. The only way I know about that works to do this on all of them, because of their size is the following:

-   Download the PDF's
-   Install Calibre
-   Add the PDF's
-   Convert them ot your device
-   Send them to the device either over USB or for iOS devices you could add it from a Mac and sync it over iCloud.


## Modes {#modes}

Emacs has two kinds of modes major and minor.

A major mode is like c-mode, org-mode or text-mode. It can probably me something other than text editing. But in general a major mode is what you use to edit a a file of a given format. For example python-mode is a mode you can use to edit python files, and it has functionality that makes that easier and better. You can only have one major mode active at a time.

A minor mode on the other hand add some kind of functionality. Company is a minor mode, yasnippet is a minormode, projectile is a minor mode. You can have as many minor modes active as you want.


## Org-mode visibility {#org-mode-visibility}

```emacs-lisp
#+STARTUP: overview
#+STARTUP: content
#+STARTUP: showall
#+STARTUP: showeverything
```


## OSX {#osx}

Just a super short list of things I have done to make using Emacs under OSX better

-   [exec-path-from-shell](https://github.com/purcell/exec-path-from-shell) makes sure emacs inherits path from your shell.
-   (when (eq system-type 'darwin) (setq mac-right-option-modifier 'none mac-right-command-modifier 'none)) this makes sure that the right option and command keys on your keyboard isn't handled by Emacs. This enables you to access certain symbols that are under cmd and cmd+option combos on OSX
-   I use [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus) with all the options enabled, becuase i prefer that, the regular emacs cask is the recommended method. I don't do that because I prefer having mailtuils being a part of emacs because of mu4e.


## Shells {#shells}

Shells in Emacs is a little bit weird for a number of reasons, most of them has to do with that when you're in a shell that shell might capture a some keyboard input you expected emacs to do and the other way arround. The way it usually works is that it is just passed on to emacs if the shell doesn't do something with it.

If you want to use a regular shell, like zsh or fish, use M-x ansi-term. I don't recommend this. But if you want to this is the best option.

What I use most of the time, except for with stuff I know doesn't work or work that great there is to use eshell. It is not a shell like zsh or fish, but rather a shell implemented in eshell. It is well integrated into emacs and most stuff works like you exepect them to.

This is how I shell in emacs:

-   I don't use it as my shell; but rather when I just need to run a few commands.
-   Most of the time i use eshell, I also have a command defined from [here](https://www.emacswiki.org/emacs/EshellMultipleEshellBuffers) called eshell-new to make it easy to create new eshells, because eshell just send you to the first one if it exist.


## Starters {#starters}

-   I have made one based on my own setup <https://git.sr.ht/~hjertnes/emacs-starter>
-   <http://spacemacs.org/>
-   <https://github.com/hlissner/doom-emacs>
-   <https://github.com/purcell/emacs.d>
-   <https://github.com/bbatsov/prelude>

I use once of them (the first), I have previously used spacemacs and doom for a significant amount of time. I recommend picking one of the last four if you're just starting out, use doom or spacemacs if you want vim like keybindings or prelude or purcell's emacs.d if you want default ones. Other than that the four are similar. I think my personal setup is a great place to start if you want to build something from scratch.


## The packages metnioned here {#the-packages-metnioned-here}

I have written about a lot emacs packages on this wiki. They are not the packages I myself currently use. My setup change almost daily, as I try to adjust things and remove stuff I don't use, re-add it, replacing it with something else etc. But all of the stuff I have mentioned here have at some point been in my config. And they are here as a reference for me and others. As a explaination of what they do etc.


## Themes {#themes}

A list of the emacs themes I have in my config, and could uncommend and use.

-   nimbus-theme
-   afternoon-theme
-   solarized-theme
-   dracula-theme

My current theme of choice is solarized-dark.


## Understanding it {#understanding-it}

This is intended as a short introduction into some of the core concepts of emacs. If you want a deeper dive I recommend [Mastering Emacs](https://www.masteringemacs.org/), it's a great book I've read many times.

A lot of terminology in emacs is a little bit weird, and crash with what the rest of the world calls it. The reason for this is that Emacs started in the 70s before this terminology existed.

-   Frame: what everyone else calls a window
-   Window: a frame is divded into one or more windows.
-   Buffer: everything that is visible in emacs is a buffer, it can be a file or something interactive like a Git app or just some text that isn't saved yet.

The emacs window layout is very confusing in the beginning, this is because lisp functions you call may change it. In most other editors it is something a little bit more fixed. This is very powerful because a command can set up the layout to be taylored to something you're going to do and then close it when you're done. This is for it is when you open magit, commit some stuff and then you quit it.

Another thing you should understand about emacs is that buffers and windows are not one to one. Let's say you are working on a big C# class. For example with some properties on the top, a bunch of contructors in the middle and some private validation methods on the bottom. This is by the way not how I would write it. I would make the properties as a class, then a builder class instead of the constructors and then a seperate validation class. What you could do in emacs, and I do it a lot, is to show the same buffer in multiple windows. To avoid having to jump up and down all the time.


## Updating Packages {#updating-packages}

How to upgrade emacs packages

1.  M-x package-refresh-contents
2.  M-x list-packages
3.  Type U to mark all available upgrades for installation. Then type X to install them.


## When Emacs gets confused about packages {#when-emacs-gets-confused-about-packages}

So, you have your typical emacs installation with a few or a lot of packages installed. It all works fine, then you add another one and you get a shit load of errors, about some package version not exisitng or something.

The simple solution to this problem is to delete the elpa folder in your .emacs.d and restart emacs. This will force emacs to (if everything is set up correctly) to refresh the package lists (when you run the package-refresh-contents command it stores a local copy of the list of packages on each package mirror you have in your config), then it will install everything you have told it to install.

If you don't want to do that, or you manually install packages instead of doing it in your config (bad idea), then doing the steps as described [here](/emacs/packages) should fix it.

I usually just nuke elpa and restart because it is faster.


## Why Emacs is a great file manager {#why-emacs-is-a-great-file-manager}

Emacs has a built in file manager called Dired. It is awesome, and can be extended like everything else in Emacs. And it has Tramp.

Tramp is a system where you can work with file systems for example as root, over ssh or inside docker containers.

For how I work with files Tramp is the ideal.


## Why not deft? {#why-not-deft}

Okay. So most of my shit is oriented through different git repositories. And the most important part of that workflow is projectile M-p p to switch project or M-p SPC to search for a file.

Because of this, it is much more natural for me to use projectile than something like deft. And I prefer having a few larger org documents instead of the a million different files concept that deft, roam and more use. It was popularized by notational velocity.
