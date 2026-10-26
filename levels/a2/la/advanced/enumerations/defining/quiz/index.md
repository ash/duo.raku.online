---
title: Quiz — Enumerationes
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Quaeque constans numerum habet. Numeri ab zero incipiunt et ordinem indicis sequuntur. Itaque `red` est `0`, `green` est `1`, et `blue` est `2`. In arithmetica constantes ut hi numeri operantur. Itaque `green + blue` est `1 + 2`. Hoc est `3`.

</div>

{% include nav.html %}
