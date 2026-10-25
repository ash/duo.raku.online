---
title: Quiz 2 — la condición en `if`*
---

{% include menu.html %}

Primero corrige el programa, y luego responde la pregunta.

{:.quiz-code .fill}
. | my $password = prompt 'Introduce tu contraseña: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correcto';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrecto';
. | }

¿Qué hace este programa cuando la prueba usa `=`?

{:.quiz-select}
Siempre imprime ‘Correcto’ | Tu respuesta:&nbsp; (: Siempre imprime ‘Correcto’, Siempre imprime ‘Incorrecto’, Imprime ‘Correcto’ para contraseñas correctas e ‘Incorrecto’ para incorrectas, Imprime ‘Incorrecto’ para contraseñas correctas y ‘Correcto’ para incorrectas :)

<div class="extended-explanation">El programa siempre imprime ‘Correcto’, porque <code>$password = '*&(#&$#Y'</code> es una asignación. Da a la variable <code>$password</code> un nuevo valor. Este valor no es ni cero ni una cadena vacía, así que cuenta como <code>True</code>. En este caso, la contraseña del usuario nunca se comprueba.<br/><br/>Si escribes <code>==</code>, el programa se romperá. Intenta convertir las dos cadenas a números, y esto falla. Las dos cadenas son la contraseña del usuario y la contraseña correcta.</div>

{% include quiz.html %}

{% include nav.html %}
