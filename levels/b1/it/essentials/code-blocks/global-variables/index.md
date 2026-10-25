---
title: Variabili globali
---

{% include menu.html %}

Creiamo una variabile prima del blocco di codice:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Qui `$x` è una variabile globale. Si trova nello scope globale, e il programma stampa `42` due volte.

{% include nav.html %}
