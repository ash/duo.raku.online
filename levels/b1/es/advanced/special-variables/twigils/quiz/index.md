---
title: Quiz — Twigils
---

{% include menu.html %}

¿Qué twigil marca una variable **dinámica**, que Raku encuentra a través de la pila de llamadas?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

El twigil `*` marca una variable dinámica, por ejemplo, `$*OUT` o `$*greeting`. El twigil `?` es para valores de tiempo de compilación, y `!` es para un atributo privado. El twigil `.` es para el accesor de un atributo.

</div>

{% include nav.html %}
