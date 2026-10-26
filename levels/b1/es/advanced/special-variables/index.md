---
title: Variables especiales y dinámicas
---

{% include menu.html %}

Un nombre de variable en Raku puede tener una segunda marca después del sigilo. Esta marca se llama _twigil_. El twigil te dice dónde vive la variable y cómo la encuentra Raku. Por ejemplo, muestra si la variable tiene un ámbito dinámico. O muestra que la variable viene del compilador o pertenece a un objeto.

Esta sección explica los twigils. Luego mira de cerca el tipo más útil, las variables _dinámicas_. Raku las busca a través de la pila de llamadas, no por el ámbito léxico habitual. Por último, da una vista general de las variables especiales que Raku define para ti.

{% include nav.html %}
