---
title: "C# nullability"
author: ["Eivind Hjertnes"]
draft: false
---

In C# until version 8 reference types could always be null while value types had to be declared as nullable, sometimes.

All of this have been cleaned up in C# with a optional feature called nullable reference types.

It means that any time a value could be null you need to declare it as nullable. And you'll get compiler warnings if you don't deal with the null stuff properly.

I think it is awesome, and it a great way to make null easier to work with.
