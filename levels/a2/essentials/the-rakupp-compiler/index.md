---
title: The Raku++ compiler
---

{% include menu.html %}

**Raku++** is a second Raku compiler. Its program file is called `rakupp`. The first version came out in July 2026. Rakudo runs on the MoarVM virtual machine. Raku++ is different. Its author wrote it in **C++**. It does not need a virtual machine of its own.

It is an **interpreter** and a **compiler** at the same time. It can run a program directly. It can also turn a program into native code. This makes it faster. It does not need to start a big runtime system first. So `rakupp` starts in just a few milliseconds. This makes it nice for short scripts. It is also nice for everyday work on the command line. Its author calls it the fastest Raku compiler.

By default, Raku++ supports Raku 6.d. It also supports 6.e. A program asks for 6.e with `use v6.e.PREVIEW`. Version 5.4.1 came out in October 2026. It passes all 1,425 test files of Roast. Roast is the official set of Raku tests.

Raku++ also runs in a web browser. For this, it is compiled to WebAssembly. The playground at [raku.online](https://raku.online) runs on it. There you can try Raku without installing anything.

## Interpreter and compiler modes

Run a program directly, like with Rakudo:

```console
$ rakupp hello.raku
```

Or ask Raku++ to make a native program file. It runs on its own. And it is even faster:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

For everyday learning, you only need the simple interpreter mode. The compiling modes are for extra speed.

## Source code

Raku++ is open source. You can find it at [github.com/ash/rakupp](https://github.com/ash/rakupp). The page also has release files and instructions for building it.

{% include nav.html %}
