---
title: Viktorīna — Prioritāte
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
say 2 * 3 ** 2;
```

{:.quiz}
1 | 18
0 | 36
0 | 12
0 | 81

{% include quiz.html %}

<div class="extended-explanation">

Operatoram `**` ir augstāka prioritāte nekā `*`, tāpēc kāpināšana notiek vispirms. `3 ** 2` ir `9`, un tad `2 * 9` ir `18`. Ja to lasa no kreisās uz labo kā `(2 * 3) ** 2`, iegūst nepareizu atbildi, `36`.

</div>

{% include nav.html %}
