---
title: The solution of ’Try or default‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 You can find the source code in the file [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Output

```
default
```

## Comments

1. The failing `try` block gives an undefined value.

1. So the defined-or operator `//` returns its right-hand side, `'default'`. This is a clean way to recover with a fallback value in a single line.

{% include nav.html %}
