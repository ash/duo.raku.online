---
title: Quiz — Posfijo `for`*
---

{% include menu.html %}

Termina el programa. Debe usar `for` después del bloque y debe imprimir este texto:

    A
    A
    B
    B
    C
    C

Aquí está el comienzo del código:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Este código usa un bloque de código con <code>for</code> después. Nota que <code>for</code> debe estar en la misma línea que la llave de cierre. Si lo pones en una línea nueva, el bloque ya no es parte del bucle. Entonces obtienes un error: <code>Missing block</code>. Es mejor no usar bloques de código con formas posfijas de esta manera.</div>

{% include quiz.html %}

{% include nav.html %}
