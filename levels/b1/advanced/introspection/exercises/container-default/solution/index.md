---
title: The solution of ’The container’s default‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 You can find the source code in the file [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Output

```
0
0
```

## Comments

1. The `is default(0)` trait gives the container a default value. Nothing has been assigned yet, so reading `$count` returns this default. That is why the first line prints `0`.

1. `.VAR.default` asks the container itself for the default it was given, which is also `0`. Without the trait, the default of a container with no type would be `(Any)`.

{% include nav.html %}
