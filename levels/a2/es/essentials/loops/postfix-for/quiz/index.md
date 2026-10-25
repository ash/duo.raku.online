---
title: Quiz — Posfijo `for`*
---

{% include menu.html %}

Termina el programa. Pon `for` después del bloque. El programa debe imprimir este texto:

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

<div class="extended-explanation">Aquí, un bloque de código tiene <code>for</code> después. La palabra <code>for</code> debe estar en la misma línea que la <code>}</code>. Si <code>for</code> está en una línea nueva, el bucle no tiene bloque. Entonces Raku muestra un error antes de ejecutar el programa: <code>Missing block</code>. Intenta no usar bloques de esta forma.</div>

{% include quiz.html %}

{% include nav.html %}
