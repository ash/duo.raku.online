---
title: Contextos
---

{% include menu.html %}

Un valor en Raku puede comportarse de forma diferente, según el _contexto_ donde lo usas. Por ejemplo, el mismo array puede actuar como un número, que es su longitud. Puede actuar como una cadena, con sus elementos unidos. O puede actuar como un valor de verdad, que muestra si el array está vacío. Todo depende de lo que pide el código que lo rodea.

El contexto explica mucho de Raku que, sin él, puede parecer sorprendente. Explica por qué `+@array` es un número. Explica por qué un array en un escalar actúa como un solo elemento. Y explica por qué `if @array` comprueba si el array está vacío. Esta sección trata los contextos principales.

{% include nav.html %}
