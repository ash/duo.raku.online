---
title: Kvizo — Superfluo
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`int8` tenas valorojn de `-128` ĝis `127`. Valoroj ĉirkaŭvolviĝas ankaŭ ĉe la malsupro. Prenu la plej malgrandan valoron kaj malpliigu ĝin. Vi ne povas ricevi `-129`. Do la valoro ĉirkaŭvolviĝas al la plej granda valoro, `127`.

</div>

{% include nav.html %}
