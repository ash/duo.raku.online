---
title: 'Solution: Cuadrados y cubos en un bucle'
---

{% include menu.html %}

## Código

Aquí está el código. El bucle `for` usa un rango de `-5` a `5`.

```raku
for -5 .. 5 -> $n {
    say "$n\t{$n²}\t{$n³}";
}
```

🦋 Encuentra el programa en el archivo [squares-and-cubes-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/squares-and-cubes-loop.raku).

## Ejemplo

Ejecuta el programa y mira el resultado.

```console
$ raku exercises/loops/squares-and-cubes-loop.raku
-5	25	-125
-4	16	-64
-3	9	-27
-2	4	-8
-1	1	-1
0	0	0
1	1	1
2	4	8
3	9	27
4	16	64
5	25	125
```

{% include nav.html %}
