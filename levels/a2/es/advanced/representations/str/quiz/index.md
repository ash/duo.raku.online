---
title: Quiz — gist y Str
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` da la forma de cadena simple. Los elementos solo están unidos con espacios. No hay corchetes: `1 2 3`. La forma con corchetes, `[1 2 3]`, viene de `.gist`. Por eso `say @a` también la imprime.

</div>

{% include nav.html %}
