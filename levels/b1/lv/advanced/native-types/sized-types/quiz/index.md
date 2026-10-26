---
title: Viktorīna — Pārpilde
---

{% include menu.html %}

Ko izdrukā šī programma?

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

`int8` satur vērtības no `-128` līdz `127`. Vērtības apgriežas arī pie apakšējās robežas. Ja jūs samazināt mazāko vērtību, jūs nevarat iegūt `-129`. Tāpēc tā apgriežas uz lielāko vērtību, `127`.

</div>

{% include nav.html %}
