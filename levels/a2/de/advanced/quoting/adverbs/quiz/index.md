---
title: Quiz — Quoting-Adverbien
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Normalerweise interpoliert `qq` Skalare. Aber ein Adverb mit einem `!` schaltet eine Funktion *aus*. Hier schaltet `:!s` die skalare Interpolation aus. Deshalb bleibt `$price` genau so, wie es ist. Raku ersetzt die Variable nicht durch `5`.

</div>

{% include nav.html %}
