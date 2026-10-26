---
title: The solution of ’Absolute value‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 You can find the source code in the file [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Output

```
7
4
```

## Comments

1. The first candidate works only for negative numbers. It returns the number with the opposite sign. This value is positive.

1. All other numbers go to the second candidate. These are zero and the positive numbers. The second candidate returns the value as it is.

{% include nav.html %}
