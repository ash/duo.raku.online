---
title: The solution of ’Even, odd, or zero‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `when 0` matches only one value, zero. It comes first. Zero is also even, but we want to show it on its own.

1. `when $_ %% 2` is a condition. Here, `$_` is the topic from `given`. The `%%` operator checks if it divides by two with nothing left over. The value `12` is not zero. But it divides by two. So the program prints `even`.

1. `default` is for all the other numbers. They are not zero and not even. So they are the odd numbers.

{% include nav.html %}
