---
title: Matching against a range
---

{% include menu.html %}

Take a range and a variable that holds an integer value:

```raku
my $r = 1..10;
my $v = 7;
```

The _smart-match operator_ `~~` lets you check if the value is inside the range:

```
say $v ~~ $r;
```

In this example, the condition is `True`, so the program prints `True`.

{% include nav.html %}
