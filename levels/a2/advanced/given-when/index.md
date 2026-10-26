---
title: '`given` and `when`'
---

{% include menu.html %}

Sometimes a program must choose between several options. A chain of `if` and `elsif` checks can get long. It also repeats the same things. In this case, `given`/`when` is often clearer. It is like the `switch` statement in other languages.

The `given` block takes a value. It makes this value the _topic_. The topic is the special variable `$_`. Then Raku compares each `when` block with the topic. The first `when` that matches runs:

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

Some other languages have a `switch` statement. After a match, it can go on to the next case. Raku does not do this. When a `when` matches, its block runs. Then the `given` block ends. Raku does not test the other `when` blocks.

## The `default` block

A `default` block runs when no `when` block matches. It works like the `else` part of an `if` statement:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` is not `1` and not `2`. So the program prints:

```
many
```

{% include nav.html %}
