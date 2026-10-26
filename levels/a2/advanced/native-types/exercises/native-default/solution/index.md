---
title: The solution of ’The native default‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 You can find the source code in the file [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Output

```
0
[]
```

## Comments

1. A native `num` cannot be undefined. So it starts at `0`, like a native `int`. It does not start as `(Num)`.

1. A native `str` starts as an empty string. So there is nothing between the brackets. A native type never holds an undefined value.

1. Here, the types are very important. Try to remove them. Write `my $n; my $s;` instead. Now the variables are normal containers. At the start, they are *undefined*: they hold `Any`. Then `say $n` prints `(Any)`. The string interpolates `$s`, but `$s` is undefined. So Raku shows a warning: *“Use of uninitialized value … in string context”*. Only the native types `num` and `str` give the start values. These are `0` and the empty string.

{% include nav.html %}
