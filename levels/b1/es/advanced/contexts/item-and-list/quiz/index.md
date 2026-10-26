---
title: Quiz — Contexto de ítem
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

El contextualizador `$( … )` fija el contexto de elemento. Así que el array es un solo valor y no una lista de elementos. Por eso el bucle `for` ve un solo elemento y ejecuta su cuerpo solo una vez. Así que `$n` termina en `1`. Sin `$( )`, el bucle se ejecutaría tres veces.

</div>

{% include nav.html %}
