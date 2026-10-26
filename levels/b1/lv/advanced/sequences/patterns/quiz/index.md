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

Ar *trim* sākuma vērtībām `...` skatās attiecību starp tām. Virknē `1, 3, 9` katra vērtība ir trīsreiz lielāka par iepriekšējo. Tāpēc virkne turpinās kā ģeometriska: `27, 81`. Ar divām sākuma vērtībām tas tā vietā noteiktu aritmētisku soli.

</div>

{% include nav.html %}
