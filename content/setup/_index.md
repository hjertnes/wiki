---
title: "Setup"
author: ["Eivind Hjertnes"]
draft: false
---

## About {#about}

About how some of my stuff are configured.


## Browser {#browser}

My current browser setup is Firefox everywhere, except my iPhone where I'm on Safari.

This is my setup.

Extentions:

-   1Password X. I use it instead of the regular because it works everywhere including Linux
-   HTTPS Everywhere: Use SSL when available
-   Instapaper.
-   React Developer Tools
-   Redux DevTools
-   uBlock Origin

Various other settings:

-   Syncing settings and extentions
-   Delete cookies on restart
-   Strict tracker settings

Themes:

-   I use a custom one that I change way too often


## How I website {#how-i-website}

I have used many different content management systems in the past, Wordpress on and off since 2003, Squarspace, Jekyll, Hugo and many more. This is what I currently use:

-   All my sites are hugo sites.
-   And I use ox hugo to generate frontmatter markdown from a org file.


## My link sharing workflow {#my-link-sharing-workflow}

All links I see online I want to read or check out are sent to Instapaper. Then at some later point I read it, and mark it with a "like" if this is something I want to share and add it to drafts(and later OmniFocus) if I want to do something with it like buy it or learn it etc. I share up to 50 likes every friday, so I have this constant flow of stuff.

This is how I do it, and it is not a pretty workflow because I have no access to the Instapaper API

My likes that have not been shared yet are stored in a list of links in a file named likes.org, when there are less than 50 lines in it I do the following

-   I download a CSV export from Instapaper
-   I run [this](https://git.sr.ht/~hjertnes/instapaper2org) go program and paste the output into my org document
-   I run a M-x command to sort the lines and remove duplicates
-   Then I go into the instapaper website, click likes and run the javascript snippet below until all likes are removed

<!--listend-->

```javascript
Object.values($(".action_link.star_toggle.starred")).map(x => $.get(x.href).then(y => {}))
```


## Text Editor Fonts {#text-editor-fonts}

These are my goto text editor fonts, that I actually stick with in the long term.


### JetBrains Mono {#jetbrains-mono}


### Source Code Pro {#source-code-pro}

Source Code Pro was my go to, with a few others in between since I started to use a non default font in 2017. And I have now used the JetBrains font since it came out.


## Text Editor Themes {#text-editor-themes}


### Dracula {#dracula}


### Solarized Dark {#solarized-dark}


### Afternoon (current) {#afternoon--current}


## Window Management on OSX {#window-management-on-osx}

I think Window Management on OS X are very much optimized for how most people use a computer, either full screen or piled on top of each other. The default window sized are mostly good for people who don't care that much. And if you take into consideration that most people have a 13" MacBook of some sort and the kind of resoution it has from factory I think it is fine.

But that is not me. Or that is how I do it when I use the built in screen.

I use moom, I have tried counless alternatives but moom works the best for me. You can do a lot with Moom. My use of it is very simple, I use the five default size optionsm, and I have added four more (resizing it to 1/4 of the screen).

If I use my MacBook as a laptop I either use the entire screen of a space or I run it in fullscreen mode. And if I'm using my 27" 4K screen I resize most apps most of the time to use 1/4 of the screen. sometimes I use Goland in fullscreen, but that is rare.

Moom makes this resize process really fast, I just hover click click on each window and the whole process is over in seconds per space.


## Tmux {#tmux}

This is something I should have gotten into YEARS ago. And I have tried before.

Config: <https://git.sr.ht/~hjertnes/DotFiles/tree/master/tmux.conf>

Prefix key: C-b


### Window {#window}

-   Next / Prev Window:  /
-   Next: C-b n
-   Prev: C-b p


### Pane {#pane}

-   Change pane: arrows
-   Split vertically: C-b %
-   Split horizontally: C-b "


### Copy mode {#copy-mode}

-   Enter: C-b [
-   Exit: Esc
-   Copy: C-w
-   Copy: C-b [


## Firefox {#firefox}

I use Firefox because I believe in a free internet.


### Setup: {#setup}

-   I use the built in settings sync stuff
-   Restore Previous Session
-   Homepage: <https://home.hjertnes.blog/>
-   Use the Chrome style layout (one input field)
-   DuckDuckGo instead of Google
-   Strict Privacy Settings


### Extentions {#extentions}

-   1Password X
-   Copy as markdown
-   Firefox Color
-   HTTP Everywhere
-   Instapaper
-   React DevTools
-   Redux DevTools
-   uBlock Origin
