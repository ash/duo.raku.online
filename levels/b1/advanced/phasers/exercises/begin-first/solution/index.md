---
title: The solution of ’Begin first‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 You can find the source code in the file [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Output

```
5
```

## Comments

1. `BEGIN { 2 + 3 }` runs during compilation and gives `5`. When you use a `BEGIN` block as an expression, it returns its value. Here, this value is assigned to `$compiled`.

1. The calculation happens only once, at compile time. When the program runs, `$compiled` simply holds the constant `5`. This is how `BEGIN` can calculate values in advance. It is not only for printing early.

{% include nav.html %}
