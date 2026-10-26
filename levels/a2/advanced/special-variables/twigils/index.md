---
title: Twigils
---

{% include menu.html %}

A _twigil_ is a character. It stands between the sigil and the name of a variable. It does not change the name. It changes how the variable works. It also changes how Raku finds it. These are the common twigils:

* `*` — a **dynamic** variable, for example, `$*OUT`; Raku finds it through the call stack
* `?` — a **compile-time** value; the compiler sets it, for example, `$?FILE` and `$?LINE`
* `!` — a **private** attribute of an object, for example, `$!balance`
* `.` — an attribute that you use through its accessor method, for example, `$.name`

You already know some of them, but without the name “twigil”. `$*OUT` and `$*IN` are dynamic. And you saw `$!` and `$.` in [the part about objects](/oop).

The compiler gives the `?` variables their values. It does this when it compiles your program:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Each twigil shows a different kind of variable. You see it at once. When you read `$*foo`, you know that it is dynamic. And `$?foo` is a compile-time constant. The next topic looks closely at [dynamic variables](/advanced/special-variables/dynamic-variables). They work very differently from the lexical variables that you know.

{% include nav.html %}
