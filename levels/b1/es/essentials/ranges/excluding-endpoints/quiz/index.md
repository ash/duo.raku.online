---
title: Quiz — Crear rangos
---

{% include menu.html %}

Selecciona las líneas con la sintaxis correcta de Raku.

{:.quiz}
1 | 1..10
1 | 1 .. 10
1 | -1..20
0 | -1 . . 20
1 | 6^..10
0 | 7^.. ^10
1 | 10..^20
1 | 30^..^30
0 | 30 ^ .. ^ 30
1 | 30 ^..^ 30
1 | ^40
1 | ^ 50 | Está bien, pero se ve un poco raro.
0 | 60^ | No es una sintaxis válida.

## Comentarios

Todos los operadores de rango son secuencias de caracteres sin cortes, como los demás operadores de Raku. Así que no puedes poner un espacio entre sus partes.

{% include quiz.html %}

{% include nav.html %}
