---
title: The solution of ’Bind a scalar‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. Binding with `:=` does not make a copy. It makes `$bound` a second name for the container of `$source`. So `$bound` sees the change to `$source`. It prints `9`.

1. Normal assignment with `=` copies the value into a different container. So the later change does not touch `$copy`. It still prints `1`.

1. This is the point of the task. You see the two ways side by side. `:=` shares a container. `=` copies the value.

{% include nav.html %}
