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

Jūs pieskaitāt veselu skaitli. Datums pavirzās uz priekšu par tik dienām. Tas pats pāriet nākamajā mēnesī. Paskatieties uz piecām dienām pēc 2026. gada 28. janvāra. Janvārī ir vēl trīs dienas: 29., 30. un 31. Pēc tam nāk vēl divas dienas. Tātad atbilde ir 2. februāris.

</div>

{% include nav.html %}
