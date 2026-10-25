---
title: Globale variabelen
---

{% include menu.html %}

Nu maken we een variabele vóór het codeblok:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Hier is `$x` een globale variabele. Hij staat in de globale scope. Het hele programma kan hem gebruiken. Het programma print twee keer `42`.

{% include nav.html %}
