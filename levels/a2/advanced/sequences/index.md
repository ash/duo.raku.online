---
title: Sequences
---

{% include menu.html %}

A _sequence_ is a series of values in a fixed order. Raku makes them one after another. Raku builds sequences with the `...` operator. You give it some values. The operator finds the pattern in them. Then it makes the rest of the values, up to an endpoint. The endpoint is the value where the sequence ends.

In the simplest case, the sequence counts from one value to another:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

You can give two values at the start. Then Raku finds the step between them. It goes on with the same step. This way, you make an arithmetic sequence:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Here, the values `1, 3` at the start give a step of two. So Raku counts up by two. It stops when it reaches `11`.

The `...` operator gives a value of the type `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

The next topics show other patterns that the `...` operator knows. They also show that a sequence can be lazy. It can even be infinite and have no end.

{% include nav.html %}
