---
title: Quiz — Variables especiales
---

{% include menu.html %}

¿En qué variable integrada puedes encontrar los argumentos de línea de comandos del programa?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Los argumentos de línea de comandos vienen como una *lista*. Así que la variable tiene el sigilo `@` y el twigil dinámico `*`: `@*ARGS`. `%*ENV` es el hash del entorno y no los argumentos. `@*ARGV` es como lo escribe Perl, y Raku no usa este nombre.

</div>

{% include nav.html %}
