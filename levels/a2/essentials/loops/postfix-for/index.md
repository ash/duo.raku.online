---
title: 'Postfix form of "for"'
---

{% include menu.html %}

You already know other statement modifiers: [`if` and `else`](/essentials/conditional-checks/modifiers) and [`while` and `until`](/essentials/loops/modifiers). This is good news. In Raku, similar things work in similar ways.

A short loop body can have `for` after it:

```raku
.say for 1..7;
```

Ranges look very natural with `for` at the end.

This program does the same thing as a normal loop:

```raku
for 1..7 -> $n {
    say $n;
}
```

Or it does the same as this loop with `$_`:

```raku
for 1..7 {
    .say;
}
```

Here, `.say` is a short way to write `$_.say`.

{% include nav.html %}
