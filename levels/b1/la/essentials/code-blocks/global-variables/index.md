---
title: Globales variabiles
---

{% include menu.html %}

Creemus variabilem ante clausulam codicis:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Hic `$x` est variabilis globalis. In ambitu globali est, et programma `42` bis imprimit.

{% include nav.html %}
