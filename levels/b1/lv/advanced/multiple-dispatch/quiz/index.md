---
title: 'Viktorīna — Nosūtīšana ar `where`'
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šāda programma?

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

`4` atbilst nosacījumam `where $n %% 2`. Tāpēc Raku izvēlas specifiskāko kandidātu, kas izdrukā `even`. Kandidāts ar vienkāršu `Int` uztver visu, kas neatbilst nosacījumam.

</div>

{% include nav.html %}
