---
title: Quiz — Aggiungere mesi
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

Un mese dopo il 31 gennaio sarebbe il "31 febbraio", ma quel giorno non esiste. Così `later` sposta indietro il risultato all'ultimo giorno reale di quel mese. Si ottiene il 28 febbraio 2026. Dato che il 2026 non è un anno bisestile, febbraio ha solo 28 giorni.

</div>

{% include nav.html %}
