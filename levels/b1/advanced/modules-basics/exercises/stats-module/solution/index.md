---
title: The solution of ’Use a stats module‘
---

{% include menu.html %}

Here is one possible solution.

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

1. A single `use Stats` brings in *both* exported subroutines at once. `use` imports everything that the module marks with `is export`, not just one name.

1. `mean` calls `total` inside the module. To get the mean, the program does not call `total` itself, but it still works. The subroutines of a module can depend on each other. The caller only sees the exported names.

1. The four numbers add up to `100`, so the mean is `100 / 4`, which is `25`.

{% include nav.html %}
