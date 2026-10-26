---
title: Zip metaoperators
---

{% include menu.html %}

The zip meta-operator `Z` takes two lists, or more. It puts their elements together by position:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

The result is a list of groups. The first group has the first element of each list. The second group has the second element of each list, and so on.

There is a more clever way too. You can use `Z` with an operator. Then the operator works on each pair. For example, `Z+` adds the elements at the same positions:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Here, the zip meta-operator works with the operator `+`. It calculates `1 + 10`, `2 + 20`, and `3 + 30`. In the same way, `Z*` multiplies the elements at the same positions:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

And `Z~` joins the strings at the same positions:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
