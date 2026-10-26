---
title: Quiz — gist y Str
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

`.Str` da la forma de cadena simple. Aquí, los elementos simplemente se unen con espacios, sin corchetes: `1 2 3`. La forma con corchetes, `[1 2 3]`, la obtienes de `.gist`, y por lo tanto también de `say @a`.

</div>

{% include nav.html %}
