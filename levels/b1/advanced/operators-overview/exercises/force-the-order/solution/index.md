---
title: The solution of ’Force the order‘
---

{% include menu.html %}

Here is one possible solution.

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

1. Without the parentheses, `**` would bind more tightly than `+`, and you would get `(2 ** 3) + 1 = 9`.

1. The parentheses raise the precedence of the addition, so `3 + 1` is calculated first. The expression becomes `2 ** 4`, which is `16`. With parentheses, you can always change the default precedence.

{% include nav.html %}
