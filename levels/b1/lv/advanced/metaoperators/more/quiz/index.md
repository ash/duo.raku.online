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

Hiper metaoperators `»+»` piemēro `+` katram elementam. Labajā pusē ir tikai viena vērtība, `10`. Tāpēc tā tiek izstiepta pār visu sarakstu. Katrs elements kļūst par `10` lielāks: `(11 12 13)`. Redukcija `[+]` turpretī pārvērstu sarakstu par vienu summu, `6`.

</div>

{% include nav.html %}
