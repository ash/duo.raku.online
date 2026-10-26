---
title: Quiz — El Stash
---

{% include menu.html %}

El módulo `Greeting` exporta `hello` y define `our $version`. ¿Que devuelve `Greeting::.keys.sort`?

{:.quiz}
1 | ($versión EXPORT)
0 | ($versión)
0 | ($versión &hello)
0 | (hello versión)

{% include quiz.html %}

<div class="extended-explanation">

`$version` es la variable `our` del módulo, y aparece en la lista con su sigilo. `EXPORT` es un paquete que Raku añade automáticamente para los nombres con `is export`. Así que el `hello` exportado aparece allí, no como un nombre aparte en el paquete.

</div>

{% include nav.html %}
