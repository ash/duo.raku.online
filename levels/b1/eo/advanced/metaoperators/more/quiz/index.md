---
title: Kvizo — Hiper kaj kruca
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

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

La hipera meta-operatoro `»+»` aplikas `+` al ĉiu elemento. Dekstre estas nur unu valoro, `10`. Do ĝi estas etendata tra la tuta listo. Ĉiu elemento ricevas `10` pli: `(11 12 13)`. Redukto `[+]` anstataŭe farus el la listo unu solan sumon, `6`.

</div>

{% include nav.html %}
