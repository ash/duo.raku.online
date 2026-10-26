---
title: The solution of ’The container’s default‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The trait `is default(0)` gives the container a default value. The program assigns nothing to `$count`. So `$count` returns the default. The first line prints `0`.

1. `.VAR.default` asks the container for its default. This is `0` too. Without the trait, the default is different. A container with no type then has the default `(Any)`.

{% include nav.html %}
