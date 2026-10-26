---
title: Quiz — Itemcontext
translations_gpt: 'Quiz — Item context'
---

{% include menu.html %}

Wat drukt het volgende programma af?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

De `$( … )`-contextomzetter stelt itemcontext in. Dus is de array een enkele waarde en geen lijst van elementen. Daarom ziet de `for`-lus één item en voert hij zijn body maar één keer uit. Zo eindigt `$n` op `1`. Zonder `$( )` zou de lus drie keer lopen.

</div>

{% include nav.html %}
