---
title: Viktorīna — Datumu aritmētika
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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

Ja pieskaitāt veselu skaitli, datums pavirzās uz priekšu par tik dienām. Tas automātiski pāriet nākamajā mēnesī. Piecas dienas pēc 2026. gada 28. janvāra ir 2. februāris. Tās ir janvāra pēdējās trīs dienas (29., 30., 31.) un tad vēl divas.

</div>

{% include nav.html %}
