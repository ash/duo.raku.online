---
title: Quiz — Aanhalingsadverbia
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

`qq` interpoleert meestal scalars, maar een bijwoord met een `!` zet een functie *uit*. Hier zet `:!s` scalaire interpolatie uit. Daarom blijft `$price` precies zoals het geschreven is en wordt het niet vervangen door `5`.

</div>

{% include nav.html %}
