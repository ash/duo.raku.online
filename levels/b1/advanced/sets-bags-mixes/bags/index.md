---
title: Bags and mixes
---

{% include menu.html %}

A set only tells you _whether_ a value is in it. But sometimes you also need to know _how many times_ the value is there. For this, there is the `Bag`, which keeps a count for each value.

You create a bag with the `bag` routine. Repeated values do not become one value. Instead, they are counted:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

You can ask the bag for a value with the `< >` subscript. Then you get the number of times this value was put in. The `total` method gives the sum of all the counts:

```raku
say bag(<a b a c a>).total; # 5
```

A `Mix` is the same idea as a bag. The difference is that the counts, called _weights_, can be fractions, not only whole numbers. To give the weights yourself, pair each value with its weight. Then turn the list into a mix with `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

You look up a weight with `< >` and add up the weights with `total`. Both work exactly as for a bag. The only difference is that the numbers do not have to be whole. Here, `total` adds the weights `2.5` and `0.75`, which gives `3.25`. It is the sum of the weights, not the number of values. Bags and mixes are useful whenever you need to keep track of amounts. For example, you can count how often each word appears in a text. Or you can give weights to options.

{% include nav.html %}
