---
title: "Don't null"
author: ["Eivind Hjertnes"]
draft: false
---

Don't return null and infer behaviour from that. Like if this returns null then it did not exist or the auth failed etc.

You should either throw exceptions for this or return null values (if you use something where that is the native thing, like in Go).

These kinds of stuff should be explicit because it leads to better code that are easier to change and extend.

Don't return null (or just null in golangs case) and don't ever pass it to a function.
