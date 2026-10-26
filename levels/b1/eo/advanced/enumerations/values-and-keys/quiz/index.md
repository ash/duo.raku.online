---
title: Kvizo — Enumeraciaj valoroj
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` redonas la nombron malantaŭ konstanto. `.key`, tamen, redonas ĝian *nomon* kiel ĉenon. Do `Tue.key` estas `Tue`, kaj la nombro `2`, kiun ĝi ricevis, ne gravas.

</div>

{% include nav.html %}
