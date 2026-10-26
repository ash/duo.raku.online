---
title: The solution of ’Use a stats module‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

The program, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module) directory.

## Output

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Comments

1. One `use Stats` brings in *both* exported subroutines at once. `use` imports everything with `is export` in the module. It does not import just one name.

1. `mean` calls `total` inside the module. To get the mean, the program does not call `total` itself. But it still works. The subroutines of a module can use each other. The caller only sees the exported names.

1. The four numbers add up to `100`. So the mean is `100 / 4`. That is `25`.

{% include nav.html %}
