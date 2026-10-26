---
title: Quiz — Contexten
translations_gpt: 'Quiz — Contexts'
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

De `+`-prefix stelt numerieke context in. De numerieke waarde van een array is het aantal elementen. Dus is `+@a` gelijk aan `3`, en niet aan de som. Gebruik `~` voor stringcontext, wat `10 20 30` geeft. Om de elementen echt bij elkaar op te tellen, gebruik je `[+]`.

</div>

{% include nav.html %}
