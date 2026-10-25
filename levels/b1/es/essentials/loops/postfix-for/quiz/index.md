---
title: Quiz — Posfijo `for`*
---

{% include menu.html %}

Intenta terminar el programa. Debe usar la forma posfija de `for` e imprimir el siguiente texto:

    A
    A
    B
    B
    C
    C

Aquí tienes un borrador del código:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Este código muestra un bloque de código con el <code>for</code> posfijo. Nota que <code>for</code> debe estar en la misma línea que la llave de cierre. En una línea nueva, el bloque ya no es parte del bucle. Entonces obtienes un error de compilación: <code>Missing block</code>. Probablemente es mejor no usar bloques de código con formas posfijas de esta manera.</div>

{% include quiz.html %}

{% include nav.html %}
