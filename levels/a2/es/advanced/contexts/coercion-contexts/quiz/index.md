---
title: Quiz — Contextos
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

El prefijo `+` pone el contexto numérico. Como número, un array es el número de sus elementos. Así que `+@a` es `3`. No es la suma. Para el contexto de cadena, usa `~`. Da `10 20 30`. Para sumar los elementos, usa `[+]`.

</div>

{% include nav.html %}
