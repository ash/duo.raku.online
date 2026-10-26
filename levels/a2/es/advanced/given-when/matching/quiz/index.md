---
title: Quiz — `when`
---

{% include menu.html %}

¿Qué imprime este programa?

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

Cuando un bloque `when` coincide, *sale* automáticamente del `given`. Raku no pasa al siguiente `when`. `5` cumple la primera condición, `$_ > 0`. Así que el programa imprime `positive`. El segundo `when 5` también encaja. Pero Raku nunca llega a él.

</div>

{% include nav.html %}
