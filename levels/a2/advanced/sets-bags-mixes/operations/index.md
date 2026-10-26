---
title: Set operations
---

{% include menu.html %}

You can combine sets with the usual operations from set theory. Set theory is a part of mathematics. Each operator has a Unicode symbol. It also has a way to write it in ASCII. Use the one that you like better.

The _union_ is `∪`, or `(|)` in ASCII. It takes all the values from both sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

The value `3` is in both sets. So the union has five distinct elements: `1, 2, 3, 4, 5`.

The _intersection_ is `∩`, or `(&)` in ASCII. It keeps only the values that are in both sets:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — note that sets are unordered
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Here, the intersection has `2` and `3`. These values are in both sets. A set has no order. So in the output, the two elements can come in any order.

These operations give a set too. So you can ask it the same questions. How many elements does it have? Is a certain value in it?

{% include nav.html %}
