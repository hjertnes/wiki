---
title: "Emacs memory usage"
author: ["Eivind Hjertnes"]
draft: false
---

Emacs has a garbadge collector. The way it works is that every time some threshold is crossed it tries to free up memory. The higher this number is the less often it runs, and the more stuff it has to check per time.

Over the time I have used emacs I have tried both default, low, high and very high. And I currently keep mine at 25% of my total system memory. And when I see it reching that point I restart it.

My recommendation however is not a direct reflection of my own setup. I would start with the default settings. This results in slower startup and that things take more time when you install a lot of packages etc. But my experience is that the GC process will bother you less.

But if you see that you hit the threshold much faster than you'd like to restart emacs. I'd increase it.

For me it is not a problem to give emacs 2GB and just restart when I reach that once a week or so.
