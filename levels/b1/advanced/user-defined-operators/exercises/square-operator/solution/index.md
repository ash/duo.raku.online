---
title: The solution of ’A squaring operator‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The operator is declared as `postfix:<²>`. So its symbol, the superscript two, comes after its operand, as in `5²`.

1. The body raises the operand to the power of two, so `5²` gives `25`. Nothing stops you from using a Unicode symbol that looks like the usual mathematical notation.

{% include nav.html %}
