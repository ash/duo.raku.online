---
title: The solution of ’Chained comparison‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. You can chain comparison operators. So `0 <= 73 <= 100` means “0 is at most 73, and 73 is at most 100”. The operator `<=` allows the ends too. So a score of exactly `0` or `100` is also valid.

1. Both parts are true. So the whole expression is `True`. Look at the middle value, `73`. You write it only once. But Raku compares it with both values next to it.

1. Without chaining, you need to write both comparisons. You join them with `&&`. And you write the middle value two times: `0 <= 73 && 73 <= 100`. The chained form says the same thing in a shorter way.

{% include nav.html %}
