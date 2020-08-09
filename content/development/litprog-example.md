---
title: "Literate programming using Org-mode and Emacs-lisp"
author: ["Eivind Hjertnes"]
draft: false
---

I decided to get more into literate programming using org-mode. What I will be doing here is to take the first table, run it through the code in the middle to show fail and pass based on if the mark is 50 or higher. Because the way org exporting works, you have to look in the org file this have been generated [from](https://git.sr.ht/~hjertnes/wiki/tree/master/wiki.org) to see everything.

The way this works is that we give the input data the name "students", then this is passed into our emacs lisp code as a list of lists. One list for the row, and it contains a list of the columns. Then the data that function returns show up as a table below.

You can use a bunch of other languages than emacs-lisp like ruby, python, bash or javascript


## Links {#links}

-   <https://orgmode.org/worg/org-contrib/babel/intro.html#source-code-blocks>
-   <https://orgmode.org/manual/Extracting-Source-Code.html#Header-arguments>
-   <https://orgmode.org/manual/Noweb-Reference-Syntax.html#Noweb-Reference-Syntax>
-   <http://cachestocaches.com/2018/6/org-literate-programming/>
-   <https://orgmode.org/worg/org-contrib/babel/how-to-use-Org-Babel-for-R.html>
-   <https://www.offerzen.com/blog/literate-programming-empower-your-writing-with-emacs-org-mode>
-   <https://caiorss.github.io/Emacs-Elisp-Programming/Org-mode-recipes.html>


## Example {#example}

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
