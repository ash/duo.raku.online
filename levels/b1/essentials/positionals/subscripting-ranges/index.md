---
title: Subscripting ranges
---

{% include menu.html %}

A `Range` is a positional data type. As with arrays, you can get any of its elements.

For example, this is how to print the fourth item that the range generates:

```raku
my $r = 10..20;
say $r[3]; # 13
```

There is one important difference. Unlike arrays, ranges do not always keep all their values in memory.

## Size

To get the size of a range, use the `elems` method, just like with arrays.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
