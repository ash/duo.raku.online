---
title: The solution of ’Sort with a colon‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The colon passes the sort key to `sort`. No parentheses are needed around it.

1. `*.chars` is a Whatever expression that means “the number of characters of each element”. `sort` uses it as the key, so the shortest words come first. First comes `fig` (3), then `pear` and `kiwi` (4), and then `apple` (5).

1. `pear` stays before `kiwi` because both words have the same length. Also, `sort` is stable, which means that it keeps the original order of equal keys.

{% include nav.html %}
