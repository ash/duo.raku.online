---
title: Sets, bags, and mixes
---

{% include menu.html %}

Besides arrays and hashes, Raku has a few special containers for collections of values. The simplest is the `Set`. It is a collection of _distinct_ values in no particular order. Each value is either in the set or not, and repeated values are ignored.

You create a set with the `set` routine. If a value is repeated, the set keeps only one copy:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

We passed in five numbers, but the set has only three elements. This is because `1` and `2` appeared more than once.

The main question you ask a set is whether a value is in it. The `∈` operator, which you read as “is an element of”, returns a Boolean:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

If you want to stay with plain ASCII, write the same operator as `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Next, you will see how to combine sets. You will also meet bags and mixes, which are close relatives of sets.

{% include nav.html %}
