---
title: Quiz — Twigils
---

{% include menu.html %}

Welke twigil markeert een **dynamische** variabele, die Raku via de call stack vindt?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

De `*`-twigil markeert een dynamische variabele, bijvoorbeeld `$*OUT` of `$*greeting`. De `?`-twigil is voor compile-time waarden, en `!` is voor een privaat attribuut. De `.`-twigil is voor de accessor van een attribuut.

</div>

{% include nav.html %}
