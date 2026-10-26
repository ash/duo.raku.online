---
title: Quiz — Contexten
translations_gpt: 'Quiz — Contexts'
---

{% include menu.html %}

Wat drukt dit programma af?

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

De prefix `+` stelt numerieke context in. Als getal is een array gelijk aan het aantal elementen. Dus is `+@a` gelijk aan `3`. Het is niet de som. Gebruik `~` voor stringcontext. Dat geeft `10 20 30`. Gebruik `[+]` om de elementen op te tellen.

</div>

{% include nav.html %}
