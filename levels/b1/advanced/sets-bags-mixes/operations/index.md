---
title: Set operations
---

{% include menu.html %}

You can combine sets with the usual operations from set theory. Each operator has a Unicode symbol and an ASCII spelling. You can use either one.

The _union_ `∪`, or `(|)`, collects all the values of both sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Since both sets contain `3`, the union has five distinct elements: `1, 2, 3, 4, 5`.

The _intersection_ `∩`, or `(&)`, keeps only the values that both sets have:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — note that sets are unordered
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Here, the intersection has `2` and `3`, the values that are in both sets. A set has no order of its own. So when you print it, the two elements may come in either order.

The result of these operations is a set too. So you can ask it the same questions. How many elements does it have, and is a certain value in it?

{% include nav.html %}
