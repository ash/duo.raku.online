---
title: The solution of ’Absolute value‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The first candidate matches only negative numbers. It returns the value with the opposite sign, which is positive.

1. All other numbers, that is zero and the positive numbers, go to the second candidate. It returns the value without any change.

{% include nav.html %}
