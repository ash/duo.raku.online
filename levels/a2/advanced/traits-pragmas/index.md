---
title: Traits and pragmas
---

{% include menu.html %}

Two features change how Raku **compiles** your code. This happens before the code runs. The first feature is a _trait_. A trait changes a declaration. The declaration can be a variable or a routine. You write a trait with `is`. The second feature is a _pragma_. A pragma is a bit like a module. You turn it on with `use`, or off with `no`. It changes a rule for the rest of the lexical scope. In other words, it works until the end of the block.

You have already used a trait, like `is default`. But you did not learn much about it then. This section looks at traits more closely. It shows how to write your own trait. It also introduces pragmas.

{% include nav.html %}
