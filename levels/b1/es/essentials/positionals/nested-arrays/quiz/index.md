---
title: Quiz — Arrays anidados
---

{% include menu.html %}

Un array de arrays guarda las temperaturas de cuatro días. Hay tres medidas por día:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Elementos individuales

¿Qué esperas que imprima cada una de las siguientes líneas de código?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Comparando

Elige el resultado booleano correcto de cada una de estas comparaciones.

{:.quiz-select}
Falso | `@data[0][0] == @data[2][2]` es&nbsp; (: Falso, Verdadero :)
Verdadero | `@data[1][1] == @data[2][0]` es&nbsp; (: Falso, Verdadero :)

## Longitudes

¿Qué valor devuelve cada una de estas llamadas al método `elems`?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
