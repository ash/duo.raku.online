---
title: '`given` and `when`'
---

{% include menu.html %}

Sometimes a program needs to choose between several options. A chain of `if` and `elsif` checks can then get long and full of repetition. In such cases, `given`/`when` is often clearer. It is similar to the `switch` statement in other languages.

The `given` block takes a value and makes it the _topic_. The topic is the special variable `$_`. Then each `when` block is compared with this topic. The first one that matches runs:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

This program prints:

```
two
```

Unlike `switch` in some languages, there is no fall-through to the next case. As soon as a `when` matches, its block runs, and the `given` block is finished. The other `when` blocks are not tested.

## The `default` block

A `default` block runs when none of the `when` blocks matched. It does the same job as the `else` branch of an `if` statement:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` is neither `1` nor `2`, so the program prints:

```
many
```

{% include nav.html %}
