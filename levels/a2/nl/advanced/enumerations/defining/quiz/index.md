---
title: Quiz — Enumeraties
translations_gpt: Dutch
---

{% include menu.html %}

Wat print dit programma?

```raku
enum Colour <red green blue>;
say green + blue;
```

{:.quiz}
1 | 3
0 | greenblue
0 | (green blue)
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Elke constante heeft een getal. De getallen beginnen bij nul en volgen de volgorde van de lijst. `red` is dus `0`, `green` is `1` en `blue` is `2`. Bij rekenen werken de constanten als deze getallen. `green + blue` is dus `1 + 2`. Dat is `3`.

</div>

{% include nav.html %}
