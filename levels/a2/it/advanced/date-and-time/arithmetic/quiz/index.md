---
title: Quiz — Aritmetica delle date
---

{% include menu.html %}

Cosa stampa questo programma?

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

Aggiungi un intero. La data va avanti di quel numero di giorni. Passa da sola al mese successivo. Guarda cinque giorni dopo il 28 gennaio 2026. Gennaio ha ancora tre giorni: 29, 30 e 31. Poi vengono altri due giorni. Quindi la risposta è il 2 febbraio.

</div>

{% include nav.html %}
