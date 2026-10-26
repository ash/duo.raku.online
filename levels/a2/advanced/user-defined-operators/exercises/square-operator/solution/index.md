---
title: The solution of ’A squaring operator‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 You can find the source code in the file [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Output

```
25
```

## Comments

1. We declare the operator as `postfix:<²>`. Its symbol is a small, raised two. You write it after its operand, as in `5²`.

1. The body raises the operand to the power of two. So `5²` gives `25`. You are free to use a Unicode symbol. It can look just like in mathematics.

{% include nav.html %}
