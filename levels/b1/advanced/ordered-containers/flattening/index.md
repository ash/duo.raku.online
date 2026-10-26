---
title: Flattening and itemisation (itemization)
---

{% include menu.html %}

If you put one array into another, Raku does _not_ merge their elements by itself. Look at this program:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

The array `@c` has only two elements, the arrays `@a` and `@b`. Raku keeps each container as one item. It does not unpack its contents into the outer array. The same happens when you put an array among other values:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

If you really want one flat sequence, ask for it directly with the `flat` routine:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisation (Itemization)

Sometimes you want the opposite. You want to protect a container from flattening, even inside `flat`. The `$(...)` construct _itemises_ its argument. This means it marks the result as a single item. Compare the previous example with this one:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Here, `$(@a)` keeps `@a` as one element. But `@b` is still flattened into its two values. This is the idea of the `$` sigil again. A `$` means “treat this as a single thing”.

{% include nav.html %}
