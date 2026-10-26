---
title: Quiz — Enumerationes
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Quaeque constans numerum significat. Numeri ab zero incipiunt, ordine indicis: `red` est `0`, `green` est `1`, `blue` est `2`. Cum arithmeticam cum eis facis, constantes ut hi numeri agunt. Itaque `green + blue` est `1 + 2`, quod est `3`.

</div>

{% include nav.html %}
