---
title: Lazy and infinite sequences
---

{% include menu.html %}

A sequence does not need to compute all its values at once. Raku sequences are _lazy_: each value is made only when it is really needed. So you can describe a sequence that has no end at all.

To write an infinite sequence, use `Inf` as the endpoint. The `...` operator binds more loosely than `=`, so Raku would do the `=` first. That is why you put the sequence in parentheses:

```raku
my $naturals = (1 ... Inf);
```

Without the parentheses, `my $naturals = 1 ... Inf` would assign only `1` to the variable. Then it would build the sequence separately. Computing an endless sequence that nobody uses would make the program hang.

At this point, nothing is computed. The sequence only gives out values when you ask for them. The `head` method takes the first few of them:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

The sequence is infinite, but only the first five numbers are generated. Without laziness, the program would try to build the whole endless sequence. Such a program would never finish.

If a sequence is finite, the `tail` method can take values from its end instead:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Laziness lets you separate two things. The first is the _description_ of a sequence. The second is the decision about how much of it to use.

{% include nav.html %}
