---
title: Quiz — Crear rangos
---

{% include menu.html %}

Elige las líneas que son código correcto de Raku.

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

Cada operador de rango es un solo grupo de caracteres, sin espacios dentro. Esto también pasa con otros operadores de Raku. Así que no puedes poner un espacio entre las partes de un operador.

{% include quiz.html %}

{% include nav.html %}
