---
title: Quiz — Quoting-Adverbien
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my $price = 5;
say qq:!s{costs $price};
```

{:.quiz}
0 | costs 5
1 | costs $price
0 | costs
0 | costs {5}

{% include quiz.html %}

<div class="extended-explanation">

`qq` interpoliert normalerweise Skalare, aber ein Adverb mit einem `!` schaltet eine Funktion *aus*. Hier schaltet `:!s` die skalare Interpolation aus. Deshalb bleibt `$price` genau so, wie es geschrieben ist, und wird nicht durch `5` ersetzt.

</div>

{% include nav.html %}
