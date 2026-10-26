---
title: Viktorīna — Whatever zvaigzne
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my @a = 5, 6, 7, 8, 9;
say @a[*-2];
```

{:.quiz}
1 | 8
0 | 7
0 | 9
0 | 3

{% include quiz.html %}

<div class="extended-explanation">

Indeksā `*` pati par sevi apzīmē elementu skaitu. Šeit tas ir `5`. Tātad `*-2` ir indekss `3`. Elements ar indeksu `3`, skaitot no nulles, ir `8`.

</div>

{% include nav.html %}
