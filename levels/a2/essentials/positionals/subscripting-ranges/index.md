---
title: Subscripting ranges
---

{% include menu.html %}

A `Range` is a positional data type. Like in an array, you can get any of its elements.

A range makes a sequence of items. For example, here is how you print the fourth element:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Note an important difference from arrays. A range does not always keep all its values in memory.

## Size

To get the size of a range, use the `elems` method. It works in the same way as with arrays.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
