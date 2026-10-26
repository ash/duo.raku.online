---
title: The solution of ’Average operator‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 You can find the source code in the file [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Output

```
7
```

## Comments

1. We declare the operator as `infix:<avg>`. So you write it between its two operands, like `+` or `~`.

1. The body adds the two operands. Then it divides the sum by two. For `4` and `10`, the result is `7`.

{% include nav.html %}
