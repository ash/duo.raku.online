---
title: Distancia de viaje*
---

{% include menu.html %}

## Problema

Escribe un programa que encuentre la distancia total de un viaje. Las ciudades del viaje están en este arreglo:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Imprime la distancia de cada parte de la ruta y también la distancia total.

Usa el archivo [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Contiene un _hash de hashes_ con las distancias entre las ciudades.

## Ejemplo

Para la lista de ciudades dada, el programa imprime lo siguiente:

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
