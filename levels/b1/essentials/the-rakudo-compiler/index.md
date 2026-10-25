---
title: The Rakudo compiler
---

{% include menu.html %}

**Rakudo** is the reference implementation of Raku: the main, standard compiler. This course uses it. Today it is the most complete way to run Raku. It is also well tested in real work. So when people say “the Raku compiler”, they usually mean Rakudo.

Rakudo itself is mostly written in Raku. A smaller language, NQP (“Not Quite Perl”), helps to build it. Your program is compiled to bytecode and runs on a virtual machine called **MoarVM**. You get MoarVM automatically when you install Rakudo. Rakudo tries to cover the whole language. So it is the safest choice if every part of Raku must work.

Rakudo supports Raku 6.d. New releases come out often, so fixes and new features reach you quickly.

## The virtual machine

By default, Rakudo runs on MoarVM, a virtual machine made especially for Raku. The design does not tie Rakudo to one machine. It can also be built on top of other virtual machines. But MoarVM is the standard, well-supported choice. This course assumes you use it. This is the main difference from [Raku++](/essentials/the-rakupp-compiler). Raku++ is written in C++ and needs no virtual machine of its own.

## Source code and links

Rakudo is open source, and anyone can follow its development:

* [rakudo.org](https://rakudo.org)
* [Rakudo on GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
