---
title: Raku vs. Rakudo, Raku++ and mutsu
---

{% include menu.html %}

**Raku** is the name of the programming language. A **compiler** is a program. It reads your code and runs it. Raku can have more than one compiler. This course uses **Rakudo**, the older and well-known one. There are also newer ones: **Raku++** and **mutsu**.

## More than one compiler

Raku’s design does not say which compiler to use. The design documents come with a set of tests. This set is called Roast. Anyone can write a compiler. If it passes these tests, it is a Raku compiler.

For a long time, Rakudo was the only complete and stable compiler. Now this is not true. In July 2026, a second compiler came out: **Raku++**. Its author wrote it in C++. Its program file is called `rakupp`. Version 5.4.1 passes all the Roast tests. It also starts very fast. This course uses Rakudo for its examples. But you learn the Raku language itself. Almost all of it runs on Raku++ too, with no changes.

There is also a third one: **mutsu**. It is an interpreter. Tokuhiro Matsuno wrote it in Rust. It compiles Raku code to bytecode. Then its own virtual machine runs this bytecode. You can also run it in a web browser, through WebAssembly. Its website has a Raku tutorial and a playground. Both of them run on mutsu. The author is still working hard on it. The author says it is not ready for real projects yet. But it already passes almost all the Roast test files.

The next pages show each of the three: Rakudo, Raku++ and mutsu. They also show how to install them.

## External links

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ on GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
