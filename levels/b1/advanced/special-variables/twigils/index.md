---
title: Twigils
---

{% include menu.html %}

A _twigil_ is a character between the sigil and the name of a variable. It does not change the name. Instead, it changes how the variable behaves and how Raku finds it. These are the common ones:

* `*` — a **dynamic** variable, such as `$*OUT`, which Raku looks up through the call stack
* `?` — a **compile-time** value that the compiler provides, such as `$?FILE` or `$?LINE`
* `!` — a **private** attribute of an object, such as `$!balance`
* `.` — an attribute that you reach through its accessor method, such as `$.name`

You have already seen several of them, but we did not call them twigils. These are the dynamic `$*OUT` and `$*IN`, and `$!`/`$.` from [the part on objects](/oop).

The compiler fills in the `?` variables while it compiles your program:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Each twigil shows a different kind of variable at once. When you read `$*foo`, you know right away that it is dynamic. And `$?foo` is a compile-time constant. The next topic looks at [dynamic variables](/advanced/special-variables/dynamic-variables) in detail. They behave quite differently from the lexical variables you have used so far.

{% include nav.html %}
