---
title: 'Solution: Cuadrado y cubo'
---

{% include menu.html %}

## Código 1

Una solución simple usa el operador `**`.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Encuentra el programa en el archivo [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Código 2

Otra solución se ve un poco mejor. Usa superíndices Unicode. Son dígitos pequeños en la parte de arriba de la línea.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Encuentra el programa en el archivo [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Salida

Ejecuta el programa varias veces. Pruébalo con diferentes números.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
