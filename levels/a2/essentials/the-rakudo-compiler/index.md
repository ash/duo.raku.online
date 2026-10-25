---
title: The Rakudo compiler
---

{% include menu.html %}

**Rakudo** is the main compiler of Raku. This course uses it. Today, Rakudo is the most complete way to run Raku. It is also very well tested in real work. So when people say “the Raku compiler”, they usually mean Rakudo.

Rakudo itself is written mostly in Raku. A smaller language helps to build it. This language is NQP, short for “Not Quite Perl”. Rakudo compiles your program to bytecode. Then it runs the bytecode on a virtual machine called **MoarVM**. When you install Rakudo, you get MoarVM too. Rakudo tries to cover the whole language. Do you need every part of Raku to work? Then Rakudo is the safest choice.

Rakudo supports Raku 6.d. New versions of Rakudo come out often. So you get fixes and new features quickly.

## The virtual machine

Normally, Rakudo runs on MoarVM. MoarVM is a virtual machine made just for Raku. But Rakudo can also work with other virtual machines. You can build it on top of them. Still, MoarVM is the standard choice. It has good support. This course expects you to use MoarVM. This is the main difference between Rakudo and [Raku++](/essentials/the-rakupp-compiler). Raku++ is written in C++. It does not need a virtual machine of its own.

## Source code and links

Rakudo is open source. Anyone can watch its development:

* [rakudo.org](https://rakudo.org)
* [Rakudo on GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
