---
title: Viktorīna — Mēnešu pieskaitīšana
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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

Vienu mēnesi pēc 31. janvāra būtu «31. februāris», bet tādas dienas nav. Tāpēc `later` pārceļ rezultātu atpakaļ uz šī mēneša pēdējo īsto dienu. Tas dod 2026. gada 28. februāri. Tā kā 2026. gads nav garais gads, februārī ir tikai 28 dienas.

</div>

{% include nav.html %}
