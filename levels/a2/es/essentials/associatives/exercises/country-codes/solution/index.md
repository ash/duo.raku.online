---
title: 'Solution: Códigos de países'
---

{% include menu.html %}

El programa tiene un bucle sobre el array `@codes`. Para cada código, toma el nombre del hash: `%cc{$_}`.

## Código

Aquí hay una posible solución. No muestra todos los países:

```raku
my %cc =
    AD => 'Andorra',
    AE => 'Emiratos Árabes Unidos',

    # . . .

    ZM => 'Zambia',
    ZW => 'Zimbabue'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Encuentra el programa en el archivo [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Salida

Para estos códigos, el programa imprime esta lista de países:

```console
$ raku exercises/associatives/country-codes.raku
Francia
Italia
Alemania
Estonia
Letonia
Estados Unidos de América
China
India
Brasil
```

{% include nav.html %}
