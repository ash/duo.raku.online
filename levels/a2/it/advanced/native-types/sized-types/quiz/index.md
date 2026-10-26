---
title: Quiz — Overflow
---

{% include menu.html %}

Cosa stampa questo programma?

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

Un `int8` contiene valori da `-128` a `127`. I valori si riavvolgono anche in basso. Prendi il valore più piccolo e decrementalo. Non puoi ottenere `-129`. Così il valore si riavvolge al valore più grande, `127`.

</div>

{% include nav.html %}
