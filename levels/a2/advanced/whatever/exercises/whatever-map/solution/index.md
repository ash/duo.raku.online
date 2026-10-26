---
title: The solution of ’Whatever with map‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `* * 3` is a Whatever expression. It becomes a `WhateverCode` with one argument. This is a normal function value. The program keeps it in `$triple`.

1. It is just a function. So `map` takes it like any block. `map` uses it on each element of `1..4`. The result is `(3 6 9 12)`.

{% include nav.html %}
