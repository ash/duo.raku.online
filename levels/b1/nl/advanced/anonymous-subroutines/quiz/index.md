---
title: Quiz — Pointy blocks
translations_gpt: 'Quiz — Pointy blocks'
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

Een pointy block kan meerdere parameters hebben: `-> $a, $b` neemt er twee. Hier wordt het blok helemaal niet in een variabele opgeslagen. Het staat tussen haakjes en wordt meteen aangeroepen met `(3, 4)`. Zo krijgt `$a` de waarde `3`, en `$b` de waarde `4`. Het blok vermenigvuldigt ze en geeft `12`, en de `.say` aan het eind drukt dat af.

</div>

{% include nav.html %}
