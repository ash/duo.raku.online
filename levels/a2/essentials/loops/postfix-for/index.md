---
title: 'Postfix form of "for"'
---

{% include menu.html %}

You already know other statement modifiers: [`if` and `else`](/essentials/conditional-checks/modifiers) and [`while` and `until`](/essentials/loops/modifiers). This is good news, because Raku is designed in a very consistent way.

When the body of the loop is short, you can write `for` after it:

```raku
.say for 1..7;
```

Ranges look very natural with this form of `for`.

This program does the same as a more usual loop:

```raku
for 1..7 -> $n {
    say $n;
}
```

Or, with the default loop variable, it does the same as this:

```raku
for 1..7 {
    .say;
}
```

Here, `.say` is a short way to write `$_.say`.

{% include nav.html %}
