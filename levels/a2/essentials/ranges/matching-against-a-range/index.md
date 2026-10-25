---
title: Matching against a range
---

{% include menu.html %}

Here is a range and a variable. The variable has an integer value:

```raku
my $r = 1..10;
my $v = 7;
```

Use the _smart-match operator_ `~~`. It checks if the value is in the range:

```
say $v ~~ $r;
```

In this example, the condition is `True`. So the program prints `True`.

{% include nav.html %}
