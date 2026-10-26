---
title: The solution of ’Match by type‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 You can find the source code in the file [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Output

```
rational
```

## Comments

1. Sometimes `when` has a type. Then the smart match checks if the topic *has this type*. `3.14` is not an `Int`. So Raku skips the first `when`.

1. In Raku, a number with a decimal point, like `3.14`, is a `Rat`. A `Rat` is a rational number, or a fraction. So the second `when` matches. The program prints `rational`.

{% include nav.html %}
