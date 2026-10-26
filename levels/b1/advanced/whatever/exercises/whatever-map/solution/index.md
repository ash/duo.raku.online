---
title: The solution of ’Whatever with map‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 You can find the source code in the file [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Output

```
(3 6 9 12)
```

## Comments

1. `* * 3` is a Whatever expression that becomes a `WhateverCode` with one argument. It is a completely ordinary function value, stored in `$triple`.

1. It is just a function, so `map` accepts it like any block. `map` applies it to each element of `1..4`, which gives `(3 6 9 12)`.

{% include nav.html %}
