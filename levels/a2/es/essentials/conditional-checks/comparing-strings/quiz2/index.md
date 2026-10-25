---
title: Quiz 2 — la condición en `if`*
---

{% include menu.html %}

Corrige el programa. Luego responde la pregunta.

{:.quiz-code .fill}
. | my $password = prompt 'Introduce tu contraseña: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correcto';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrecto';
. | }

Ahora pon `=` en la prueba. ¿Qué hace el programa?

{:.quiz-select}
Siempre imprime ‘Correcto’ | Tu respuesta:&nbsp; (: Siempre imprime ‘Correcto’, Siempre imprime ‘Incorrecto’, Imprime ‘Correcto’ para contraseñas correctas e ‘Incorrecto’ para incorrectas, Imprime ‘Incorrecto’ para contraseñas correctas y ‘Correcto’ para incorrectas :)

<div class="extended-explanation">El programa siempre imprime ‘Correcto’. Aquí, <code>$password = '*&(#&$#Y'</code> es una asignación. Da a la variable <code>$password</code> un nuevo valor. Este valor no es cero, y no es una cadena vacía. Así que Raku lo ve como <code>True</code>. Aquí el programa nunca comprueba la contraseña del usuario.<br/><br/>¿Qué pasa si escribes <code>==</code>? Entonces el programa se rompe. Intenta cambiar las dos cadenas a números. Las cadenas son la contraseña del usuario y la contraseña correcta. Esto no funciona, y el programa falla.</div>

{% include quiz.html %}

{% include nav.html %}
