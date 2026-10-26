---
title: Quiz — Pointy blocks
translations_gpt: 'Quiz — Pointy blocks'
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
(-> $a, $b { $a * $b })(3, 4).say
```

{:.quiz}
1 | 12
0 | 7
0 | 34
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Een pointy block kan meerdere parameters hebben. `-> $a, $b` neemt er twee. Hier bewaart het programma het blok niet in een variabele. Het blok staat tussen haakjes. Het programma roept het meteen aan met `(3, 4)`. Zo krijgt `$a` de waarde `3`, en `$b` de waarde `4`. Het blok vermenigvuldigt ze. Het resultaat is `12`. Dan drukt `.say` aan het eind het af.

</div>

{% include nav.html %}
