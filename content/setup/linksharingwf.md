---
title: "My link sharing workflow"
author: ["Eivind Hjertnes"]
draft: false
---

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
