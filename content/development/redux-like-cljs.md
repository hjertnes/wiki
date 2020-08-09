---
title: "Redux like pattern with ClojureScript and Reagent"
author: ["Eivind Hjertnes"]
draft: false
---

Below is a super minimal version of a redux like pattern (if you use combine reducers in redux). If you want a full example of how it works you can see it in use in this [repo](https://github.com/hjertnes/bank2) that I originally wrote it for.

The way it works is that you define a hashmap of reducers, each reducer take state and a action as input, then it either returns the previous state (if the actions isn't something it can do anything about) or a new version of it state. It will always run an action through all of the reducers.

It is written in a way where you decide all the logic yourself. The way I do it is that if you pass it nil default state is returned. First you create the store, then you create the dispatch method; the dispatch is used to send action to the store. The store is a single atom. I'm not sure how well this scales, but my approach is as always to start simple and see where it explodes.

<script src="https://gist.github.com/hjertnes/d1014636cbf508d75846d90b01d4e027.js"></script>
