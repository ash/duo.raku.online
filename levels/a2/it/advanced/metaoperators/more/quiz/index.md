---
title: Quiz — Hyper e cross
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
say (1, 2, 3) »+» 10;
```

{:.quiz}
1 | (11 12 13)
0 | (11 2 3)
0 | 16
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

Il meta-operatore hyper `»+»` usa `+` su ogni elemento. A destra c'è un solo valore, `10`. Raku usa questo valore per tutta la lista. Così ogni elemento aumenta di `10`: `(11 12 13)`. Una riduzione `[+]` funziona in un altro modo. Trasforma la lista in una sola somma, `6`.

</div>

{% include nav.html %}
