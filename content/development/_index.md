---
title: "Development"
author: ["Eivind Hjertnes"]
draft: false
---

## Golang inheritance trick {#golang-inheritance-trick}

Golang isn't OOP, but one type can inherit from another, for example to extend it properties. It is for example used to have your own custom context in the router I use called Echo.

The way you usually set properties on types when you do this when TypeB inherit from TypeA is something like &TypeB{typeAValue}. But sometimes you need to specify the properties. Then you need to do it like this &TypeB{TypeA: typeAValue}.

Took me way too long to figure this out,


## Enviornment variables {#enviornment-variables}

A enviornment variable is a variable managed my the OS. It is my favourite way to configure stuff like docker containers etc. The reason it is awesome is that it is way easier to manage than files for stuff that vary in environments. Config files are fine for stuff that are always the fine, but I kind of think it is better to just hardcode it unless you'll actually change it. ]

And the best thing about them is that they work on all languages etc.


## Literate programming using Org-mode and Emacs-lisp {#literate-programming-using-org-mode-and-emacs-lisp}

I decided to get more into literate programming using org-mode. What I will be doing here is to take the first table, run it through the code in the middle to show fail and pass based on if the mark is 50 or higher. Because the way org exporting works, you have to look in the org file this have been generated [from](https://git.sr.ht/~hjertnes/wiki/tree/master/wiki.org) to see everything.

The way this works is that we give the input data the name "students", then this is passed into our emacs lisp code as a list of lists. One list for the row, and it contains a list of the columns. Then the data that function returns show up as a table below.

You can use a bunch of other languages than emacs-lisp like ruby, python, bash or javascript


### Links {#links}

-   <https://orgmode.org/worg/org-contrib/babel/intro.html#source-code-blocks>
-   <https://orgmode.org/manual/Extracting-Source-Code.html#Header-arguments>
-   <https://orgmode.org/manual/Noweb-Reference-Syntax.html#Noweb-Reference-Syntax>
-   <http://cachestocaches.com/2018/6/org-literate-programming/>
-   <https://orgmode.org/worg/org-contrib/babel/how-to-use-Org-Babel-for-R.html>
-   <https://www.offerzen.com/blog/literate-programming-empower-your-writing-with-emacs-org-mode>
-   <https://caiorss.github.io/Emacs-Elisp-Programming/Org-mode-recipes.html>


### Example {#example}

<a id="table--students"></a>

| Name   | Mark |
|--------|------|
| Alice  | 79   |
| Bob    | 19   |
| Claire | 50   |
| Dave   | 49   |
| Eve    | 87   |
| Frank  | 73   |

```emacs-lisp
(mapcar
 (lambda(x)
   (list
    (car x)
    (if (>= (car (cdr x)) 50)
      "Pass"
      "Fail"))) students)
```

| Alice  | Pass |
|--------|------|
| Bob    | Fail |
| Claire | Pass |
| Dave   | Fail |
| Eve    | Pass |
| Frank  | Pass |


## Golang development tools {#golang-development-tools}

Some notes on the tools I use to do golang dev.


### Goland {#goland}

With the 2020.1 release, Goland feels like the better option for Go development. It feels more or less the same level of quality as IntelliJ or Rider.


### Emacs {#emacs}

It works great most of the time, sometimes the autocomplete dies, but that is almost alwasys solved by restarting LSP. And sometimes the source is too screwed up for it to make sense of it.


### VS Code {#vs-code}

Is mostly the same as Emacs. Makes sense since they use the same stuff behind the scenes.


## Notes on ClojureScript Development {#notes-on-clojurescript-development}

Just some notes for myself after spending a great deal of time testing out various things over a few days to see if I can find something in the same ball park as Create React App with Redux.

-   Figwheel Main is awesome. But the default settings are weird
-   Rum and Reagent are interesting. But I have a hard time finding anything else than re-frame that seems like a complete solution
-   Reframe is a lot of stuff"" to understand, but it just works, and like you expect. But I'm not a fan of it because it feels very much like a framework.

TODO:
This is what I should do in order to make ClojureScript work for me

-   Build something that kind of work like React+Redux based on Clojure atoms
-   Build some wrapper arround the router thing to make it less verbose.
-   And it hsould all be based on Reagent, Figwheel-main etc.
-   And this <https://github.com/Lokeh/reagent-context>
-   And this <https://github.com/ghedamat/reagent-react-router>


## Redux like pattern with ClojureScript and Reagent {#redux-like-pattern-with-clojurescript-and-reagent}

Below is a super minimal version of a redux like pattern (if you use combine reducers in redux). If you want a full example of how it works you can see it in use in this [repo](https://github.com/hjertnes/bank2) that I originally wrote it for.

The way it works is that you define a hashmap of reducers, each reducer take state and a action as input, then it either returns the previous state (if the actions isn't something it can do anything about) or a new version of it state. It will always run an action through all of the reducers.

It is written in a way where you decide all the logic yourself. The way I do it is that if you pass it nil default state is returned. First you create the store, then you create the dispatch method; the dispatch is used to send action to the store. The store is a single atom. I'm not sure how well this scales, but my approach is as always to start simple and see where it explodes.

<script src="https://gist.github.com/hjertnes/d1014636cbf508d75846d90b01d4e027.js"></script>


## How I Code {#how-i-code}

This are the tools I use when I code in various languages

-   C#: mostly Emacs, but I do also use Rider when I need a IDE; this usually means that I write in Emacs and run tests and debug in Rider.
-   Node: Emacs, and a little VS Code.
-   Clojure: Emacs, and a tiny bit IntellJ + Cursive.


## Learning C# {#learning-c}

Some C# and .NET resources that I think are great.

-   [Microsoft Docs](https://docs.microsoft.com/en-us/dotnet/core/). I recommend starting here, there are a lot of great guides and information there
-   [Pro C#](https://www.amazon.com/Pro-NET-Core-Andrew-Troelsen/dp/1484230175). A great book for learning more C#. It is a little bit dated, because of the focus on .NET Framework but all the stuff about the C# language is still relevant
-   [This Microsoft book](https://www.amazon.com/Adaptive-Code-principles-Developer-Practices-ebook/dp/B071YC5ML9) about Design Patterns are great, and I recommend all C# developers to read it, and re-reading at least once a year. I learn something new every time I read it.


## Bye Clojure {#bye-clojure}

Over the last 2-3 years I have tried really hard to make Clojure work for me. I love the languages and the ideas. But it does not work for me.

There is always something that makes it really hard. The tooling is good, but not all the way there. It always requires a lot of work to get it to function.

And the ClojureScript setup is a nightmare.

I might come back, but this is it for me for now.


## Hello Golang {#hello-golang}

After I decided to drop Clojure I made a short list of languages to evaluate.

Ruby was the first thing I looked at. But it isn't what I want.

Then I took a look at Golang. And I have decided to continue down this road.

This is what I like about it

-   Good enough tooling
-   A  general attitude in the community towards weirdness and getting shit done.
-   The language is like C but modern and async.

I also love how small and simple the language is.


## EF Core Performance {#ef-core-performance}

Entity Core is a ORM for .NET Core made by Microsoft. In constrast to previous versions of it, the Core version of EF is really great. Yeah, I mean it.

There is two things you need to keep in mind while working with EF

-   One query going on per "request" at a time; in other words, if you loop over some rest and then need to do some queries inside that loop, you need to do a .ToList() or similar before starting the loop.
-   If you a .ToList, ToArray, First or anything like that it will query the database, and if you run SaveChanges or SaveChanges async it will write data to the database. You want to make sure you only query the database as late as possible and that you save the context as infrequent as possible. I usually do it once per API request.


## C# nullability {#c-nullability}

In C# until version 8 reference types could always be null while value types had to be declared as nullable, sometimes.

All of this have been cleaned up in C# with a optional feature called nullable reference types.

It means that any time a value could be null you need to declare it as nullable. And you'll get compiler warnings if you don't deal with the null stuff properly.

I think it is awesome, and it a great way to make null easier to work with.


## Open API Secifictation {#open-api-secifictation}

Swagger or OpenAPISpecification is the way to specs or documentation for Restful web services.

You can write the spec first, and then generate interfaces and models from it or you can generate the spec from your code. Both ways are fine.

I think all web services should use Open API Sepcs. Becase you can auto generate client code and all kinds of cool stuff.

Let's say you write an API, and then you're going to write a web app, an iOS app and maybe some android thing later.

With an OpenAPI spec you could autogenerate the clients for all of them, and move on to focusing on making the apps instead of writing HttpClient code.


## Don't null {#don-t-null}

Don't return null and infer behaviour from that. Like if this returns null then it did not exist or the auth failed etc.

You should either throw exceptions for this or return null values (if you use something where that is the native thing, like in Go).

These kinds of stuff should be explicit because it leads to better code that are easier to change and extend.

Don't return null (or just null in golangs case) and don't ever pass it to a function.


## Golang complaints {#golang-complaints}

I have written a bunch of go code at this point. And there is obviously some stuff I'm not happy with.

First of all, I miss methods like .map, .filter, .reduce and the rest from JavaScript (or similar in C#).

The other thing I miss is better code coverage reports. The HTML is fine, but I miss better stuff.

Golang is awesome though.  These things are really minor.


## Makefiles and similar {#makefiles-and-similar}

Both makefils and npm to a lesser degree let you declare tasks that are commonly done to a software project. Like "run", "clean", "build" or "lint".

I think they are awesome, because "npm run lint" or "make lint" is possible to remember after seeing it once, while npx eslint --fix "some blob of patterns of files to include" is not.

I personally prefer make files to the package.json format for a number of reasons. For one it is a old and well known standard way of doing things, it is a lot more flexible in terms of writing the tasks. And it works on more or less anything.


## A retrospective after my Clojure experiment {#a-retrospective-after-my-clojure-experiment}

I think Clojure is a great langauge, but too much of it is a mess.

For example. There is not a good system for if a package is regular clojure only or clojurescript only or works with both. And a lot of the time you end up with packages that are a wrapper around for example the native dattime library of either, and not a common sensible abstraction that works on both systems.

Another major problem is how much work it is to figure out how to start a project, install some packages, make something and then build it for production.

Some templates are out dated others are not. Some works others not. And it is far from as easy as with other systems to just make it and use it.

If you compare it to Go, .Net Core or React the three things I have spent the most time on outside Clojure over the last 5 years or so. I have built complex stuff in less time than I managed to do a proper production build of a POC frontend in Clojurescript or a POC rest API with Clojure.

Again. I love the language, and I think it has some great ideas. But for me at this point, it isn't a good fit. Because I'd rather make stuff than to fight tooling and bullshit that should be solved out of te box.


## Svelte {#svelte}

-   Will spell it as svetle until end of time
-   Sapper is awesome
-   I like how lightweight it is
-   Miss a when props change lifecycle method
