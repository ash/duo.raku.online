---
title: Excluding the endpoints of a range
---

{% include menu.html %}

You can leave out one end of the range, or both ends. For this, add the `^` character to the range operator. In this way, you get three more operators. The comments show the numbers that each range gives.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

The cases above are simple. In such cases, you can leave out the spaces around the range operator:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Some ranges start with 0, for example, `0..^5`. There is a short way to write such a range: `^5`.

{% include nav.html %}
