---
title: Quiz — `when`
---

{% include menu.html %}

¿Que imprime el siguiente programa?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | both lines
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Después de coincidir, un bloque `when` *sale* automáticamente del `given`. Así que no hay fall-through. `5` cumple la primera condición, `$_ > 0`, así que se imprime `positive`. Nunca se llega al segundo `when 5`, aunque también coincidiría.

</div>

{% include nav.html %}
