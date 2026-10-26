---
title: Quiz — Contesto elemento
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

Il contestualizzatore `$( … )` imposta il contesto elemento. Quindi l'array è un singolo valore e non una lista di elementi. Per questo il ciclo `for` vede un solo elemento ed esegue il suo corpo solo una volta. Così alla fine `$n` vale `1`. Senza `$( )`, il ciclo girerebbe tre volte.

</div>

{% include nav.html %}
