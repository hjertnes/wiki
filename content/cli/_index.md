---
title: "CLI"
author: ["Eivind Hjertnes"]
draft: false
---

## Bulk converting images with ImageMagick. {#bulk-converting-images-with-imagemagick-dot}

This works with most images, but it will not work with raw files because they are not really images, but rather something you can create a image with

for f in $(find . -iname '\*.HEIC'); do convert $f $(sed "s/HEIC/JPG/g" <<< "$f"); done

Just rename HEIC to what ever you are converting from and JPG to what ever you are converting to. The only thing you need to have installed is image magick.


## OSX and scheduling {#osx-and-scheduling}

Some stuff have gotten harder and harder to do on OSX in more recent versions of OS X. One of them is using cron to schedule tasks. For those who don't know, cron is a standard way on all UNIX systems to run a command at a given interval defined my a standard way.

There are different versions, and the differences between doesn't matter a lot. But what makes cron great is that if you go to a unix system you could rely on it being there and you could just copy over your scripts and config and call it a day. It is for example the heart of my git based dropbox replacement.

Today I gave up on using cron on OS X. Instead I found a great app for defining launchd daemons(because Apple's formats are no near as elegant as a crontab is) called [Lingon](https://www.peterborgapps.com/lingon/). It was 15 bucks, but it took me less than a minute to get what I wanted.
