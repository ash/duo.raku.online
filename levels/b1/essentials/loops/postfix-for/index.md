---
title: 'Postfix form of "for"'
---

{% include menu.html %}

You have already seen other statement modifiers: [`if` and `else`](/essentials/conditional-checks/modifiers) and [`while` and `until`](/essentials/loops/modifiers). That is a small reason to celebrate: the design of Raku is very consistent.

With a short loop body, you can use the postfix form of `for`:

```raku
.say for 1..7;
```

As you can see, ranges fit very well with the postfix `for`.

This program does the same as a more usual version:

```raku
for 1..7 -> $n {
    say $n;
}
```

Or, if you use the default loop variable, the same as this:

```raku
for 1..7 {
    .say;
}
```

Here, `.say` is short for `$_.say`.

{% include nav.html %}
