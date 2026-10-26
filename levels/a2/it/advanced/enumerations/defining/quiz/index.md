---
title: Quiz — Enumerazioni
---

{% include menu.html %}

Cosa stampa questo programma?

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

Ogni costante ha un numero. I numeri partono da zero e seguono l'ordine della lista. Quindi `red` è `0`, `green` è `1` e `blue` è `2`. Nei calcoli, le costanti funzionano come questi numeri. Quindi `green + blue` è `1 + 2`. Fa `3`.

</div>

{% include nav.html %}
