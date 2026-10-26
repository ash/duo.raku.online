---
title: The solution of ’Chained comparison‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say 0 <= 73 <= 100;
```

🦋 You can find the source code in the file [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Output

```
True
```

## Comments

1. Comparison operators can be chained. So `0 <= 73 <= 100` means “0 is at most 73, and 73 is at most 100”. The `<=` operator allows the end values. So a score of exactly `0` or `100` would also be valid.

1. Both parts are true, so the whole expression is `True`. Note that you write the middle value `73` only once. Still, it is compared with both of its neighbours.

1. Without chaining, you would have to write out both comparisons and join them with `&&`. Then you repeat the middle value: `0 <= 73 && 73 <= 100`. The chained form says the same thing in a shorter way.

{% include nav.html %}
