---
title: Globales variabiles
---

{% include menu.html %}

Nunc variabilem ante clausulam codicis creamus:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Hic `$x` est variabilis globalis. In ambitu globali est. Totum programma eam adhibere potest. Programma `42` bis imprimit.

{% include nav.html %}
