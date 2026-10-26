---
title: 'Kvizo — La operatoro `...`'
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

Ĉi tie estas *tri* komencaj valoroj. Do `...` rigardas la proporcion inter ili. Tio estas, kiom da fojoj pli granda estas ĉiu valoro. En `1, 3, 9`, ĉiu valoro estas trioble pli granda ol la antaŭa. Do la sekvenco daŭras kiel geometria sekvenco: `27, 81`. Kun du komencaj valoroj, vi anstataŭe ricevas aritmetikan paŝon.

</div>

{% include nav.html %}
