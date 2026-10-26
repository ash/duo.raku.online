---
title: The solution of ’Count the distinct‘
---

{% include menu.html %}

Here is one possible solution.

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

1. When you pass the array to `set`, you get a set of its values. A set keeps only distinct values, so the repeated numbers become one.

1. After that, `elems` gives the number of distinct values: `7`.

{% include nav.html %}
