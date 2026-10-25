---
title: Converting types using constructor forms
---

{% include menu.html %}

A similar way is to create a new object of the type you need. To do this, you call its constructor, which has the same name as the type. For example:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Here, a string with a floating-point number in it is converted to an integer.

{% include nav.html %}
