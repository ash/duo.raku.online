---
title: Quiz — Voorrang
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

`**` heeft een hogere voorrang dan `*`, dus de machtsverheffing gebeurt eerst. `3 ** 2` is `9`, en daarna is `2 * 9` gelijk aan `18`. Als je het van links naar rechts leest als `(2 * 3) ** 2`, krijg je het verkeerde antwoord, `36`.

</div>

{% include nav.html %}
