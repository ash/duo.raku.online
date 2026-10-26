---
title: Quiz — Export-tags
translations_gpt: 'Quiz — Exporttags'
---

{% include menu.html %}

Een module heeft `sub hello is export` en `sub goodbye is export(:partings)`. Een programma heeft `use Greeting :partings;`. Welke subroutines kan het programma direct aanroepen?

{:.quiz}
1 | Alleen `goodbye`
0 | Alleen `hello`
0 | Zowel `hello` als `goodbye`
0 | Geen van beide

{% include quiz.html %}

<div class="extended-explanation">

Met een tag importeert `use` de groep van die tag *in plaats van* de standaardgroep. `:partings` haalt dus wel `goodbye` binnen, maar niet `hello`. Vraag voor allebei om de ingebouwde tag `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
