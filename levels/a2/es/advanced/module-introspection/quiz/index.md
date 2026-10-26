---
title: Quiz — El Stash
---

{% include menu.html %}

El módulo `Greeting` exporta `hello`. También tiene `our $version`. ¿Qué devuelve `Greeting::.keys.sort`?

{:.quiz}
1 | ($versión EXPORT)
0 | ($versión)
0 | ($versión &hello)
0 | (hello versión)

{% include quiz.html %}

<div class="extended-explanation">

`$version` es la variable `our` del módulo. Está en la lista con su sigilo. `EXPORT` es un paquete. Raku lo añade automáticamente. Tiene los nombres con `is export`. Así que el `hello` exportado está en `EXPORT`. No es un nombre aparte en el paquete.

</div>

{% include nav.html %}
