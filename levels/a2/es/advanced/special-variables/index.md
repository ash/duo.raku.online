---
title: Variables especiales y dinámicas
---

{% include menu.html %}

El nombre de una variable de Raku puede tener un segundo signo después del sigilo. Este signo es un _twigil_. El twigil te dice dónde vive la variable. También te dice cómo la encuentra Raku. Por ejemplo, la variable puede ser dinámica. O el compilador te la puede dar. O puede pertenecer a un objeto.

Esta sección explica los twigils. Luego mira de cerca el tipo más útil: las variables _dinámicas_. Raku encuentra una variable normal por su ámbito léxico. Este es el bloque donde la declaras. Raku encuentra una variable dinámica de otra forma. Busca en la pila de llamadas. La pila de llamadas muestra qué código llamó al código actual. Por último, la sección muestra las variables especiales que Raku te da.

{% include nav.html %}
