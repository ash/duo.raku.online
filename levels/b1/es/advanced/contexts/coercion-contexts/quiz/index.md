---
title: Quiz — Contextos
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

El prefijo `+` fija el contexto numérico. El valor numérico de un array es el número de sus elementos. Así que `+@a` es `3` y no la suma. Usa `~` para el contexto de cadena, que da `10 20 30`. Para sumar de verdad los elementos, usa `[+]`.

</div>

{% include nav.html %}
