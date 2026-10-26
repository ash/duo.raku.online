---
title: The solution of ’The native default‘
---

{% include menu.html %}

Here is one possible solution.

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

1. A native `num` cannot be undefined. So, like a native `int`, it starts at `0` and not at `(Num)`.

1. A native `str` starts as the empty string. That is why there is nothing between the brackets in the output. None of the native types ever holds an undefined value.

1. The type names are very important here. If you remove them and write `my $n; my $s;`, the variables become ordinary containers. They start out *undefined* (`Any`). Then `say $n` prints `(Any)`. Interpolating the undefined `$s` also gives a warning: *“Use of uninitialized value … in string context”*. Only the native types `num` and `str` give the defaults `0` and the empty string.

{% include nav.html %}
