---
title: Quiz — Enumerazioni
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
enum Colour <red green blue>;
say green + blue;
```

{:.quiz}
1 | 3
0 | greenblue
0 | (green blue)
0 | un errore

{% include quiz.html %}

<div class="extended-explanation">

Ogni costante rappresenta un numero. I numeri partono da zero, nell'ordine della lista: `red` è `0`, `green` è `1`, `blue` è `2`. Quando fai calcoli con le costanti, si comportano come questi numeri. Quindi `green + blue` è `1 + 2`, cioè `3`.

</div>

{% include nav.html %}
