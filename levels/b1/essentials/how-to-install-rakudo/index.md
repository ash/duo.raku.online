---
title: How to install Rakudo
---

{% include menu.html %}

To run a program in Raku, you need to install a compiler. This course uses Rakudo. The other two, [Raku++](/essentials/the-rakupp-compiler) and [mutsu](/essentials/the-mutsu-interpreter), are installed separately. See [How to install Raku++](/essentials/how-to-install-rakupp) and [How to install mutsu](/essentials/how-to-install-mutsu). Visit [the Rakudo website](https://rakudo.org) and download the version for your operating system.

## Sources

You can download an installer for your system at [rakudo.org/downloads](https://rakudo.org/downloads). There are versions for all major operating systems: Windows, Mac OS and Linux. You can also get the source code and compile it yourself.

## Docker images

Rakudo is also available as a docker image. You can use it to run programs. It is also good for testing small scripts in a REPL shell. You will find all the instructions at [github.com/Raku/docker](https://github.com/Raku/docker).

## Version numbers

A Rakudo version number has two parts: the year and month of release. So you can easily see how new your compiler is. Run this command to see its version number:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Here you can see three version numbers. The first one is the version of Rakudo itself: `v2026.06`. Then comes the version of the Raku language: `v6.d`. For now, updates get the next letter as the minor version. For example, the next one is `v6.e`, and so on. Finally, you see the name of the virtual machine in this compiler: MoarVM version `2026.06`.

{% include nav.html %}
