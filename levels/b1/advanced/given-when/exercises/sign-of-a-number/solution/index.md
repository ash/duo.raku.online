---
title: The solution of ’Even, odd, or zero‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 You can find the source code in the file [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Output

```
even
```

## Comments

1. `when 0` matches only the value zero. It comes first because zero is also even, and we want to report it on its own.

1. `when $_ %% 2` is a condition, where `$_` is the topic set by `given`. The `%%` operator checks whether the topic divides evenly by two. The value `12` is not zero, but it divides by two, so the program prints `even`.

1. `default` covers everything that is left. These are the numbers that are neither zero nor even, that is, the odd ones.

{% include nav.html %}
