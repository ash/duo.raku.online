---
title: The solution of ’Count the distinct‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 You can find the source code in the file [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Output

```
7
```

## Comments

1. Give the array to `set`. You get a set of its values. A set keeps only distinct values. So each repeated number becomes one value.

1. Then the `elems` method returns the number of distinct values. It is `7`.

{% include nav.html %}
