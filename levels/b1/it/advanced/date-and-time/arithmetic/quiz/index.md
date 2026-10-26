---
title: Quiz — Aritmetica delle date
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
say Date.new(2026, 1, 28) + 5;
```

{:.quiz}
1 | 2026-02-02
0 | 2026-01-33
0 | 2026-02-05
0 | 2026-02-03

{% include quiz.html %}

<div class="extended-explanation">

Se aggiungi un intero, la data va avanti di quel numero di giorni. Passa automaticamente al mese successivo. Cinque giorni dopo il 28 gennaio 2026 si arriva al 2 febbraio. Sono gli ultimi tre giorni di gennaio (29, 30, 31) e poi altri due.

</div>

{% include nav.html %}
