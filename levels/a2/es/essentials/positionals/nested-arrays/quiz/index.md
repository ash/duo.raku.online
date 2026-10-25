---
title: Quiz — Arrays anidados
---

{% include menu.html %}

Un array de arrays guarda temperaturas. Son de cuatro días. Hay tres medidas para cada día:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Elementos individuales

¿Qué imprime cada una de estas líneas de código?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Comparando

Cada comparación da un resultado booleano, `True` o `False`. Elige el resultado correcto.

{:.quiz-select}
Falso | `@data[0][0] == @data[2][2]` es&nbsp; (: Falso, Verdadero :)
Verdadero | `@data[1][1] == @data[2][0]` es&nbsp; (: Falso, Verdadero :)

## Longitudes

Aquí hay algunas llamadas al método `elems`. ¿Qué valor devuelve cada llamada?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
