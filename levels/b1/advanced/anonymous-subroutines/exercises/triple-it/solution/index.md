---
title: The solution of ’Triple it‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The pointy block has only one parameter, `$x`. Still, it uses `$factor`, a variable from the scope around it. Capturing such variables is what makes it a closure.

1. When `$factor` is `3`, calling `$scale(7)` gives `21`. If you change `$factor`, the same block multiplies by the new value:

```raku
$factor = 5;
say $scale(7); # 35
```

The closure captures the *variable* itself. It does not capture the value from the moment the block was written. So the later call sees the new `$factor` and returns `35`.

{% include nav.html %}
