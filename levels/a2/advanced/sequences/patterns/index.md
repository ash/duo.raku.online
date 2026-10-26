---
title: Sequence patterns
---

{% include menu.html %}

The `...` operator can find more than arithmetic steps.

Give it three values that grow by multiplication. Then it goes on with a _geometric_ sequence:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Here, each value is two times the value before it. So the sequence doubles each time. It stops when it reaches `64`.

Sequences can also have other values, not only numbers. With strings, Raku uses the order of the alphabet:

```raku
say 'a' ... 'e'; # (a b c d e)
```

A sequence can also count down. If the endpoint is smaller than the start, the values get smaller:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Each time, you show the pattern with an example. Then the `...` operator adds the other values.

{% include nav.html %}
