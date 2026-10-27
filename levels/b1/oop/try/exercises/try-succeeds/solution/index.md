---
title: The solution of ’When nothing goes wrong‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 You can find the source code in the file [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Output

```
True
42
```

## Comments

1. If the `try` block runs without an exception, it simply gives the block's value.

1. So `$r` holds `42`, and `$r.defined` is `True`.

{% include nav.html %}
