---
title: Quiz — Overflow
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Un `int8` contiene valori da `-128` a `127`. I valori si riavvolgono anche al limite inferiore. Se decrementi il valore minimo, non puoi ottenere `-129`. Quindi torna al valore massimo, `127`.

</div>

{% include nav.html %}
