---
title: Quiz — Prefix of postfix
---

{% include menu.html %}

Je hebt `++` *na* een variabele gezien. Daar is het een postfix. Je kunt het ook *voor* een variabele schrijven. Wat is de categorie van `++` in `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

Alleen de *positie* bepaalt de categorie. In `++$x` staat de operator voor zijn enige operand. Dus is het een **prefix**-operator. Schrijf dezelfde `++` erna, zoals in `$x++`. Dan is het een postfix. Beide vormen tellen 1 op bij `$x`. De prefix-vorm geeft de nieuwe waarde terug. Het programma print dus `6`.

</div>

{% include nav.html %}
