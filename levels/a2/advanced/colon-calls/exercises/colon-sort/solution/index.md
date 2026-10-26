---
title: The solution of ’Sort with a colon‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 You can find the source code in the file [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Output

```
(fig pear kiwi apple)
```

## Comments

1. The colon gives the sort key to `sort`. You do not need parentheses around it.

1. `*.chars` is a Whatever expression. It means “the number of characters of each element”. `sort` uses it as the key. So the shortest word comes first: `fig` (3). Then come `pear` and `kiwi` (4). Then comes `apple` (5).

1. `pear` stays before `kiwi`. Both words have the same length. And `sort` is stable. It keeps the old order of elements with equal keys.

{% include nav.html %}
