---
title: Quiz — Contexto de ítem
---

{% include menu.html %}

¿Qué imprime este programa?

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

El contextualizador `$( … )` pone el contexto de elemento. Así que el array es un solo valor, no una lista de elementos. El bucle `for` ve un solo elemento. Así que ejecuta su cuerpo solo una vez. Al final, `$n` es `1`. Sin `$( )`, el bucle se ejecuta tres veces.

</div>

{% include nav.html %}
