---
title: 'Solution: Tabla de funciones'
---

{% include menu.html %}

Este programa es probablemente un buen ejemplo del bucle `loop`. Con `loop`, puedes fijar los dos extremos y el paso. Los fijas directamente en las unidades que necesitas. Puedes volver a esta tarea más tarde, cuando aprendas las _secuencias_ de Raku.

## Código

Aquí está la solución:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Encuentra el programa en el archivo [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Salida

El programa imprime una larga tabla x — f(x). Aquí tienes una parte de la salida:

```console
$ raku exercises/functions/function-table.raku
-3	9
-2.9	8.41
-2.8	7.84

. . .

-0.2	0.04
-0.1	0.01
0	0
0.1	0.01
0.2	0.04

. . .

2.7	7.29
2.8	7.84
2.9	8.41
3	9
```

## Visualización

Es una buena idea convertir la salida en un gráfico. Puedes hacerlo con otro programa, por ejemplo, Excel o gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
