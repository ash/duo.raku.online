---
title: The solution of ’Boolean of a value‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say ?0;
say ?5;
```

🦋 You can find the source code in the file [boolean-of-a-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/boolean-of-a-value.raku).

## Output

```
False
True
```

## Comments

1. `?` is a prefix operator. It comes before its operand. It returns the Boolean value of the operand.

1. `0` is false, and `5` is true. So the program prints `False` and `True`.

{% include nav.html %}
