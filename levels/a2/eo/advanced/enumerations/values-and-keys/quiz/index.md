---
title: Kvizo — Enumeraciaj valoroj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

`.value` donas la nombron malantaŭ konstanto. Sed `.key` donas ĝian *nomon* kiel ĉenon. Do `Tue.key` estas `Tue`. La nombro `2` de ĉi tiu konstanto ne gravas ĉi tie.

</div>

{% include nav.html %}
