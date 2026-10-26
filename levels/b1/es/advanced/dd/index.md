---
title: Depuración con `dd`
---

{% include menu.html %}

Hay diferentes formas de depurar un programa. Puedes simplemente imprimir valores con `say`. O puedes usar herramientas más avanzadas que rastrean el programa. En esta sección, vemos la útil rutina `dd`. Viene con el compilador Rakudo, pero el estándar del lenguaje Raku no la incluye.

El nombre `dd` significa _data dumper_ (volcador de datos). Las rutinas `say` y `put` son para la salida normal de un programa. Pero `dd` imprime un valor en una forma que es útil para los desarrolladores. Es la misma forma similar a código que obtienes con el método [`.raku`](/es/advanced/representations/raku-method). Vimos este método en la sección anterior. `dd` imprime en el flujo de error estándar. Así su salida no se mezcla con lo que tu programa imprime para el usuario.

{% include nav.html %}
