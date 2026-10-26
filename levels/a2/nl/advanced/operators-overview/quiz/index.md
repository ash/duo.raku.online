---
title: Quiz — Voorrang
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

`**` heeft een hogere voorrang dan `*`. Raku berekent dus eerst de macht: `3 ** 2` is `9`. Dan is `2 * 9` gelijk aan `18`. Lees het niet van links naar rechts als `(2 * 3) ** 2`. Dat geeft het verkeerde antwoord, `36`.

</div>

{% include nav.html %}
