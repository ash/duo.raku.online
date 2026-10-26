---
title: The solution of ’Percent-of operator‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The left operand of the operator is the percentage, `$p`. The right operand is the whole amount, `$whole`.

1. Multiply `$whole` by `$p`, and divide by `100`. This gives the part that we need: `150 * 20 / 100` is `30`.

{% include nav.html %}
