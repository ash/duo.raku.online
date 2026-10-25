---
title: Globale variabelen
---

{% include menu.html %}

Laten we een variabele maken vóór het codeblok:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Hier is `$x` een globale variabele. Hij staat in de globale scope, en het programma print twee keer `42`.

{% include nav.html %}
