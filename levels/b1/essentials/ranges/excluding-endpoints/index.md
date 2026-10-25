---
title: Excluding the endpoints of a range
---

{% include menu.html %}

You can exclude one end of a range, or both ends. To do this, add the `^` character to the range operator. In this way, you can build three more operators. The comments list the numbers that each range generates.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

In simple cases like these, you can leave out the spaces around the operator:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

For a range that starts with 0, such as `0..^5`, there is a short form: `^5`.

{% include nav.html %}
