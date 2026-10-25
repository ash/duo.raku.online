---
title: The mutsu interpreter
---

{% include menu.html %}

**mutsu** is a third implementation of Raku, written in **Rust** by Tokuhiro Matsuno. Like Rakudo, it compiles your program to bytecode and runs it on a virtual machine. But this virtual machine is not MoarVM. It is mutsu’s own, built into the `mutsu` executable.

mutsu supports Raku 6.d and is still in active development. Its author openly says it is not yet ready for real projects. But it already passes nearly all of the Roast test files. So almost all the programs in this course run on it without changes.

One gap matters while you learn: some compile-time checks are still missing. The most visible one, as of version 0.24.0, is this. Imagine that you forget to declare a variable. Rakudo and Raku++ report it before the program runs. But mutsu does not. When the course shows such an error, try that example with Rakudo or Raku++.

## Raku in the browser

mutsu can also be compiled to WebAssembly. Then it runs inside a web page. Its website, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), uses this in several ways. It has an introduction to Raku in English and Japanese. There is also a hands-on tutorial. And there is a playground where you can run Raku without installing anything. Everything on those pages runs mutsu itself.

## Modules

mutsu comes with its own copy of the zef package manager, called `mzef`. So you can install Raku modules for it in the usual way. Just type `mzef install` and the name of the module.

## Source code

mutsu is open source. You can find it at [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Release builds and build instructions are there too.

{% include nav.html %}
