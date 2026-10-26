---
title: The solution of ’Triple it‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 You can find the source code in the file [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Output

```
21
```

## Comments

1. The pointy block has only one parameter, `$x`. But it also uses `$factor`. This variable comes from the code around the block. A block that keeps such variables is a closure.

1. `$factor` is `3`, so `$scale(7)` gives `21`. Now change `$factor`. Then the same block uses the new value:

```raku
$factor = 5;
say $scale(7); # 35
```

The closure keeps the *variable* itself. It does not keep the old value of the variable. So the later call sees the new `$factor`. It returns `35`.

{% include nav.html %}
