---
title: Quiz — Twigils
---

{% include menu.html %}

Raku vindt een **dynamische** variabele via de call stack. Welke twigil laat zien dat een variabele dynamisch is?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

De twigil `*` toont een dynamische variabele, zoals in `$*OUT` of `$*greeting`. De twigil `?` is voor compile-time waarden. `!` is voor een privaat attribuut. En `.` is voor de accessor van een attribuut.

</div>

{% include nav.html %}
