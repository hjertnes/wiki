---
title: "Lisp: let and let*"
author: ["Eivind Hjertnes"]
draft: false
---

Let is probably the feature of lisp that I miss the most in other languages. A let is how you define local variables in a lisp. It is a function that takes two arguments, the first is a list of two element lists and the second is the code where the variables are available. And the first is a list of lists, where the inner list has two elements the variable name and then the expression or value to assign to the value.

They are weird in the start, but you learn to love them when you start to write a lot of lisps.

Now, if you are used to Clojure, then a assignment in a let expression can reference variables defined earlier in the same let expression. This is not possible in let in emacs, but it is in let\*.
