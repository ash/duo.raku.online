---
title: Raku vs. Rakudo, Raku++ and mutsu
---

{% include menu.html %}

**Raku** is the name of the programming language. A **compiler** is the program that reads your code and runs it. Raku is not tied to just one compiler. This course uses **Rakudo**, which has been around for years. There are newer ones too: **Raku++** and **mutsu**.

## More than one compiler

The design of Raku does not say which compiler you must use. Its design documents come with a set of tests called Roast. Anyone can write a compiler. If it passes those tests, it is a Raku compiler.

For a long time, Rakudo was the only complete and stable compiler. Now this is no longer true. In July 2026, a second compiler appeared: **Raku++**, written in C++. Its executable file is called `rakupp`. Version 5.4.1 passes the whole Roast test suite. It also starts up surprisingly fast. This course uses Rakudo for its examples. But what you learn is the Raku language itself. Almost all of it also runs on Raku++ without changes.

There is also a third implementation, **mutsu**. It is an interpreter, written in Rust by Tokuhiro Matsuno. It compiles Raku to bytecode for its own virtual machine. It also runs inside a web browser through WebAssembly. Its website has a Raku tutorial and a playground built on it. The project is still in active development. Its author says it is not yet ready for real-world projects. But it already passes nearly all of the Roast test files.

The next pages look at the three one by one: Rakudo, Raku++ and mutsu. They also explain how to install them.

## External links

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ on GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
