---
title: Quiz — Enumeraties
translations_gpt: Dutch
---

{% include menu.html %}

Wat print het volgende programma?

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

Elke constante staat voor een getal. De getallen beginnen bij nul, in de volgorde van de lijst: `red` is `0`, `green` is `1`, `blue` is `2`. Als je ermee rekent, gedragen de constanten zich als deze getallen. `green + blue` is dus `1 + 2`, en dat is `3`.

</div>

{% include nav.html %}
