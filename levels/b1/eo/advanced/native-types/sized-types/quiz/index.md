---
title: Kvizo — Superfluo
translations_gpt:
---

{% include menu.html %}

Kion presas la sekva programo?

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

`int8` tenas valorojn de `-128` ĝis `127`. Valoroj ĉirkaŭvolviĝas ankaŭ ĉe la malsupra rando. Se vi malpliigas la plej malgrandan valoron, vi ne povas ricevi `-129`. Do ĝi iras ĉirkaŭen al la plej granda valoro, `127`.

</div>

{% include nav.html %}
