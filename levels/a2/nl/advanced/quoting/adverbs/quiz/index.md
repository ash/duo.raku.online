---
title: Quiz — Aanhalingsadverbia
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

Meestal interpoleert `qq` scalars. Maar een bijwoord met een `!` zet een functie *uit*. Hier zet `:!s` scalaire interpolatie uit. Daarom blijft `$price` precies zoals het is. Raku vervangt het niet door `5`.

</div>

{% include nav.html %}
