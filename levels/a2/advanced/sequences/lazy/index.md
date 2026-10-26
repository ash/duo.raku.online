---
title: Lazy and infinite sequences
---

{% include menu.html %}

A sequence does not need to compute all its values at once. Sequences in Raku are _lazy_. Raku makes each value only when you really need it. So you can describe a sequence with no end at all.

For an infinite sequence, use `Inf` as the endpoint. Raku does the `=` before the `...`. We say that `...` binds more loosely than `=`. So put the sequence in parentheses:

```raku
my $naturals = (1 ... Inf);
```

Look at `my $naturals = 1 ... Inf` without parentheses. Here, the variable gets only `1`. After that, Raku builds the sequence on its own. Nobody uses this endless sequence. But Raku tries to compute it. So the program hangs and never finishes.

So far, Raku computes nothing. The sequence gives you values only when you ask for them. The `head` method takes the first few values:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

The sequence is infinite. But Raku makes only the first five numbers. Without laziness, the program tries to build the whole endless sequence. Such a program never finishes.

A finite sequence has an end. For such a sequence, the `tail` method takes values from the end:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Laziness lets you do two things separately. First, you give the _description_ of a sequence. Later, you decide how much of it to use.

{% include nav.html %}
