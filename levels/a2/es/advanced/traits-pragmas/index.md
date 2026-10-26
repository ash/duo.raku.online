---
title: Traits y pragmas
translations_gpt:
---

{% include menu.html %}

Dos características cambian cómo Raku **compila** tu código. Esto pasa antes de ejecutar el código. La primera característica es un _trait_. Un trait cambia una declaración. La declaración puede ser una variable o una rutina. Escribes un trait con `is`. La segunda característica es una _pragma_. Una pragma se parece un poco a un módulo. La activas con `use`, o la desactivas con `no`. Cambia una regla para el resto del ámbito léxico. En otras palabras, funciona hasta el final del bloque.

Ya has usado un trait, como `is default`. Pero entonces no aprendiste mucho sobre él. Esta sección mira los traits más de cerca. Muestra cómo escribir tu propio trait. También presenta las pragmas.

{% include nav.html %}
