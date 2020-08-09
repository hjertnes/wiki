---
title: "A retrospective after my Clojure experiment"
author: ["Eivind Hjertnes"]
draft: false
---

I think Clojure is a great langauge, but too much of it is a mess.

For example. There is not a good system for if a package is regular clojure only or clojurescript only or works with both. And a lot of the time you end up with packages that are a wrapper around for example the native dattime library of either, and not a common sensible abstraction that works on both systems.

Another major problem is how much work it is to figure out how to start a project, install some packages, make something and then build it for production.

Some templates are out dated others are not. Some works others not. And it is far from as easy as with other systems to just make it and use it.

If you compare it to Go, .Net Core or React the three things I have spent the most time on outside Clojure over the last 5 years or so. I have built complex stuff in less time than I managed to do a proper production build of a POC frontend in Clojurescript or a POC rest API with Clojure.

Again. I love the language, and I think it has some great ideas. But for me at this point, it isn't a good fit. Because I'd rather make stuff than to fight tooling and bullshit that should be solved out of te box.
