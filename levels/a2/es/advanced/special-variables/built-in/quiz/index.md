---
title: Quiz — Variables especiales
---

{% include menu.html %}

¿Qué variable integrada guarda los argumentos de línea de comandos del programa?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Los argumentos de línea de comandos vienen como una *lista*. Así que la variable tiene el sigilo `@`. También es dinámica, así que tiene el twigil `*`. El resultado es `@*ARGS`. `%*ENV` es el hash del entorno. No tiene los argumentos. `@*ARGV` es el nombre en Perl. Raku no lo usa.

</div>

{% include nav.html %}
