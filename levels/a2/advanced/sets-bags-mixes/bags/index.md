---
title: Bags and mixes
---

{% include menu.html %}

A set remembers only _if_ a value is in it. Sometimes you also want to know _how many times_ it is there. For this, there is the `Bag`. It keeps a count for each value.

To make a bag, use the `bag` routine. A bag does not join repeated values into one. It counts them:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Ask the bag for a value with the subscript `< >`. You get the number of times this value went into the bag. The `total` method adds up all the counts:

```raku
say bag(<a b a c a>).total; # 5
```

A `Mix` is like a bag. But in a mix, the counts are called _weights_. A weight does not have to be a whole number. It can also be a fraction. You can give the weights yourself. Pair each value with its weight. Then turn the list into a mix with `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

You get a weight with `< >`. You add up the weights with `total`. Both work in the same way as for a bag. Only the numbers do not have to be whole. Here, `total` adds the weights `2.5` and `0.75`. The result is `3.25`. So `total` gives the sum of the weights. It does not count the values. Bags and mixes are useful when you need to count amounts. For example, a bag can count the words in a text. It tells you how often each word appears. A mix can give weights to options.

{% include nav.html %}
