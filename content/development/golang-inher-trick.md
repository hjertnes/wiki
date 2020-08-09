---
title: "Golang inheritance trick"
author: ["Eivind Hjertnes"]
draft: false
---

Golang isn't OOP, but one type can inherit from another, for example to extend it properties. It is for example used to have your own custom context in the router I use called Echo.

The way you usually set properties on types when you do this when TypeB inherit from TypeA is something like &TypeB{typeAValue}. But sometimes you need to specify the properties. Then you need to do it like this &TypeB{TypeA: typeAValue}.

Took me way too long to figure this out,
