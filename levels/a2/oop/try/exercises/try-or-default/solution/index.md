---
title: The solution of ’Try or default‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The `try` block fails. So its value is undefined.

1. So the defined-or operator `//` returns its right side. This is `'default'`. This is a clean way to go on after a failure. You need only one line and a fallback value.

{% include nav.html %}
