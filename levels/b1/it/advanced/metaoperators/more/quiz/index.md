---
title: Quiz — Hyper e cross
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

Il meta-operatore hyper `»+»` applica `+` a ogni elemento. A destra c'è un solo valore, `10`. Quindi questo valore viene esteso a tutta la lista. Ogni elemento aumenta di `10`: `(11 12 13)`. Una riduzione `[+]` invece trasformerebbe la lista in una sola somma, `6`.

</div>

{% include nav.html %}
