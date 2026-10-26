---
title: Quiz — Enumeraciones
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

Cada constante tiene un número. Los números empiezan en cero y siguen el orden de la lista. Así, `red` es `0`, `green` es `1`, y `blue` es `2`. En aritmética, las constantes funcionan como estos números. Así que `green + blue` es `1 + 2`. Eso es `3`.

</div>

{% include nav.html %}
