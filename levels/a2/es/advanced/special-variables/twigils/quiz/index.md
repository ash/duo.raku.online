---
title: Quiz — Twigils
---

{% include menu.html %}

Raku encuentra una variable **dinámica** a través de la pila de llamadas. ¿Qué twigil muestra que una variable es dinámica?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

El twigil `*` muestra una variable dinámica, como en `$*OUT` o `$*greeting`. El twigil `?` es para valores de tiempo de compilación. `!` es para un atributo privado. Y `.` es para el accesor de un atributo.

</div>

{% include nav.html %}
