---
title: Viktorīna — Konteksti
---

{% include menu.html %}

Ko šī programma izdrukā?

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

Prefikss `+` uzliek skaitlisko kontekstu. Kā skaitlis masīvs ir tā elementu skaits. Tāpēc `+@a` ir `3`. Tā nav summa. Virknes kontekstam izmantojiet `~`. Tas dod `10 20 30`. Lai saskaitītu elementus, izmantojiet `[+]`.

</div>

{% include nav.html %}
