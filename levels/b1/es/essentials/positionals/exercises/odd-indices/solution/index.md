---
title: 'Solution: Índices impares'
---

{% include menu.html %}

Puedes resolver esta tarea con la construcción `loop`. Entonces sumas 2 a la variable del bucle en cada iteración. Pero también puedes usar un bucle `for`. Recorre los números desde 1 hasta la mitad de la longitud del arreglo. Luego multiplicas cada número por dos.

## Código

Aquí está la solución:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Encuentra el programa en el archivo [odd-índices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Salida

Primero, ejecuta el programa con los elementos de datos originales.

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

Comprueba que el nuevo elemento con un índice impar aparece en la salida:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Comentarios

Volveremos a esta tarea en la próxima parte del curso. Entonces la resolveremos de una forma completamente diferente.

{% include nav.html %}
