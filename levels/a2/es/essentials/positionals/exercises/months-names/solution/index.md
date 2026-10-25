---
title: 'Solution: Nombres de los meses'
---

{% include menu.html %}

El programa toma los nombres de los meses del array `@months`. Este array tiene doce cadenas. Los índices de un array empiezan en 0. Así que debemos restar 1 al número de entrada. Lo hacemos antes de usarlo como índice.

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

Ejecuta el programa varias veces. Ves diferentes nombres de meses.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Estilo

Hay diferentes formas de dar formato a una lista así. Puedes elegir cualquiera de ellas. Compara algunas opciones:

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

También puedes poner todos los meses en una línea.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
