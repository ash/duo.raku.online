---
title: 'Solution: Nombres de los meses'
---

{% include menu.html %}

Los nombres de los meses vienen del array `@months`, que tiene doce cadenas. Los índices de los arrays empiezan en 0. Así que, antes de indexar el array, restamos 1 al número de entrada.

## Código

Aquí está la solución:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Encuentra el programa en el archivo [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Salida

Ejecuta el programa varias veces para ver diferentes nombres de meses.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Estilo

Puedes elegir cómo dar formato a listas como la de este programa. Aquí hay algunas opciones para comparar:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

O:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

También puedes listar todos los meses en una sola línea.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
