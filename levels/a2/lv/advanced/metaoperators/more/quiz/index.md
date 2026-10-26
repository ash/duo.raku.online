---
title: Viktorīna — Hiper un krustojums
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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

Hiper metaoperators `»+»` lieto `+` katram elementam. Labajā pusē ir tikai viena vērtība, `10`. Raku lieto šo vērtību visam sarakstam. Tāpēc katrs elements kļūst par `10` lielāks: `(11 12 13)`. Redukcija `[+]` strādā citādi. Tā pārvērš sarakstu par vienu summu, `6`.

</div>

{% include nav.html %}
