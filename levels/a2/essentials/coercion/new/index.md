---
title: Converting types using constructor forms
---

{% include menu.html %}

There is a similar way. You can make a new object of the type you need. For this, call the constructor of the type. A constructor makes new objects. Its name is the same as the name of the type. For example:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Here, the string has a floating-point number in it. Raku converts it to an integer.

{% include nav.html %}
