---
title: The mutsu interpreter
---

{% include menu.html %}

**mutsu** is a third implementation of Raku. Tokuhiro Matsuno wrote it in **Rust**. Like Rakudo, it compiles your program to bytecode. Then it runs the bytecode on a virtual machine. But this machine is not MoarVM. It is mutsu’s own machine. It is inside the `mutsu` program file.

mutsu supports Raku 6.d. Its author is still working on it a lot. It is not ready for real projects yet. The author says this clearly. But it already passes almost all the Roast test files. So almost all programs in this course work on it unchanged.

One missing part is important while you learn. Some compile-time checks are not there yet. These checks happen before the program runs. Here is the most visible case, in version 0.24.0. Maybe you forget to declare a variable. Rakudo and Raku++ report this before the program runs. But mutsu does not. Does the course show such an error message? Then try that example with one of the other two compilers.

## Raku in the browser

You can also compile mutsu to WebAssembly. Then it runs inside a web page. Its website, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), uses this. It has an introduction to Raku in English and Japanese. It also has a tutorial. In it, you try things yourself. And it has a playground. There you can run Raku without installing anything. All these pages run mutsu itself.

## Modules

mutsu comes with its own copy of the zef package manager. This copy is called `mzef`. So you can install Raku modules for mutsu as usual. Type `mzef install` and then the name of the module.

## Source code

mutsu is open source. You can find it at [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). The page also has release builds and build instructions.

{% include nav.html %}
