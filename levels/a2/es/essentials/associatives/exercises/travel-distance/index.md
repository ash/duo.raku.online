---
title: Distancia de viaje*
---

{% include menu.html %}

## Problema

Escribe un programa. Encuentra la distancia total de un viaje. El viaje pasa por las ciudades de este arreglo:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Imprime la distancia de cada parte del viaje. Después imprime la distancia total.

Usa el archivo [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Tiene un _hash de hashes_. El hash guarda las distancias entre las ciudades.

## Ejemplo

Para esta lista de ciudades, el programa imprime esto:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
