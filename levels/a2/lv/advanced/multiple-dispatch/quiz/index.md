---
title: 'Viktorīna — Nosūtīšana ar `where`'
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Nosacījums `where $n %% 2` ir patiess skaitlim `4`. Tāpēc Raku izvēlas specifiskāko kandidātu. Tas izdrukā `even`. Otrajam kandidātam ir tikai `Int`. Tas pieņem visas vērtības, kas neatbilst nosacījumam.

</div>

{% include nav.html %}
