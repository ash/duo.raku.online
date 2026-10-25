---
title: 'Solution: Distancia de viaje*'
---

{% include menu.html %}

El archivo [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) tiene un hash de hashes. Esta estructura de datos guarda un poco más de lo necesario. Cada distancia está dos veces en ella. Pero la estructura es muy útil. Con ella, puedes obtener la distancia entre cualquier par de ciudades.

El resto del programa es un bucle. Recorre todas las partes del viaje. También suma cada distancia al total.

## Código

Aquí está la solución. El conjunto de datos es grande. Solo ves una parte de él.

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

Aquí está la salida del programa para este viaje. Prueba otros viajes por las ciudades del hash `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
