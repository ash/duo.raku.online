---
title: Depuración con `dd`
---

{% include menu.html %}

Puedes depurar un programa de diferentes formas. Depurar significa buscar y corregir errores. La forma más simple es imprimir valores con `say`. También hay herramientas más complejas. Siguen el programa paso a paso. En esta sección, vemos la útil rutina `dd`. Viene dentro del compilador Rakudo. Pero no forma parte del estándar del lenguaje Raku.

El nombre `dd` significa _data dumper_ (volcador de datos). Un volcador de datos imprime datos para el programador. `say` y `put` son para la salida normal de un programa. Pero `dd` es diferente. Muestra un valor en una forma para programadores. Esta forma parece código. Es la misma forma que da el método [`.raku`](/es/advanced/representations/raku-method). Viste este método en la sección anterior. `dd` imprime en el flujo de error estándar. Así no se mezcla con la salida para el usuario.

{% include nav.html %}
