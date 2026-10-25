---
title: 'Solution: Índices impares'
---

{% include menu.html %}

Puedes resolver esta tarea con `loop`. Suma 2 a la variable del bucle cada vez. Pero también puedes usar un bucle `for`. Va desde 1 hasta la mitad de la longitud del arreglo. Luego multiplicas cada número por dos.

## Código

Aquí está la solución:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Encuentra el programa en el archivo [odd-índices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Salida

Primero, ejecuta el programa con los datos originales.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Luego, agrega un elemento más a los datos:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

El nuevo elemento tiene un índice impar. Comprueba que está en la salida:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Comentarios

Esta tarea vuelve en la próxima parte del curso. Allí la resolvemos de una forma muy diferente.

{% include nav.html %}
