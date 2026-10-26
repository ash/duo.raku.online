---
title: The solution of ’Bind a scalar‘
---

{% include menu.html %}

Here is one possible solution to the task.

## Code

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 You can find the source code in the file [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Output

```
9
1
```

## Comments

1. Binding with `:=` does not make a copy. It makes `$bound` another name for the same container as `$source`. So the change to `$source` is visible through `$bound`, which prints `9`.

1. Normal assignment with `=` copies the value into a separate container. So the later change does not affect `$copy`, and it still prints `1`.

1. The whole point is to see the two side by side. `:=` shares a container, while `=` makes a copy of the value.

{% include nav.html %}
