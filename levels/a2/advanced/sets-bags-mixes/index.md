---
title: Sets, bags, and mixes
---

{% include menu.html %}

Raku has arrays and hashes. It also has a few special containers for groups of values. The simplest one is the `Set`. Its values are _distinct_, so each value is different from the others. The values in a set have no order. A value is in the set, or it is not. If a value comes twice, the set ignores the second one.

To make a set, use the `set` routine. Values that repeat become one value:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

We give the set five numbers. But it has only three elements. This is because `1` and `2` appear more than once.

You usually ask a set one main question. Is a value in the set? The `∈` operator answers it. You read `∈` as “is an element of”. It returns a Boolean, `True` or `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Maybe you want to use only plain ASCII characters. Then write the same operator as `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

The next topics show how to combine sets. They also show bags and mixes. Bags and mixes are close relatives of sets.

{% include nav.html %}
