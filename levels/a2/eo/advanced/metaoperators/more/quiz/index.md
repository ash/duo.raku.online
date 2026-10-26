---
title: Kvizo — Hiper kaj kruca
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

La hipera meta-operatoro `»+»` uzas `+` por ĉiu elemento. Dekstre estas nur unu valoro, `10`. Raku uzas ĉi tiun valoron por la tuta listo. Do ĉiu elemento ricevas `10` pli: `(11 12 13)`. Redukto `[+]` laboras alimaniere. Ĝi faras el la listo unu sumon, `6`.

</div>

{% include nav.html %}
