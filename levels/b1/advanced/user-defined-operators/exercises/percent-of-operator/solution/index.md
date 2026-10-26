---
title: The solution of ’Percent-of operator‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 You can find the source code in the file [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Output

```
30
```

## Comments

1. The operator takes the percentage `$p` as its left operand. Its right operand is the whole amount, `$whole`.

1. Multiplying `$whole` by `$p` and dividing by `100` gives the part we need. Here, `150 * 20 / 100` is `30`.

{% include nav.html %}
