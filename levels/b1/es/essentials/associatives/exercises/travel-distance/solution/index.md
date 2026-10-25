---
title: 'Solution: Distancia de viaje*'
---

{% include menu.html %}

El archivo [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) contiene un hash de hashes. Esta estructura de datos tiene algunos datos repetidos, pero es muy práctica. Puedes usarla para obtener la distancia entre cualquier par de ciudades.

El resto del programa es un bucle. Recorre todas las partes de la ruta y suma la distancia total.

## Código

Aquí está la solución, con solo una parte del gran conjunto de datos.

```raku
my %distance = 
    Amsterdam => {
        Athens => 3082,
        Berlin => 648,
        # . . .
    },
    # . . .
    Zurich => {
        Amsterdam => 861,
        Athens => 2449,
        # . . .
    };

my @itinerary = < Berlin Prague Vienna Zurich Paris >;

my $total = 0;
for 0 .. @itinerary.elems - 2 -> $index {
    my $from = @itinerary[$index];
    my $to = @itinerary[$index + 1];

    my $distance = %distance{$from}{$to};
    say "$from — $to: $distance km";
    $total += $distance;
}

say "Total trip: $total km";
```

🦋 Encuentra el programa con toda la estructura de datos en el archivo [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Salida

Abajo está la salida del programa para la ruta dada. Prueba otras rutas por las ciudades que están en el hash `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
