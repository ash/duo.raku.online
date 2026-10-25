---
title: How to install Rakudo
---

{% include menu.html %}

You need a compiler to run a Raku program. You must install it first. This course uses Rakudo. There are also [Raku++](/essentials/the-rakupp-compiler) and [mutsu](/essentials/the-mutsu-interpreter). You install them separately. Read [How to install Raku++](/essentials/how-to-install-rakupp) and [How to install mutsu](/essentials/how-to-install-mutsu). Go to [the website of Rakudo](https://rakudo.org). There you can download the right version for your operating system.

## Sources

Download an installer for your system at [rakudo.org/downloads](https://rakudo.org/downloads). There are versions for all the main operating systems: Windows, Mac OS and Linux. There is also the source code. You can compile it yourself.

## Docker images

You can also get Rakudo as a docker image. With it, you can run programs. You can also test small scripts in a REPL shell. All the instructions are at [github.com/Raku/docker](https://github.com/Raku/docker).

## Version numbers

A Rakudo version number has two parts. They are the year and the month of the release. So you can easily see how new your compiler is. Run this command to see its version number:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Here you see three version numbers. The first one is the version of Rakudo itself: `v2026.06`. Next is the version of the Raku language: `v6.d`. For now, each update of the language gets the next letter. This letter is the minor, or small, part of the version. For example, `v6.e` comes next, and so on. At the end, you see the name of the virtual machine. This compiler uses MoarVM version `2026.06`.

{% include nav.html %}
