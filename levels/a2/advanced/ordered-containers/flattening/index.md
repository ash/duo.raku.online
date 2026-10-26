---
title: Flattening and itemisation (itemization)
---

{% include menu.html %}

You can put one array inside another. Raku does _not_ join their elements by itself. Look at this program:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

The array `@c` has only two elements: the arrays `@a` and `@b`. Raku keeps each container as one item. Its elements do not go into the outer array. It is the same with an array among other values:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Do you want one flat sequence? Then ask for it with the `flat` routine:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisation (Itemization)

Sometimes you want the opposite. You want to keep a container in one piece, even inside `flat`. The `$(...)` construct _itemises_ its argument. This means that it marks the result as one single item. Compare the last example with this one:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Here, `$(@a)` keeps `@a` as one element. But `@b` still becomes flat. It gives its two values. This is the idea of the `$` sigil again. A `$` means “treat this as a single thing”.

{% include nav.html %}
