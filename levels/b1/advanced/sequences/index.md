---
title: Sequences
---

{% include menu.html %}

A _sequence_ is a series of values in order, produced one after another. Raku builds sequences with the `...` operator. It finds the pattern in the values you give it. Then it generates the rest, up to an endpoint.

The simplest sequence just counts from one value to another:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

If you give two starting values, Raku finds the step between them. Then it goes on with the same step. This is how you make an arithmetic sequence:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Here, the starting values `1, 3` make the step two. So Raku counts up in twos and stops when it reaches `11`.

The value that `...` produces has the `Seq` type:

```raku
say (1 ... 5).WHAT; # (Seq)
```

The next topics show other patterns that the `...` operator can recognise. They also show how a sequence can be lazy, and even infinite.

{% include nav.html %}
