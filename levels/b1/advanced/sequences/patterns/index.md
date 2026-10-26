---
title: Sequence patterns
---

{% include menu.html %}

The `...` operator knows more patterns than just arithmetic steps.

Suppose you give it three values that grow by multiplication. Then it goes on with a _geometric_ sequence:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Here, each value is twice the one before it. So the sequence keeps doubling until it reaches `64`.

Sequences can have more than numbers. With strings, Raku follows the normal order of the alphabet:

```raku
say 'a' ... 'e'; # (a b c d e)
```

A sequence can count down too. If the endpoint is lower than the start, the values get smaller:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

In each case, you show the pattern by example. The `...` operator then adds the rest.

{% include nav.html %}
