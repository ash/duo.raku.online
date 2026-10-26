---
title: Quiz — Contesto elemento
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

Il contestualizzatore `$( … )` imposta il contesto elemento. Quindi l'array è un solo valore, non una lista di elementi. Il ciclo `for` vede un solo elemento. Così esegue il suo corpo solo una volta. Alla fine, `$n` è `1`. Senza `$( )`, il ciclo gira tre volte.

</div>

{% include nav.html %}
