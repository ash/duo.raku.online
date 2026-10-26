---
title: 'Viktorīna — Operators `...`'
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
say 1, 3, 9 ... 81;
```

{:.quiz}
1 | (1 3 9 27 81)
0 | (1 3 9 81)
0 | (1 3 5 7 ... 81)
0 | (3 9 27)

{% include quiz.html %}

<div class="extended-explanation">

Šeit ir *trīs* sākuma vērtības. Tāpēc `...` skatās attiecību starp tām. Attiecība parāda, cik reižu katra vērtība ir lielāka. Virknē `1, 3, 9` katra vērtība ir trīsreiz lielāka par iepriekšējo. Tāpēc virkne turpinās kā ģeometriska virkne: `27, 81`. Ar divām sākuma vērtībām jūs tā vietā iegūstat aritmētisku soli.

</div>

{% include nav.html %}
