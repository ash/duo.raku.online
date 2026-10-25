---
title: The Raku++ compiler
---

{% include menu.html %}

**Raku++** is a second Raku compiler. Its executable file is called `rakupp`, and it was first released in July 2026. Rakudo runs on the MoarVM virtual machine. Raku++, on the other hand, is written in **C++**. It needs no virtual machine of its own.

It is both an **interpreter** and a **compiler**. It can run a program directly. Or it can translate it into native code for extra speed. There is no heavy runtime to start up. So `rakupp` launches in just a few milliseconds. This makes it pleasant for short scripts and everyday work in the terminal. Its author calls it the fastest Raku compiler.

By default, Raku++ supports Raku 6.d. It supports 6.e when a program asks for it with `use v6.e.PREVIEW`. Version 5.4.1 was released in October 2026. It passes all 1,425 test files of the Roast suite. Roast is the official set of Raku tests.

Raku++ also runs in a web browser. It is compiled to WebAssembly and powers the playground at [raku.online](https://raku.online). There you can try Raku without installing anything.

## Interpreter and compiler modes

You can run a program straight away, just like with Rakudo:

```console
$ rakupp hello.raku
```

Or ask Raku++ to make a separate native executable from a program. It runs even faster:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

For everyday learning, the plain interpreter mode is all you need. The compiling modes are there for when you want extra speed.

## Source code

Raku++ is open source. You can find it at [github.com/ash/rakupp](https://github.com/ash/rakupp). Ready-made release files and build instructions are there too.

{% include nav.html %}
