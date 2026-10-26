---
title: The solution of ’A two-argument Whatever‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The expression has two stars. So Raku makes a `WhateverCode` with two arguments. The first star is the first argument. The second star is the second argument.

1. The call `$join('a', 'b')` puts the values into the stars in order. This gives `'a' ~ '-' ~ 'b'`. The result is `a-b`.

{% include nav.html %}
