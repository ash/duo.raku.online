---
title: Viktorīna — Konteksti
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

Prefikss `+` uzliek skaitlisko kontekstu. Masīva skaitliskā vērtība ir tā elementu skaits. Tāpēc `+@a` ir `3`, nevis summa. Virknes kontekstam izmantojiet `~`, kas dod `10 20 30`. Lai tiešām saskaitītu elementus, izmantojiet `[+]`.

</div>

{% include nav.html %}
