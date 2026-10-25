---
title: 'Postfix form of "for"'
---

{% include menu.html %}

We have already seen other statement modifiers: [`if` and `else`](/essentials/conditional-checks/modifiers) and [`while` and `until`](/essentials/loops/modifiers). That is a reason to celebrate a little, because the design of Raku is very consistent.

When the loop body is short, you can write the `for` loop in a postfix form:

```raku
.say for 1..7;
```

As you can see, ranges look very natural with the postfix form of `for`.

This program is the same as a more traditional version:

```raku
for 1..7 -> $n {
    say $n;
}
```

Or, if you use the default loop variable, it is the same as:

```raku
for 1..7 {
    .say;
}
```

Here, `.say` is the short form of `$_.say`.

{% include nav.html %}
