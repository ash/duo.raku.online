---
title: The solution of ’A two-argument Whatever‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 You can find the source code in the file [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Output

```
a-b
```

## Comments

1. The expression has two stars, so Raku builds a `WhateverCode` that takes two arguments. The first star is the first argument, and the second star is the second one.

1. The call `$join('a', 'b')` fills the stars in order. This gives `'a' ~ '-' ~ 'b'`, which is `a-b`.

{% include nav.html %}
