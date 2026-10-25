---
title: Quiz — Posfijo `for`*
---

{% include menu.html %}

Intenta terminar el programa para que use la forma posfija de `for` e imprima el siguiente texto:

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

<div class="extended-explanation">Este código es un ejemplo de un bloque de código con el <code>for</code> posfijo. Nota que <code>for</code> debe estar en la misma línea que la llave de cierre. Si lo pones en una línea nueva, el bloque queda separado del bucle y obtienes un error de compilación: <code>Missing block</code>. Probablemente es mejor no usar bloques de código con constructos posfijos de esta manera.</div>

{% include quiz.html %}

{% include nav.html %}
