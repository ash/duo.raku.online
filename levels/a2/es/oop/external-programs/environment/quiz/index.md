---
title: Quiz — El entorno
translations_gpt:
---

{% include menu.html %}

¿Qué variable contiene las variables de entorno del programa?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` es el hash dinámico con las variables de entorno. Lees una variable por su nombre, como en `%*ENV<HOME>`. `@*ARGS` es diferente. Contiene los argumentos de la línea de comandos. Son los valores después del nombre del programa en la orden.

</div>

{% include nav.html %}
