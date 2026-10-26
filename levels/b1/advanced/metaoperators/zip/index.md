---
title: Zip metaoperators
---

{% include menu.html %}

The zip meta-operator `Z` takes two or more lists. It pairs up their elements by position:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

The result is a list of groups. The first group has the first element of each list. The next group has the second elements, and so on.

Even more cleverly, you can combine `Z` with an operator that works on each pair. For example, `Z+` adds the elements position by position:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Here, the zip meta-operator wraps the `+` operator. It calculates `1 + 10`, `2 + 20`, and `3 + 30`. In the same way, `Z*` multiplies the matching elements:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

And `Z~` joins the matching strings:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
