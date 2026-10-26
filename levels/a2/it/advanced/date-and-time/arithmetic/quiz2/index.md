---
title: Quiz — Aggiungere mesi
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
say Date.new(2026, 1, 31).later(:months(1));
```

{:.quiz}
1 | 2026-02-28
0 | 2026-03-03
0 | 2026-02-31
0 | 2026-03-31

{% include quiz.html %}

<div class="extended-explanation">

Un mese dopo il 31 gennaio è il "31 febbraio". Ma questo giorno non esiste. Così `later` dà invece l'ultimo giorno vero di quel mese. È il 28 febbraio 2026. Il 2026 non è un anno bisestile. Quindi febbraio ha 28 giorni.

</div>

{% include nav.html %}
