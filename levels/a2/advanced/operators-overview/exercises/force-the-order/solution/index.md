---
title: The solution of ’Force the order‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say 2 ** (3 + 1);
```

🦋 You can find the source code in the file [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Output

```
16
```

## Comments

1. Without the parentheses, `**` is stronger than `+`. Then you get `(2 ** 3) + 1 = 9`.

1. The parentheses give the addition a higher precedence. So Raku calculates `3 + 1` first. The expression becomes `2 ** 4`, and this is `16`. With parentheses, you can always change the normal precedence.

{% include nav.html %}
